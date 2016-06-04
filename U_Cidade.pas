unit U_Cidade;

interface

uses
  {$IFDEF VER210} //Versão 2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, U_Padrao, IBSQL, IBCustomDataSet,
  IBUpdateSQL, DB, IBQuery, Menus, Grids, DBGrids,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, RLReport;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, IBSQL, IBCustomDataSet,
  IBUpdateSQL, Data.DB, IBQuery, Vcl.Menus, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, RLReport, MidasLib;
  {$ENDIF} //Versao XE2

type
  TF_Cidade = class(TF_Padrao)
    QPadraoCID_CODIGO: TSmallintField;
    QPadraoCID_UF_CODIGO: TSmallintField;
    QPadraoCID_NOME: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    QPadraoUF_NOME: TIBStringField;
    Edt_UF: TEdit;
    btn_selUF: TSpeedButton;
    rla_2: TRLLabel;
    rdt_2: TRLDBText;
    rla_3: TRLLabel;
    rdt_3: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure QPadraoNewRecord(DataSet: TDataSet);
    procedure btn_selUFClick(Sender: TObject);
    procedure QPadraoAfterScroll(DataSet: TDataSet);
    procedure QPadraoCID_UF_CODIGOValidate(Sender: TField);
    procedure QPadraoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Cidade: TF_Cidade;

implementation

{$R *.dfm}

uses U_Dm;

procedure TF_Cidade.btn_selUFClick(Sender: TObject);
var
  CodUF : Integer;
  QAux : TIBQuery;
begin
  CodUF := Procurar('Selecione a UF e clique em Transportar',
                        'Select UF_CODIGO as Codigo,UF_NOME as Nome from UF ORDER BY UF_NOME');

  if CodUF = 0 then
    Exit;

  QAux := TIBQuery.Create(Self);
  QAux.Database := DM.Conexao;
  QAux.Close;
  QAux.SQL.Clear;
  QAux.SQL.Add('Select UF_NOME from UF where UF_CODIGO = ' + IntToStr(CodUF));
  QAux.Open;

  QPadrao.Edit;

  Edt_UF.Clear;
  Edt_UF.Text := QAux.FieldByName('UF_NOME').AsString;
  QPadraoCID_UF_CODIGO.AsInteger := CodUF;
end;

procedure TF_Cidade.FormCreate(Sender: TObject);
begin
  vsSql := ' select CID_CODIGO, CID_UF_CODIGO, UF_NOME,  CID_NOME from cidade left join uf on cid_uf_codigo = uf_codigo'; // Select Limpo
  vsSqlAbrir := ' select CID_CODIGO, CID_UF_CODIGO, UF_NOME,  CID_NOME from cidade left join uf on cid_uf_codigo = uf_codigo where 0 = 1'; //Select p n trazer nada
  inherited;
end;

procedure TF_Cidade.QPadraoAfterScroll(DataSet: TDataSet);
var
    QAux : TIBQuery;
begin
  inherited;

  if not QPadraoCID_UF_CODIGO.IsNull then
  begin
    QAux := TIBQuery.Create(Self);
    QAux.Database := DM.Conexao;
    QAux.Close;
    QAux.SQL.Clear;
    QAux.SQL.Add('Select UF_NOME from UF where UF_CODIGO = ' + QPadraoCID_UF_CODIGO.AsString);
    QAux.Open;

    Edt_UF.Clear;
    Edt_UF.Text := QAux.FieldByName('UF_NOME').AsString;
  end;
end;

procedure TF_Cidade.QPadraoCID_UF_CODIGOValidate(Sender: TField);
var
  QAux : TIBQuery;
begin
  inherited;

  if not QPadraoCID_UF_CODIGO.IsNull then
  begin
    QAux := TIBQuery.Create(Self);
    QAux.Database := DM.Conexao;
    QAux.Close;
    QAux.SQL.Clear;
    QAux.SQL.Add('Select UF_NOME from UF where UF_CODIGO = ' + QPadraoCID_UF_CODIGO.AsString);
    QAux.Open;

    if QAux.RecordCount > 0 then
    begin
      Edt_UF.Clear;
      Edt_UF.Text := QAux.FieldByName('UF_NOME').AsString;
    end
    else
    begin
      Application.MessageBox('UF não encontrada!','Atenção',MB_OK + MB_ICONWARNING);
      Edt_UF.Clear;
      Abort;
    end;
  end;
end;

procedure TF_Cidade.QPadraoDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  inherited;

  if Pos('FK_FUNCIONARIO_CIDADE',e.Message) > 0 then
  begin
    Application.MessageBox('Não é possível excluir essa cidade, pois a mesma já está sendo usada para algum funcionário ou aluno!','Atenção',MB_OK + MB_ICONWARNING);
    Abort;
  end;
end;

procedure TF_Cidade.QPadraoNewRecord(DataSet: TDataSet);
begin
  inherited;
  cmdSql.Close;
  cmdSql.ExecQuery;

  QPadraoCID_CODIGO.AsInteger := cmdSql.FieldByName('cid_codigo').AsInteger + 1; // Pega new ID
  Edt_UF.Clear;
end;

end.
