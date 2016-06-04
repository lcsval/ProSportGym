unit U_ControleAcesso;

interface

uses
  {$IFDEF VER210} //Versão 2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Buttons, DB,
  IBCustomDataSet, IBQuery, DBCtrls, CheckLst;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  IBCustomDataSet, IBQuery, Vcl.DBCtrls, Vcl.CheckLst;
  {$ENDIF} //Versao XE2

type
  TF_ControleAcesso = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    QUsuarios: TIBQuery;
    lkp_users: TDBLookupComboBox;
    Ds_Usuarios: TDataSource;
    chk_Forms: TCheckListBox;
    QForms: TIBQuery;
    QAcessos: TIBQuery;
    btn_Fechar: TSpeedButton;
    btn_Salvar: TSpeedButton;
    QInsAcesso: TIBQuery;
    QDelAcesso: TIBQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_FecharClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
    procedure lkp_usersClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ControleAcesso: TF_ControleAcesso;

implementation

{$R *.dfm}

uses U_Dm;

procedure TF_ControleAcesso.btn_FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_ControleAcesso.btn_SalvarClick(Sender: TObject);
var
  i : Integer;
  form : String;
begin
  QDelAcesso.Close;
  QDelAcesso.ParamByName('FUNC').AsInteger := QUsuarios.FieldByName('FUN_CODIGO').AsInteger;
  QDelAcesso.ExecSQL;

  for i := 0 to chk_Forms.Items.Count - 1 do //Percorre todos os items do checklist
  begin
    form := '';
    if chk_Forms.Checked[i] then //Marcado
    begin
      form := Trim(Copy(chk_Forms.Items[i],1,Pos('-',chk_Forms.Items[i])-1));

      QInsAcesso.Close;
      QInsAcesso.ParamByName('FUNC').AsInteger := QUsuarios.FieldByName('FUN_CODIGO').AsInteger;
      QInsAcesso.ParamByName('FORM').AsInteger := StrToInt(Form);
      QInsAcesso.ExecSQL;
    end;
  end;
  DM.Transacao.CommitRetaining;

  Application.MessageBox('Acessos concedidos/revogados com sucesso!','Atenção',MB_OK + MB_ICONWARNING);
end;

procedure TF_ControleAcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TF_ControleAcesso.FormCreate(Sender: TObject);
begin
  QUsuarios.Close;
  QUsuarios.Open;
  QUsuarios.FetchAll;
end;

procedure TF_ControleAcesso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TF_ControleAcesso.lkp_usersClick(Sender: TObject);
var
  i : Integer;
begin
  if lkp_users.KeyValue < 0 then
  begin
    Application.MessageBox('Selecione um usuário para visualizar suas permissões!','Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  QForms.Close;
  QForms.Open;
  QForms.FetchAll;
  i := 0;

  chk_Forms.Items.Clear;
  QForms.First;
  while not QForms.Eof do
  begin
    QAcessos.Close;
    QAcessos.ParamByName('FUNCIONARIO').AsInteger := QUsuarios.FieldByName('FUN_CODIGO').AsInteger;
    QAcessos.ParamByName('FORMULARIO').AsInteger := QForms.FieldByName('FOR_CODIGO').AsInteger;
    QAcessos.Open;

    chk_Forms.Items.Add(QForms.FieldByName('FOR_CODIGO').AsString + ' - ' + QForms.FieldByName('FOR_NOME').AsString);
    if QAcessos.RecordCount > 0 then
      chk_Forms.Checked[i] := True
    else
      chk_Forms.Checked[i] := False;

    QForms.Next;
    Inc(i);
  end;
end;

end.
