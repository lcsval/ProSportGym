unit U_Principal;

interface

uses
  {$IFDEF VER210} //2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, IBCustomDataSet,
  IBQuery, ExtCtrls, DBCtrls, Grids, DBGrids, IBSQL, IBUpdateSQL,
  Menus, ComCtrls, Buttons, ToolWin, RLConsts, DateUtils, shellapi;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, IBCustomDataSet,
  IBQuery, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, IBSQL, IBUpdateSQL,
  Vcl.Menus, Vcl.ComCtrls, Vcl.Buttons, Vcl.ToolWin, RLConsts, Vcl.ImgList,
  Vcl.Imaging.jpeg, Winapi.ShellAPI, DB, Menus, Buttons, Controls, ExtCtrls,
  ComCtrls, jpeg, Classes;
  {$ENDIF} //XE2

type
  TF_Principal = class(TForm)
    MainMenu: TMainMenu;
    Principal1: TMenuItem;
    Cadastros1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    StatusBar: TStatusBar;
    Cargo1: TMenuItem;
    Janela1: TMenuItem;
    Cascata1: TMenuItem;
    LadoaLado1: TMenuItem;
    EfetuarLogoff1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Cidade1: TMenuItem;
    Funcionrio1: TMenuItem;
    Mensalidade1: TMenuItem;
    Planos1: TMenuItem;
    Configuraes1: TMenuItem;
    ControledeAcesso1: TMenuItem;
    N2: TMenuItem;
    Backup1: TMenuItem;
    Aluno1: TMenuItem;
    ConfigurarSenha1: TMenuItem;
    Relatrios1: TMenuItem;
    pan_1: TPanel;
    btn_Aluno: TSpeedButton;
    btn_Mensalidade: TSpeedButton;
    Btn_Planos: TSpeedButton;
    btn_Monitor: TSpeedButton;
    HistricodeAluno1: TMenuItem;
    iqr_GetAlunos: TIBQuery;
    isq_Mensalidade: TIBSQL;
    iqr_GetDay: TIBQuery;
    isq_MaxMensalidade: TIBSQL;
    iqr_VerificaMensAluno: TIBQuery;
    Monitor1: TMenuItem;
    Dicas1: TMenuItem;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cargo1Click(Sender: TObject);
    procedure LadoaLado1Click(Sender: TObject);
    procedure Cascata1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ControledeAcesso1Click(Sender: TObject);
    procedure EfetuarLogoff1Click(Sender: TObject);
    procedure Planos1Click(Sender: TObject);
    procedure Mensalidade1Click(Sender: TObject);
    procedure Aluno1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure ConfigurarSenha1Click(Sender: TObject);
    procedure btn_AlunoClick(Sender: TObject);
    procedure btn_MensalidadeClick(Sender: TObject);
    procedure Btn_PlanosClick(Sender: TObject);
    procedure btn_MonitorClick(Sender: TObject);
    procedure HistricodeAluno1Click(Sender: TObject);
    procedure Monitor1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Dicas1Click(Sender: TObject);
    procedure Backup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodUsuario, NomeUsuario : String;
    Procedure ControlaMensalidades;
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses U_Dm, U_Padrao, U_Cargo, U_Cidade, U_Login, U_ControleAcesso, U_Planos,
  U_Mensalidade, U_Aluno, U_Funcionario, U_ConfSenha, U_Monitor,
  U_RelHistoricoAluno, U_Sobre, U_Dicas, U_BkpRest, U_funcoes;

procedure TF_Principal.Aluno1Click(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(Aluno1.Tag), Self) then
  begin
    Application.CreateForm(TF_Aluno,F_Aluno);
    F_Aluno.ShowModal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.Backup1Click(Sender: TObject);
begin
  if Application.FindComponent('F_BkpRest') <> nil then
    F_BkpRest.Release;

  Application.CreateForm(TF_BkpRest,F_BkpRest);
  F_BkpRest.ShowModal;
end;

procedure TF_Principal.btn_AlunoClick(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(Aluno1.Tag), Self) then
  begin
    Application.CreateForm(TF_Aluno,F_Aluno);
    F_Aluno.ShowModal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.btn_MensalidadeClick(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(Mensalidade1.Tag), Self) then
  begin
    Application.CreateForm(TF_Mensalidade,F_Mensalidade);
    F_Mensalidade.ShowModal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.btn_MonitorClick(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(Monitor1.Tag), Self) then
  begin
    Application.CreateForm(TF_Monitor,F_Monitor);
    F_Monitor.ShowModal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.Btn_PlanosClick(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(Planos1.Tag), Self) then
  begin
    Application.CreateForm(TF_Planos,F_Planos);
    F_Planos.Showmodal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.Cargo1Click(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(Cargo1.Tag), Self) then
  begin
    Application.CreateForm(TF_Cargo,F_Cargo);
    F_Cargo.ShowModal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.Cascata1Click(Sender: TObject);
begin
  Cascade;
end;

procedure TF_Principal.Cidade1Click(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(Cidade1.Tag), Self) then
  begin
    Application.CreateForm(TF_Cidade,F_Cidade);
    F_Cidade.ShowModal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.ConfigurarSenha1Click(Sender: TObject);
