unit U_Aluno;

interface

uses
  {$IFDEF VER210} //Versão 2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, U_Padrao, IBSQL, IBCustomDataSet,
  IBUpdateSQL, DB, IBQuery, Menus, Grids, DBGrids, DBCtrls,
  StdCtrls, Buttons, ExtCtrls, RLReport, GraphUtil, ComCtrls, jpeg, MidasLib;

  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, IBSQL, IBCustomDataSet,
  IBUpdateSQL, Data.DB, IBQuery, Vcl.Menus, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, RLReport,
  jpeg, Vcl.ComCtrls, MidasLib, DB, ExtCtrls, StdCtrls, Mask, DBCtrls, Controls,
  ComCtrls, Dialogs, Menus, Grids, DBGrids, Buttons, Classes;
  {$ENDIF} //Versão XE2

type
  TF_Aluno = class(TF_Padrao)
    QPadraoALU_CODIGO: TSmallintField;
    QPadraoALU_CID_CODIGO: TSmallintField;
    QPadraoCID_NOME: TIBStringField;
    QPadraoALU_NOME: TIBStringField;
    QPadraoALU_SOBRENOME: TIBStringField;
    QPadraoALU_ENDERECO: TIBStringField;
    QPadraoALU_NUMERO: TIBStringField;
    QPadraoALU_CEP: TIBStringField;
    QPadraoALU_RG: TIBStringField;
    QPadraoALU_CPF: TIBStringField;
    QPadraoALU_SEXO: TIBStringField;
    QPadraoALU_FOTO: TIBStringField;
    QPadraoALU_TELEFONE: TIBStringField;
    QPadraoALU_CELULAR: TIBStringField;
    QPadraoALU_PLA_CODIGO: TSmallintField;
    QPadraoPLA_DESC: TIBStringField;
    QPadraoALU_STATUS: TIBStringField;
    QPadraoALU_DTVENC: TSmallintField;
    QPadraoALU_COBRAR: TIBStringField;
    rla_2: TRLLabel;
    rdt_2: TRLDBText;
    rla_3: TRLLabel;
    rla_4: TRLLabel;
    rla_5: TRLLabel;
    rla_6: TRLLabel;
    rla_7: TRLLabel;
    rla_8: TRLLabel;
    rla_9: TRLLabel;
    rla_10: TRLLabel;
    rla_11: TRLLabel;
    rla_12: TRLLabel;
    rla_13: TRLLabel;
    rla_14: TRLLabel;
    rla_15: TRLLabel;
    rla_16: TRLLabel;
    rdt_3: TRLDBText;
    rdt_4: TRLDBText;
    rdt_5: TRLDBText;
    rdt_6: TRLDBText;
    rdt_7: TRLDBText;
    rdt_8: TRLDBText;
    rdt_9: TRLDBText;
    rdt_10: TRLDBText;
    rdt_11: TRLDBText;
    rdt_12: TRLDBText;
    rdt_13: TRLDBText;
    rdt_14: TRLDBText;
    rdt_15: TRLDBText;
    rdt_16: TRLDBText;
    QPadraoALU_BAIRRO: TIBStringField;
    pgc_Foto: TPageControl;
    tbs_Dados: TTabSheet;
    tbs_Foto: TTabSheet;
    lab_1: TLabel;
    lab_2: TLabel;
    lab_3: TLabel;
    lab_4: TLabel;
    lab_5: TLabel;
    sbt_1: TSpeedButton;
    lab_6: TLabel;
    lab_7: TLabel;
    lab_8: TLabel;
    lab_9: TLabel;
    lab_10: TLabel;
    lab_11: TLabel;
    sbt_2: TSpeedButton;
    lab_12: TLabel;
    lab_13: TLabel;
    lab_14: TLabel;
    lab_15: TLabel;
    lab_Cobrar: TLabel;
    lab_16: TLabel;
    cmb_status: TDBComboBox;
    ded_1: TDBEdit;
    ded_2: TDBEdit;
    ded_3: TDBEdit;
    ded_4: TDBEdit;
    Edt_Plano: TEdit;
    cmb_sexo: TDBComboBox;
    ded_5: TDBEdit;
    ded_6: TDBEdit;
    ded_7: TDBEdit;
    ded_8: TDBEdit;
    ded_9: TDBEdit;
    Edt_Cidade: TEdit;
    ded_10: TDBEdit;
    ded_11: TDBEdit;
    ded_12: TDBEdit;
    ded_13: TDBEdit;
    dcb_Cobrar: TDBComboBox;
    ded_14: TDBEdit;
    ded_15: TDBEdit;
    lab_17: TLabel;
    sbt_3: TSpeedButton;
    OpenDialog1: TOpenDialog;
    img_Foto: TImage;
    procedure FormCreate(Sender: TObject);
    procedure QPadraoNewRecord(DataSet: TDataSet);
    procedure QPadraoAfterScroll(DataSet: TDataSet);
    procedure sbt_2Click(Sender: TObject);
    procedure sbt_1Click(Sender: TObject);
    procedure QPadraoALU_CID_CODIGOValidate(Sender: TField);
    procedure QPadraoALU_PLA_CODIGOValidate(Sender: TField);
    procedure QPadraoALU_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QPadraoALU_STATUSSetText(Sender: TField; const Text: string);
    procedure QPadraoALU_SEXOSetText(Sender: TField; const Text: string);
    procedure QPadraoALU_SEXOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure QPadraoALU_COBRARGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QPadraoALU_COBRARSetText(Sender: TField; const Text: string);
    procedure sbt_3Click(Sender: TObject);
    procedure QPadraoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Aluno: TF_Aluno;

