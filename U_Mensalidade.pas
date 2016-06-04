unit U_Mensalidade;

interface

uses
  {$IFDEF VER210} //Versão 2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Padrao, IBSQL, IBCustomDataSet, IBUpdateSQL, DB, IBQuery, Menus,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, RLReport;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, IBSQL, IBCustomDataSet,
  IBUpdateSQL, Data.DB, IBQuery, Vcl.Menus, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, RLReport, MidasLib;
  {$ENDIF} //Versao XE2

type
  TF_Mensalidade = class(TF_Padrao)
    QPadraoMEN_CODIGO: TSmallintField;
    QPadraoMEN_ALU_CODIGO: TSmallintField;
    QPadraoALU_NOME: TIBStringField;
    QPadraoMEN_DATAPG: TDateField;
    QPadraoMEN_STATUS: TIBStringField;
    ded_1: TDBEdit;
    lab_1: TLabel;
    ded_2: TDBEdit;
    lab_2: TLabel;
    ded_3: TDBEdit;
    lab_3: TLabel;
    edt_Nome: TEdit;
    btn_selAluno: TSpeedButton;
    QPadraoMEN_VALOR: TIBBCDField;
    ded_4: TDBEdit;
    lab_5: TLabel;
    dcb_1: TDBComboBox;
    lab_4: TLabel;
    rla_2: TRLLabel;
    rdt_2: TRLDBText;
    rla_3: TRLLabel;
    rdt_3: TRLDBText;
    rla_4: TRLLabel;
    rdt_4: TRLDBText;
    rla_5: TRLLabel;
    rdt_5: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure QPadraoNewRecord(DataSet: TDataSet);
    procedure QPadraoMEN_STATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btn_selAlunoClick(Sender: TObject);
    procedure QPadraoAfterScroll(DataSet: TDataSet);
    procedure QPadraoMEN_ALU_CODIGOValidate(Sender: TField);
    procedure QPadraoMEN_STATUSSetText(Sender: TField; const Text: string);
    procedure FormShow(Sender: TObject);
    procedure QPadraoBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Mensalidade: TF_Mensalidade;

implementation

uses U_Dm;

{$R *.dfm}

procedure TF_Mensalidade.btn_selAlunoClick(Sender: TObject);
var
  CodAluno : Integer;
  QAux : TIBQuery;
begin
  CodAluno := Procurar('Selecione o Aluno e clique em Transportar',
                        'Select ALU_CODIGO as Codigo, ALU_NOME as Nome from ALUNO ORDER BY ALU_NOME');

  if CodAluno = 0 then
    Exit;

  QAux := TIBQuery.Create(Self);
  QAux.Database := DM.Conexao;
  QAux.Close;
  QAux.SQL.Clear;
  QAux.SQL.Add('Select ALU_NOME from ALUNO where ALU_CODIGO = ' + IntToStr(CodAluno));
  QAux.Open;

  QPadrao.Edit;

  edt_Nome.Clear;
  edt_Nome.Text := QAux.FieldByName('ALU_NOME').AsString;
  QPadraoMEN_ALU_CODIGO.AsInteger := CodAluno;
end;

procedure TF_Mensalidade.FormCreate(Sender: TObject);
begin
  vsSql := ' select MEN_CODIGO, MEN_ALU_CODIGO, ALU_NOME, MEN_DATAPG, MEN_STATUS, MEN_VALOR from mensalidade left join aluno on men_alu_codigo = alu_codigo '; // Select Limpo
  vsSqlAbrir := ' select MEN_CODIGO, MEN_ALU_CODIGO, ALU_NOME, MEN_DATAPG, MEN_STATUS, MEN_VALOR from mensalidade left join aluno on men_alu_codigo = alu_codigo where 0 = 1'; //Select p n trazer nada
  inherited;
end;

procedure TF_Mensalidade.FormShow(Sender: TObject);
begin
  inherited;
  SetLength(aDefFlags, 2);
  SetLength(aDefFlags[0],3);
  SetLength(aDefFlags[1],3);

  aDefFlags[0,0] := 'MEN_STATUS';
  aDefFlags[0,1] := 'Aberta';
  aDefFlags[0,2] := 'A';

  aDefFlags[1,0] := 'MEN_STATUS';
  aDefFlags[1,1] := 'Paga';
  aDefFlags[1,2] := 'P';
end;

procedure TF_Mensalidade.QPadraoAfterScroll(DataSet: TDataSet);
var
  QAux : TIBQuery;
begin
  inherited;

  if not QPadraoMEN_ALU_CODIGO.IsNull then
  begin
    QAux := TIBQuery.Create(Self);
    QAux.Database := DM.Conexao;
    QAux.Close;
    QAux.SQL.Clear;
    QAux.SQL.Add('Select ALU_NOME from ALUNO where ALU_CODIGO = ' + QPadraoMEN_ALU_CODIGO.AsString);
    QAux.Open;

    edt_Nome.Clear;
    edt_Nome.Text := QAux.FieldByName('ALU_NOME').AsString;
  end;
end;

procedure TF_Mensalidade.QPadraoBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if QPadraoMEN_STATUS.AsString = 'P' then
    if Application.MessageBox('A mensalidade já está paga!' + #13 + 'Tem certeza que deseja excluí-la?','Atenção',MB_YESNO + MB_ICONQUESTION) = IDNO then
      Abort;
end;

procedure TF_Mensalidade.QPadraoMEN_ALU_CODIGOValidate(Sender: TField);
var
  QAux : TIBQuery;
begin
  inherited;

  if not QPadraoMEN_ALU_CODIGO.IsNull then
  begin
    QAux := TIBQuery.Create(Self);
    QAux.Database := DM.Conexao;
    QAux.Close;
    QAux.SQL.Clear;
    QAux.SQL.Add('Select ALU_NOME from ALUNO where ALU_CODIGO = ' + QPadraoMEN_ALU_CODIGO.AsString);
    QAux.Open;

    if QAux.RecordCount > 0 then
    begin
      edt_Nome.Clear;
      edt_Nome.Text := QAux.FieldByName('ALU_NOME').AsString;
    end
    else
    begin
      edt_Nome.Clear;
      Application.MessageBox('Aluno não encontrado!','Atenção',MB_OK + MB_ICONWARNING);
      Abort;
    end;
  end;
end;

procedure TF_Mensalidade.QPadraoMEN_STATUSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'A' then
    Text := 'Aberta';

  if Sender.AsString = 'P' then
    Text := 'Paga';
end;

procedure TF_Mensalidade.QPadraoMEN_STATUSSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = 'Aberta' then
    Sender.AsString := 'A';

  if Text = 'Paga' then
    Sender.AsString := 'P';
end;

procedure TF_Mensalidade.QPadraoNewRecord(DataSet: TDataSet);
begin
  inherited;
  cmdSql.Close;
  cmdSql.ExecQuery;

  edt_Nome.Clear;
  QPadraoMEN_CODIGO.AsInteger := cmdSql.FieldByName('men_codigo').AsInteger + 1; // Pega new ID
  QPadraoMEN_STATUS.AsString := 'P';
  QPadraoMEN_DATAPG.AsDateTime := Date;
end;

end.
