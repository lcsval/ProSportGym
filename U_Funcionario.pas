unit U_Funcionario;

interface

uses
  {$IFDEF VER210} //Versão 2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Padrao, IBSQL, IBCustomDataSet, IBUpdateSQL, DB, IBQuery, Menus,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, RLReport;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, IBSQL, IBCustomDataSet,
  IBUpdateSQL, Data.DB, IBQuery, Vcl.Menus, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, RLReport, MidasLib;
  {$ENDIF} //Versão XE2

type
  TF_Funcionario = class(TF_Padrao)
    QPadraoFUN_CODIGO: TSmallintField;
    QPadraoFUN_CID_CODIGO: TSmallintField;
    QPadraoCID_NOME: TIBStringField;
    QPadraoFUN_CAR_CODIGO: TSmallintField;
    QPadraoCAR_NOME: TIBStringField;
    QPadraoFUN_NOME: TIBStringField;
    QPadraoFUN_SOBRENOME: TIBStringField;
    QPadraoFUN_ENDERECO: TIBStringField;
    QPadraoFUN_NUMERO: TIBStringField;
    QPadraoFUN_CEP: TIBStringField;
    QPadraoFUN_RG: TIBStringField;
    QPadraoFUN_CPF: TIBStringField;
    QPadraoFUN_SEXO: TIBStringField;
    QPadraoFUN_TELEFONE: TIBStringField;
    QPadraoFUN_LOGIN: TIBStringField;
    QPadraoFUN_SENHA: TIBStringField;
    QPadraoFUN_STATUS: TIBStringField;
    ded_1: TDBEdit;
    lab_1: TLabel;
    ded_2: TDBEdit;
    lab_2: TLabel;
    ded_3: TDBEdit;
    lab_3: TLabel;
    ded_4: TDBEdit;
    lab_4: TLabel;
    Edt_Cidade: TEdit;
    sbt_1: TSpeedButton;
    ded_5: TDBEdit;
    lab_5: TLabel;
    ded_6: TDBEdit;
    lab_6: TLabel;
    ded_7: TDBEdit;
    lab_7: TLabel;
    ded_8: TDBEdit;
    lab_8: TLabel;
    ded_9: TDBEdit;
    lab_9: TLabel;
    cmb_sexo: TDBComboBox;
    lab_10: TLabel;
    ded_10: TDBEdit;
    lab_11: TLabel;
    edt_Cargo: TEdit;
    sbt_2: TSpeedButton;
    ded_11: TDBEdit;
    lab_12: TLabel;
    dcb_1: TDBComboBox;
    lab_13: TLabel;
    rla_2: TRLLabel;
    rdt_2: TRLDBText;
    rla_3: TRLLabel;
    rdt_3: TRLDBText;
    rla_4: TRLLabel;
    rdt_4: TRLDBText;
    rla_5: TRLLabel;
    rdt_5: TRLDBText;
    rla_6: TRLLabel;
    rdt_6: TRLDBText;
    rla_7: TRLLabel;
    rdt_7: TRLDBText;
    rla_8: TRLLabel;
    rdt_8: TRLDBText;
    rla_9: TRLLabel;
    rdt_9: TRLDBText;
    rla_10: TRLLabel;
    rdt_10: TRLDBText;
    rla_11: TRLLabel;
    rdt_11: TRLDBText;
    rla_12: TRLLabel;
    rdt_12: TRLDBText;
    rla_13: TRLLabel;
    rdt_13: TRLDBText;
    QPadraoFUN_BAIRRO: TIBStringField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    lab_info: TLabel;
    QPadraoFUN_CELULAR: TIBStringField;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    procedure QPadraoFUN_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QPadraoFUN_STATUSSetText(Sender: TField; const Text: string);
    procedure QPadraoFUN_SEXOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QPadraoFUN_SEXOSetText(Sender: TField; const Text: string);
    procedure QPadraoNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure sbt_1Click(Sender: TObject);
    procedure sbt_2Click(Sender: TObject);
    procedure QPadraoFUN_CID_CODIGOValidate(Sender: TField);
    procedure QPadraoFUN_CAR_CODIGOValidate(Sender: TField);
    procedure QPadraoAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure QPadraoBeforePost(DataSet: TDataSet);
    procedure QPadraoBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Funcionario: TF_Funcionario;

implementation

uses U_Dm;

{$R *.dfm}

