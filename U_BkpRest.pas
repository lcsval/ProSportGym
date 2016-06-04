unit U_BkpRest;

interface

uses
  {$IFDEF VER210} //Versão 2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, IBCustomDataSet,
  IBQuery, ExtCtrls, DBCtrls, Grids, DBGrids, IBSQL, IBUpdateSQL,
  Menus, ComCtrls, Buttons, ToolWin, RLConsts, DateUtils, shellapi, IBServices, FileCtrl;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, IBCustomDataSet,
  IBQuery, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, IBSQL, IBUpdateSQL,
  Vcl.Menus, Vcl.ComCtrls, Vcl.Buttons, Vcl.ToolWin, RLConsts, Vcl.ImgList,
  Vcl.Imaging.jpeg, Winapi.ShellAPI, IBServices, FileCtrl, Dialogs, StdCtrls,
  Controls, ComCtrls, Classes, Buttons;
  {$ENDIF} //Versão XE2

type
  TF_BkpRest = class(TForm)
    btnFechar: TSpeedButton;
    IBBackupService1: TIBBackupService;
    IBRestoreService1: TIBRestoreService;
    OpenDialog1: TOpenDialog;
    btn_IniciarBKP: TSpeedButton;
    pgc_Control: TPageControl;
    tbs_Backup: TTabSheet;
    tbs_Restauracao: TTabSheet;
    lab_CaminhoBD: TLabel;
    edt_CaminhoBD: TEdit;
    lab_CaminhoBKP: TLabel;
    edt_CaminhoBKP: TEdit;
    grb_Log: TGroupBox;
    mem_log: TMemo;
    btn_SelPathBKP: TSpeedButton;
    btn_SelBD: TSpeedButton;
    btn_SelPathBKPREST: TSpeedButton;
    edt_CaminhoBKPREST: TEdit;
    lab_1: TLabel;
    btn_SelBDREST: TSpeedButton;
    edt_CaminhoBDREST: TEdit;
    lab_2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btn_IniciarBKPClick(Sender: TObject);
    procedure btn_SelPathBKPClick(Sender: TObject);
    procedure btn_SelBDClick(Sender: TObject);
    procedure btn_SelBDRESTClick(Sender: TObject);
    procedure btn_SelPathBKPRESTClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_BkpRest: TF_BkpRest;

implementation

{$R *.dfm}

uses U_Dm;

procedure TF_BkpRest.btn_SelBDClick(Sender: TObject);
begin
  if not OpenDialog1.Execute then
    Exit;

  edt_CaminhoBD.Clear;
  edt_CaminhoBD.Text := OpenDialog1.FileName;
end;

procedure TF_BkpRest.btn_SelBDRESTClick(Sender: TObject);
begin
  if not OpenDialog1.Execute then
    Exit;

  edt_CaminhoBDREST.Clear;
  edt_CaminhoBDREST.Text := OpenDialog1.FileName;
end;

procedure TF_BkpRest.btn_SelPathBKPClick(Sender: TObject);
var
  path : string;
begin
  path := ExtractFilePath(Application.ExeName);
  edt_CaminhoBKP.Clear;

  if SelectDirectory(path, [sdAllowCreate, sdPerformCreate, sdPrompt],1000) then
    edt_CaminhoBKP.Text := path;
end;

procedure TF_BkpRest.btn_SelPathBKPRESTClick(Sender: TObject);
begin
  if not OpenDialog1.Execute then
    Exit;

  edt_CaminhoBKPREST.Clear;
  edt_CaminhoBKPREST.Text := OpenDialog1.FileName;
end;