implementation

{$R *.dfm}

uses U_Dm;

procedure TF_Aluno.FormCreate(Sender: TObject);
begin
  vsSql := ' select alu_codigo, alu_cid_codigo, cid_nome, alu_nome, alu_sobrenome, ' +
  'alu_endereco, alu_numero, alu_cep, alu_rg, alu_cpf, alu_sexo, alu_foto, alu_telefone, ' +
  'alu_celular, alu_pla_codigo, pla_desc, alu_status, alu_dtvenc, alu_cobrar, alu_bairro from aluno ' +
  'left join cidade on alu_cid_codigo = cid_codigo ' +
  'left join planos on alu_pla_codigo = pla_codigo '; // Select Limpo
  vsSqlAbrir := ' select alu_codigo, alu_cid_codigo, cid_nome, alu_nome, alu_sobrenome, ' +
  'alu_endereco, alu_numero, alu_cep, alu_rg, alu_cpf, alu_sexo, alu_foto, alu_telefone, ' +
  'alu_celular, alu_pla_codigo, pla_desc, alu_status, alu_dtvenc, alu_cobrar, alu_bairro from aluno ' +
  'left join cidade on alu_cid_codigo = cid_codigo ' +
  'left join planos on alu_pla_codigo = pla_codigo where 0 = 1'; //Select p n trazer nada
  inherited;
end;

procedure TF_Aluno.FormShow(Sender: TObject);
begin
  inherited;
  SetLength(aDefFlags, 6);
  SetLength(aDefFlags[0],3);
  SetLength(aDefFlags[1],3);
  SetLength(aDefFlags[2],3);
  SetLength(aDefFlags[3],3);
  SetLength(aDefFlags[4],3);
  SetLength(aDefFlags[5],3);

  aDefFlags[0,0] := 'ALU_STATUS';
  aDefFlags[0,1] := 'Ativo';
  aDefFlags[0,2] := 'A';

  aDefFlags[1,0] := 'ALU_STATUS';
  aDefFlags[1,1] := 'Inativo';
  aDefFlags[1,2] := 'I';

  aDefFlags[2,0] := 'ALU_SEXO';
  aDefFlags[2,1] := 'Masculino';
  aDefFlags[2,2] := 'M';

  aDefFlags[3,0] := 'ALU_SEXO';
  aDefFlags[3,1] := 'Feminino';
  aDefFlags[3,2] := 'F';

  aDefFlags[4,0] := 'ALU_COBRAR';
  aDefFlags[4,1] := 'Sim';
  aDefFlags[4,2] := 'S';

  aDefFlags[5,0] := 'ALU_COBRAR';
  aDefFlags[5,1] := 'Não';
  aDefFlags[5,2] := 'N';
end;

procedure TF_Aluno.QPadraoAfterScroll(DataSet: TDataSet);
var
  QAux : TIBQuery;
begin
  inherited;

  if not QPadraoALU_CID_CODIGO.IsNull then
  begin
    QAux := TIBQuery.Create(Self);
    QAux.Database := DM.Conexao;
    QAux.Close;
    QAux.SQL.Clear;
    QAux.SQL.Add('Select CID_NOME from CIDADE where CID_CODIGO = ' + QPadraoALU_CID_CODIGO.AsString);
    QAux.Open;

    Edt_Cidade.Clear;
    Edt_Cidade.Text := QAux.FieldByName('CID_NOME').AsString;
  end;

  if not QPadraoALU_PLA_CODIGO.IsNull then
  begin
    QAux := TIBQuery.Create(Self);
    QAux.Database := DM.Conexao;
    QAux.Close;
    QAux.SQL.Clear;
    QAux.SQL.Add('Select PLA_DESC from PLANOS where PLA_CODIGO = ' + QPadraoALU_PLA_CODIGO.AsString);
    QAux.Open;

    Edt_Plano.Clear;
    Edt_Plano.Text := QAux.FieldByName('PLA_DESC').AsString;
  end;

  img_Foto.Picture := nil;
  if not QPadraoALU_FOTO.IsNull then
    if FileExists(QPadraoALU_FOTO.AsString) then
      img_Foto.Picture.LoadFromFile(QPadraoALU_FOTO.AsString);
end;

