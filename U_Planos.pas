unit U_Planos;

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
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, RLReport, MidasLib,
  DB, StdCtrls, Mask, DBCtrls, Dialogs, Menus, Grids, DBGrids, Controls,
  Buttons, Classes, ExtCtrls;
  {$ENDIF} //Versao XE2

type
  TF_Planos = class(TF_Padrao)
    QPadraoPLA_CODIGO: TSmallintField;
    QPadraoPLA_DESC: TIBStringField;
    QPadraoPLA_VALOR: TIBBCDField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    QPadraoPLA_VENC: TSmallintField;
    ded_DtVenc: TDBEdit;
    lab_DtVenc: TLabel;
    rla_2: TRLLabel;
    rdt_2: TRLDBText;
    rla_3: TRLLabel;
    rdt_3: TRLDBText;
    rla_4: TRLLabel;
    rdt_4: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure QPadraoNewRecord(DataSet: TDataSet);
    procedure QPadraoDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Planos: TF_Planos;

implementation

{$R *.dfm}

procedure TF_Planos.FormCreate(Sender: TObject);
begin
  vsSql := 'select pla_codigo, pla_desc, pla_valor, pla_venc from planos'; // Select Limpo
  vsSqlAbrir := 'select pla_codigo, pla_desc, pla_valor, pla_venc from planos where 0 = 0'; //Select p n trazer nada
  inherited;
end;

procedure TF_Planos.QPadraoDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  inherited;
  if Pos('FK_ALUNO_PLANOS',e.Message) > 0 then
  begin
    Application.MessageBox('Não é possível excluir esse plano, pois existem alunos vinculados no mesmo!','Atenção',MB_OK + MB_ICONWARNING);
    Abort;
  end;
end;

procedure TF_Planos.QPadraoNewRecord(DataSet: TDataSet);
begin
  inherited;
  cmdSql.Close;
  cmdSql.ExecQuery;

  QPadraoPLA_CODIGO.AsInteger := cmdSql.FieldByName('pla_codigo').AsInteger + 1; // Pega new ID
end;

end.