begin
  Application.CreateForm(TF_ConfSenha,F_ConfSenha);
  F_ConfSenha.ShowModal;
end;

procedure TF_Principal.ControlaMensalidades;
begin
  iqr_GetDay.Close;
  iqr_GetDay.Open;

  if iqr_GetDay.FieldByName('DIA').AsInteger = 1 then
  begin
    iqr_GetAlunos.Close;
    iqr_GetAlunos.Open;
    iqr_GetAlunos.FetchAll;
    iqr_GetAlunos.First;

    while not iqr_GetAlunos.Eof do
    begin
      iqr_VerificaMensAluno.Close;
      iqr_VerificaMensAluno.ParamByName('ALUNO').AsInteger := iqr_GetAlunos.FieldByName('alu_codigo').AsInteger;
      iqr_VerificaMensAluno.Open;
      iqr_VerificaMensAluno.FetchAll;

      if iqr_VerificaMensAluno.IsEmpty then
      begin
        isq_MaxMensalidade.Close;
        isq_MaxMensalidade.ExecQuery;

        isq_Mensalidade.Close;
        isq_Mensalidade.ParamByName('MEN_CODIGO').AsInteger := isq_MaxMensalidade.FieldByName('men_codigo').AsInteger + 1;
        isq_Mensalidade.ParamByName('MEN_ALU_CODIGO').AsInteger := iqr_GetAlunos.FieldByName('alu_codigo').AsInteger;
        isq_Mensalidade.ParamByName('MEN_DATAPG').AsDate := Date;
        isq_Mensalidade.ParamByName('MEN_STATUS').AsString := 'A';
        isq_Mensalidade.ParamByName('MEN_VALOR').AsFloat := iqr_GetAlunos.FieldByName('pla_valor').AsFloat;
        isq_Mensalidade.ExecQuery;
      end;

      iqr_GetAlunos.Next;
    end;
    DM.Transacao.CommitRetaining;
  end;
end;

procedure TF_Principal.ControledeAcesso1Click(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(ControledeAcesso1.Tag), Self) then
  begin
    Application.CreateForm(TF_ControleAcesso,F_ControleAcesso);
    F_ControleAcesso.ShowModal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.Dicas1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar( ExtractFilePath(Application.ExeName) + '\DICAS.pdf'),  '', '', sw_shownormal);
end;

procedure TF_Principal.EfetuarLogoff1Click(Sender: TObject);
begin
  F_Login := TF_Login.Create(Application);
  F_Principal.Hide;
  if F_Login.ShowModal <> mrOk then
  begin
    Self.Close;
    Application.Terminate;
    Abort;
  end;
end;

procedure TF_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Application.MessageBox('Tem certeza que deseja sair da aplicação?','Pergunta',MB_YESNO + MB_ICONQUESTION) = IDNO) then
    Abort;
end;

procedure TF_Principal.FormCreate(Sender: TObject);
begin
  if DM.Conexao.DatabaseName = EmptyStr then
    Application.Terminate;

  F_Login := TF_Login.Create(Application);
  if F_Login.ShowModal <> mrOk then
  begin
    Self.Close;
    Application.Terminate;
    Abort;
  end;
end;

procedure TF_Principal.FormShow(Sender: TObject);
begin
  StatusBar.Panels[1].Text := NomeUsuario;

  ControlaMensalidades;
end;

procedure TF_Principal.Funcionrio1Click(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(Funcionrio1.Tag), Self) then
  begin
    Application.CreateForm(TF_Funcionario,F_Funcionario);
    F_Funcionario.ShowModal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.HistricodeAluno1Click(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(HistricodeAluno1.Tag), Self) then
  begin
    Application.CreateForm(TF_RelHistoricoAluno,F_RelHistoricoAluno);
    F_RelHistoricoAluno.ShowModal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.LadoaLado1Click(Sender: TObject);
begin
  Tile;
end;

procedure TF_Principal.Mensalidade1Click(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(Mensalidade1.Tag), Self) then
  begin
    Application.CreateForm(TF_Mensalidade,F_Mensalidade);
    F_Mensalidade.ShowModal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.Monitor1Click(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(Monitor1.Tag), Self) then
  begin
    Application.CreateForm(TF_Monitor,F_Monitor);
    F_Monitor.ShowModal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.Planos1Click(Sender: TObject);
begin
  if AcessoTela(CodUsuario, IntToStr(Planos1.Tag), Self) then
  begin
    Application.CreateForm(TF_Planos,F_Planos);
    F_Planos.ShowModal;
  end
  else
    Application.MessageBox(PChar('O usuário logado [' + NomeUsuario + '] não possui acesso a essa tela!'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TF_Principal.Sair1Click(Sender: TObject);
begin
  if (Application.MessageBox('Tem certeza que deseja sair da aplicação?','Pergunta',MB_YESNO + MB_ICONQUESTION) = IDYES) then
    Application.Terminate;
end;

procedure TF_Principal.Sobre1Click(Sender: TObject);
begin
  Application.CreateForm(TF_Sobre,F_Sobre);
  F_Sobre.ShowModal;
end;

initialization
  RLConsts.SetVersion(3,71,'B');

end.