procedure TF_Aluno.QPadraoALU_CID_CODIGOValidate(Sender: TField);
var
  QAux : TIBQuery;
begin
  inherited;

  if not QPadraoALU_CID_CODIGO.IsNull then
  begin
    QAux := TIBQuery.Create(Self);
    QAux.Database := DM.Conexao;
    QAux.Close;
    QAux.SQL.Clear;
    QAux.SQL.Add('Select CID_NOME from CIDADE where CID_CODIGO = ' + QPadraoALU_CID_CODIGO.AsString);
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

procedure TF_Aluno.QPadraoALU_COBRARGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'S' then
    Text := 'Sim';

  if Sender.AsString = 'N' then
    Text := 'Não';
end;

procedure TF_Aluno.QPadraoALU_COBRARSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Sim' then
    Sender.AsString := 'S';

  if Text = 'Não' then
    Sender.AsString := 'N';
end;

procedure TF_Aluno.QPadraoALU_PLA_CODIGOValidate(Sender: TField);
var
  QAux : TIBQuery;
begin
  inherited;

  if not QPadraoALU_PLA_CODIGO.IsNull then
  begin
    QAux := TIBQuery.Create(Self);
    QAux.Database := DM.Conexao;
    QAux.Close;
    QAux.SQL.Clear;
    QAux.SQL.Add('Select PLA_DESC from PLANOS where PLA_CODIGO = ' + QPadraoALU_PLA_CODIGO.AsString);
    QAux.Open;

    if QAux.RecordCount > 0 then
    begin
      Edt_Plano.Clear;
      Edt_Plano.Text := QAux.FieldByName('PLA_DESC').AsString;
    end
    else
    begin
      Edt_Plano.Clear;
      Application.MessageBox('Plano não encontrado!','Atenção',MB_OK + MB_ICONWARNING);
      Abort;
    end;
  end;
end;

procedure TF_Aluno.QPadraoALU_SEXOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'M' then
    Text := 'Masculino';

  if Sender.AsString = 'F' then
    Text := 'Feminino';
end;

procedure TF_Aluno.QPadraoALU_SEXOSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Masculino' then
    Sender.AsString := 'M';

  if Text = 'Feminino' then
    Sender.AsString := 'F';
end;

procedure TF_Aluno.QPadraoALU_STATUSGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'A' then
    Text := 'Ativo';

  if Sender.AsString = 'I' then
    Text := 'Inativo';
end;

procedure TF_Aluno.QPadraoALU_STATUSSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Ativo' then
    Sender.AsString := 'A';

  if Text = 'Inativo' then
    Sender.AsString := 'I';
end;

procedure TF_Aluno.QPadraoDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  inherited;
  if Pos('FK_MENSALIDADE_ALUNO',e.Message) > 0 then
  begin
    Application.MessageBox('Não é possível excluir esse aluno, pois existem mensalidades vinculadas no mesmo!','Atenção',MB_OK + MB_ICONWARNING);
    Abort;
  end;
end;

procedure TF_Aluno.QPadraoNewRecord(DataSet: TDataSet);
begin
  inherited;
  cmdSql.Close;
  cmdSql.ExecQuery;

  Edt_Cidade.Clear;
  Edt_Plano.Clear;
  QPadraoALU_CODIGO.AsInteger := cmdSql.FieldByName('alu_codigo').AsInteger + 1; // Pega new ID
  QPadraoALU_STATUS.AsString := 'A';
  QPadraoALU_COBRAR.AsString := 'S';
end;

procedure TF_Aluno.sbt_2Click(Sender: TObject);
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
  QPadraoALU_CID_CODIGO.AsInteger := CodCID;
end;

procedure TF_Aluno.sbt_3Click(Sender: TObject);
begin
  inherited;
  if not OpenDialog1.Execute then
    Exit;

  QPadrao.Edit;
  QPadraoALU_FOTO.AsString := OpenDialog1.FileName;
  img_Foto.Picture.LoadFromFile(OpenDialog1.FileName);
end;

procedure TF_Aluno.sbt_1Click(Sender: TObject);
var
  CodPLANO : Integer;
  QAux : TIBQuery;
begin
  CodPLANO := Procurar('Selecione o Plano e clique em Transportar',
                        'Select PLA_CODIGO as Codigo, PLA_DESC as Desc, PLA_VALOR as Valor from PLANOS ORDER BY PLA_DESC');

  if CodPLANO = 0 then
    Exit;

  QAux := TIBQuery.Create(Self);
  QAux.Database := DM.Conexao;
  QAux.Close;
  QAux.SQL.Clear;
  QAux.SQL.Add('Select PLA_DESC from PLANOS where PLA_CODIGO = ' + IntToStr(CodPLANO));
  QAux.Open;

  QPadrao.Edit;

  Edt_Plano.Clear;
  Edt_Plano.Text := QAux.FieldByName('PLA_DESC').AsString;
  QPadraoALU_PLA_CODIGO.AsInteger := CodPLANO;
end;

end.