procedure TF_BkpRest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TF_BkpRest.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TF_BkpRest.btn_IniciarBKPClick(Sender: TObject);
begin
  if pgc_Control.TabIndex = 0 then
  begin
    if Trim(edt_CaminhoBD.Text) = EmptyStr then
    begin
      Application.MessageBox('Selecione o banco de dados!','Atenção',MB_OK + MB_ICONWARNING);
      Exit;
    end;

    if Trim(edt_CaminhoBKP.Text) = EmptyStr then
    begin
      Application.MessageBox('Selecione a pasta destino do backup!','Atenção',MB_OK + MB_ICONWARNING);
      Exit;
    end;

    try
      mem_log.Clear;
      mem_log.Lines.Add('Preparando para gerar o backup...');

      with IBBackupService1 do
      begin
        DM.Conexao.Connected := False; //desconecta da base de dados
        DatabaseName := edt_CaminhoBD.Text;//caminho da base de dados
        Protocol := TCP;//protocolo de conexão
        ServerName := 'LocalHost';//nome do servidor
        BackupFile.Clear;
        BackupFile.Add(Trim(edt_CaminhoBKP.Text) + '\' + FormatDateTime('yyyymmdd_hhmmss',Now) + '.fbk');//adiciona o caminho do arquivo de backup escolhido pelo usuário

        Params.Clear;
        Params.Add('user_name=SYSDBA');//nome de usuário
        Params.Add('password=masterkey');//senha do usuário

        Options := [];//limpa a propriedade option
        Options := [NonTransportable, IgnoreLimbo];
        Verbose := True;

        Active := True;//ativa o serviço de backup, mais ainda não inicia.
        mem_log.Lines.Add('');
        mem_log.Lines.Add('--INICIO--');

        Application.ProcessMessages;
        try
          ServiceStart;//inicia o processo de backup
          While not Eof do
            mem_log.Lines.Add(IBBackupService1.GetNextLine);
        finally
        end;

        Active := False;//desativa o serviço de backup
        mem_log.Lines.Add('--FIM--');
      end;
      mem_log.Lines.Add('');

      mem_log.Lines.Add('Backup concluído.');
      DM.Conexao.Connected := True;//conecta o sistema na base de dados
    except
      on E: Exception do
      begin
        mem_log.Lines.Add('Ocorreu um erro inesperado. O backup não foi concluído.');
        mem_log.Lines.Add('Informações do erro:');
        mem_log.Lines.Add('  '+E.Message);
        DM.Conexao.Connected := True;//conecta o sistema na base de dados
      end;
    end;
  end;

  if pgc_Control.TabIndex = 1 then
  begin
    if Trim(edt_CaminhoBDREST.Text) = EmptyStr then
    begin
      Application.MessageBox('Selecione o banco de dados!','Atenção',MB_OK + MB_ICONWARNING);
      Exit;
    end;

    if Trim(edt_CaminhoBKPREST.Text) = EmptyStr then
    begin
      Application.MessageBox('Selecione o arquivo de backup!','Atenção',MB_OK + MB_ICONWARNING);
      Exit;
    end;

    mem_log.Clear;
    mem_log.Lines.Add('Preparando para realizar o restore...');

    with IBRestoreService1 do
    begin
      DM.Conexao.Connected := False; //desconecta da base de dados
      ServerName := 'LocalHost';
      LoginPrompt := False;
      Params.Add('user_name=sysdba');
      Params.Add('password=masterkey');

      Application.ProcessMessages;
      Active := True;
      mem_log.Lines.Add('');
      mem_log.Lines.Add('--INICIO--');

      try
        Verbose := True;
        Options := [Replace, UseAllSpace];
        PageBuffers := 3000;
        PageSize := 4096;
        DatabaseName.Add(edt_CaminhoBDREST.Text);

        BackupFile.Add(Trim(edt_CaminhoBKPREST.Text));
        ServiceStart;
        mem_log.Lines.Clear;
        While not Eof do
          mem_log.Lines.Add(IBRestoreService1.GetNextLine);
      finally
        Active := False;//desativa o serviço de backup
        mem_log.Lines.Add('--FIM--');
      end;
      mem_log.Lines.Add('');
      mem_log.Lines.Add('Restore concluído.');
      DM.Conexao.Connected := True;//conecta o sistema na base de dados
    end;

  end;
end;

procedure TF_BkpRest.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
