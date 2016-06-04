unit U_Dm;

interface

uses
  {$IFDEF VER210} //Versão 2010
  SysUtils, Classes, IBDatabase, DB, IniFiles, Forms,
  Windows, Messages, Dialogs;
  {$ELSE}
  System.SysUtils, System.Classes, IBDatabase, Data.DB, IniFiles, Forms,
  Winapi.Windows, Winapi.Messages, Vcl.Dialogs, Classes, DB;
  {$ENDIF} //Versao XE2

type
  TDM = class(TDataModule)
    Conexao: TIBDatabase;
    Transacao: TIBTransaction;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject); //Evento de Criar o DM
var
  Arq : TIniFile;
  strBD, caminhoBD : string;

begin
  Arq := TIniFile.Create( ExtractFilePath(Application.ExeName) + 'config.ini'); //Carrega o arquivo ini na memória
  StrBD := Arq.ReadString('CONEXAO', 'CAMINHO', ''); //Lê a tag CAMINHO dentro da caixa CONEXAO e guarda na variável

  if Trim(strBD) = EmptyStr then
  begin
    Application.MessageBox('O caminho do banco de dados no arquivo config.ini não foi configurado! Configure-o!','Atenção',MB_OK + MB_ICONWARNING);
    caminhoBD := '';
    caminhoBD := '127.0.0.1:' + ExtractFilePath(Application.ExeName) + 'ProSoft.fdb';

    InputQuery('Banco de Dados','caminho:', caminhoBD);
    Arq.WriteString('CONEXAO', 'CAMINHO', caminhoBD);

    Conexao.Close; //Fecha a conexao, se existir alguma aberta
    Conexao.DatabaseName := ''; //Limpa o caminho do banco
    Conexao.DatabaseName := Trim(caminhoBD);
    Conexao.Connected := True;
  end
  else
  begin
    Conexao.Close; //Fecha a conexao, se existir alguma aberta
    Conexao.DatabaseName := ''; //Limpa o caminho do banco
    Conexao.DatabaseName := Trim(strBD);
    Conexao.Connected := True;
  end;
end;

end.