procedure TF_Funcionario.FormCreate(Sender: TObject);
begin
  vsSql := ' select FUN_CODIGO, FUN_CID_CODIGO, CID_NOME, FUN_CAR_CODIGO, CAR_NOME, ' +
  ' FUN_NOME, FUN_SOBRENOME, FUN_ENDERECO, FUN_NUMERO, FUN_CEP, FUN_RG, FUN_CPF, FUN_SEXO, ' +
  ' FUN_TELEFONE, FUN_LOGIN, FUN_SENHA, FUN_STATUS, FUN_BAIRRO, FUN_CELULAR from funcionario ' +
  ' left join cidade on fun_cid_codigo = cid_codigo ' +
  ' left join cargo on fun_car_codigo = car_codigo '; // Select Limpo

  vsSqlAbrir := ' select FUN_CODIGO, FUN_CID_CODIGO, CID_NOME, FUN_CAR_CODIGO, CAR_NOME, ' +
  ' FUN_NOME, FUN_SOBRENOME, FUN_ENDERECO, FUN_NUMERO, FUN_CEP, FUN_RG, FUN_CPF, FUN_SEXO, ' +
  ' FUN_TELEFONE, FUN_LOGIN, FUN_SENHA, FUN_STATUS, FUN_BAIRRO, FUN_CELULAR from funcionario ' +
  ' left join cidade on fun_cid_codigo = cid_codigo ' +
  ' left join cargo on fun_car_codigo = car_codigo where 0 = 1'; //Select p n trazer nada
  inherited;
end;

procedure TF_Funcionario.FormShow(Sender: TObject);
begin
  inherited;
  SetLength(aDefFlags, 4);
  SetLength(aDefFlags[0],3);
  SetLength(aDefFlags[1],3);
  SetLength(aDefFlags[2],3);
  SetLength(aDefFlags[3],3);

  aDefFlags[0,0] := 'FUN_STATUS';
  aDefFlags[0,1] := 'Ativo';
  aDefFlags[0,2] := 'A';

  aDefFlags[1,0] := 'FUN_STATUS';
  aDefFlags[1,1] := 'Inativo';
  aDefFlags[1,2] := 'I';

  aDefFlags[2,0] := 'FUN_SEXO';
  aDefFlags[2,1] := 'Masculino';
  aDefFlags[2,2] := 'M';

  aDefFlags[3,0] := 'FUN_SEXO';
  aDefFlags[3,1] := 'Feminino';
  aDefFlags[3,2] := 'F';
end;

procedure TF_Funcionario.QPadraoAfterScroll(DataSet: TDataSet);
var
  QAux : TIBQuery;
begin
  inherited;

  if not QPadraoFUN_CID_CODIGO.IsNull then
  begin
    QAux := TIBQuery.Create(Self);
    QAux.Database := DM.Conexao;
    QAux.Close;
    QAux.SQL.Clear;
    QAux.SQL.Add('Select CID_NOME from CIDADE where CID_CODIGO = ' + QPadraoFUN_CID_CODIGO.AsString);
    QAux.Open;

    Edt_Cidade.Clear;
    Edt_Cidade.Text := QAux.FieldByName('CID_NOME').AsString;
  end;

  if not QPadraoFUN_CAR_CODIGO.IsNull then
  begin
    QAux := TIBQuery.Create(Self);
    QAux.Database := DM.Conexao;
    QAux.Close;
    QAux.SQL.Clear;
    QAux.SQL.Add('Select CAR_NOME from CARGO where CAR_CODIGO = ' + QPadraoFUN_CAR_CODIGO.AsString);
    QAux.Open;

    edt_Cargo.Clear;
    edt_Cargo.Text := QAux.FieldByName('CAR_NOME').AsString;
  end;
end;

