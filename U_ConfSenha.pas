unit U_ConfSenha;

interface

uses
  {$IFDEF VER210} //Versão 2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, ExtCtrls, Buttons,
  IBUpdateSQL;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, IBSQL, IBCustomDataSet,
  IBUpdateSQL, Data.DB, IBQuery, Vcl.Menus, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;
  {$ENDIF} //Versão XE2

type
  TF_ConfSenha = class(TForm)
    iqr_Usuario: TIBQuery;
    iqr_UsuarioFUN_CODIGO: TSmallintField;
    iqr_UsuarioFUN_NOME: TIBStringField;
    iqr_UsuarioFUN_LOGIN: TIBStringField;
    iqr_UsuarioFUN_SENHA: TIBStringField;
    pan_Usu: TPanel;
    lab_Nome: TLabel;
    lab_Codigo: TLabel;
    lab_Sobrenome: TLabel;
    lab_vCod: TLabel;
    lab_vNome: TLabel;
    lab_vSobrenome: TLabel;
    iqr_UsuarioFUN_SOBRENOME: TIBStringField;
    grb_1: TGroupBox;
    edt_Login: TEdit;
    edt_Senha: TEdit;
    edt_ConfSenha: TEdit;
    btn_Sair: TSpeedButton;
    btn_salvar: TSpeedButton;
    lab_Login: TLabel;
    lab_Senha: TLabel;
    lab_ConfSenha: TLabel;
    ius_UpUsuario: TIBUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ConfSenha: TF_ConfSenha;

implementation

uses U_Dm, U_Principal;

{$R *.dfm}

procedure TF_ConfSenha.btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_ConfSenha.btn_salvarClick(Sender: TObject);
begin
  if Trim(edt_Login.Text) = EmptyStr then
  begin
    Application.MessageBox('Insira o login!','Aviso',MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if Trim(edt_Senha.Text) = EmptyStr then
  begin
    Application.MessageBox('Insira a senha!','Aviso',MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if Trim(edt_ConfSenha.Text) = EmptyStr then
  begin
    Application.MessageBox('Insira a conf. senha!','Aviso',MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if Trim(edt_Senha.Text) <> Trim(edt_ConfSenha.Text) then
  begin
    Application.MessageBox('Senhas não conferem!','Atenção',MB_OK + MB_ICONWARNING);
    Exit;
  end;

  iqr_Usuario.Edit;
  iqr_UsuarioFUN_LOGIN.AsString := Trim(edt_Login.Text);
  iqr_UsuarioFUN_SENHA.AsString := Trim(edt_Senha.Text);
  iqr_Usuario.Post;

  Application.MessageBox('Usuário e/ou senha alterados com sucesso!','Atenção', MB_OK + MB_ICONINFORMATION);
  Close;
end;

procedure TF_ConfSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TF_ConfSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TF_ConfSenha.FormShow(Sender: TObject);
begin
  iqr_Usuario.Close;
  iqr_Usuario.ParamByName('Codigo').AsInteger := StrToInt(F_Principal.CodUsuario);
  iqr_Usuario.Open;

  lab_vCod.Caption := iqr_UsuarioFUN_CODIGO.AsString;
  lab_vNome.Caption := iqr_UsuarioFUN_NOME.AsString;
  lab_vSobrenome.Caption := iqr_UsuarioFUN_SOBRENOME.AsString;

  edt_Login.Clear;
  edt_Login.Text := iqr_UsuarioFUN_LOGIN.AsString;
end;

end.