procedure TF_Funcionario.QPadraoBeforeDelete(DataSet: TDataSet);
begin
  if Application.MessageBox('Tem certeza que deseja excluir esse funcionário?' + #13 + 'Também serão excluídos os acessos dele!','Atenção',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
    Abort;
  inherited;
end;

procedure TF_Funcionario.QPadraoBeforePost(DataSet: TDataSet);
begin
  inherited;
  QPadraoFUN_LOGIN.AsString := QPadraoFUN_NOME.AsString;
  QPadraoFUN_SENHA.AsString := QPadraoFUN_NOME.AsString;
end;

procedure TF_Funcionario.QPadraoFUN_CAR_CODIGOValidate(Sender: TField);
var
  QAux : TIBQuery;
begin
  inherited;

  if not QPadraoFUN_CAR_CODIGO.IsNull then
  begin
    QAux := TIBQuery.Create(Self);
    QAux.Database := DM.Conexao;
    QAux.Close;
    QAux.SQL.Clear;
    QAux.SQL.Add('Select CAR_NOME from CARGO where CAR_CODIGO = ' + QPadraoFUN_CAR_CODIGO.AsString);
    QAux.Open;

    if QAux.RecordCount > 0 then
    begin
      edt_Cargo.Clear;
      edt_Cargo.Text := QAux.FieldByName('CAR_NOME').AsString;
    end
    else
    begin
      edt_Cargo.Clear;
      Application.MessageBox('Cargo não encontrado!','Atenção',MB_OK + MB_ICONWARNING);
      Abort;
    end;
  end;
end;

procedure TF_Funcionario.QPadraoFUN_CID_CODIGOValidate(Sender: TField);
var
  QAux : TIBQuery;
begin
  inherited;

  if not QPadraoFUN_CID_CODIGO.IsNull then
  begin
    QAux := TIBQuery.Create(Self);
    QAux.Database := DM.Conexao;
    QAux.Close;
    QAux.SQL.Clear;
    QAux.SQL.Add('Select CID_NOME from CIDADE where CID_CODIGO = ' + QPadraoFUN_CID_CODIGO.AsString);
    QAux.Open;

    if QAux.RecordCount > 0 then
    begin
      Edt_Cidade.Clear;
      Edt_Cidade.Text := QAux.FieldByName('CID_NOME').AsString;
    end
    else
    begin
      Edt_Cidade.Clear;
      Application.MessageBox('Cidade não encontrada!','Atenção',MB_OK + MB_ICONWARNING);
      Abort;
    end;
  end;
end;

procedure TF_Funcionario.QPadraoFUN_SEXOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if QPadraoFUN_SEXO.AsString = 'M' then
    Text := 'Masculino';

  if QPadraoFUN_SEXO.AsString = 'F' then
    Text := 'Feminino';
end;

procedure TF_Funcionario.QPadraoFUN_SEXOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'Masculino' then
    Sender.AsString := 'M';

  if Text = 'Feminino' then
    Sender.AsString := 'F';
end;

procedure TF_Funcionario.QPadraoFUN_STATUSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if QPadraoFUN_STATUS.AsString = 'A' then
    Text := 'Ativo';

  if QPadraoFUN_STATUS.AsString = 'I' then
    Text := 'Inativo';
end;

procedure TF_Funcionario.QPadraoFUN_STATUSSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'Ativo' then
    Sender.AsString := 'A';

  if Text = 'Inativo' then
    Sender.AsString := 'I';
end;

procedure TF_Funcionario.QPadraoNewRecord(DataSet: TDataSet);
begin
  inherited;
  cmdSql.Close;
  cmdSql.ExecQuery;

  Edt_Cidade.Clear;
  edt_Cargo.Clear;
  QPadraoFUN_CODIGO.AsInteger := cmdSql.FieldByName('fun_codigo').AsInteger + 1; // Pega new ID
  QPadraoFUN_STATUS.AsString := 'A';
end;

procedure TF_Funcionario.sbt_1Click(Sender: TObject);
var
  CodCID : Integer;
  QAux : TIBQuery;
begin
  CodCID := Procurar('Selecione a Cidade e clique em Transportar',
                        'Select CID_CODIGO as Codigo, CID_NOME as Nome from CIDADE ORDER BY CID_NOME');

  if CodCID = 0 then
    Exit;

  QAux := TIBQuery.Create(Self);
  QAux.Database := DM.Conexao;
  QAux.Close;
  QAux.SQL.Clear;
  QAux.SQL.Add('Select CID_NOME from CIDADE where CID_CODIGO = ' + IntToStr(CodCID));
  QAux.Open;

  QPadrao.Edit;

  Edt_Cidade.Clear;
  Edt_Cidade.Text := QAux.FieldByName('CID_NOME').AsString;
  QPadraoFUN_CID_CODIGO.AsInteger := CodCID;
end;

procedure TF_Funcionario.sbt_2Click(Sender: TObject);
var
  CodCargo : Integer;
  QAux : TIBQuery;
begin
  CodCargo := Procurar('Selecione o Cargo e clique em Transportar',
                        'Select CAR_CODIGO as Codigo, CAR_NOME as Nome from CARGO ORDER BY CAR_NOME');

  if CodCargo = 0 then
    Exit;

  QAux := TIBQuery.Create(Self);
  QAux.Database := DM.Conexao;
  QAux.Close;
  QAux.SQL.Clear;
  QAux.SQL.Add('Select CAR_NOME from CARGO where CAR_CODIGO = ' + IntToStr(CodCargo));
  QAux.Open;

  QPadrao.Edit;

  edt_Cargo.Clear;
  edt_Cargo.Text := QAux.FieldByName('CAR_NOME').AsString;
  QPadraoFUN_CAR_CODIGO.AsInteger := CodCargo;
end;

end.
