unit U_Cargo;

interface

uses
  {$IFDEF VER210} //Versão 2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, U_Padrao, DB, IBCustomDataSet,
  IBQuery, Menus, Grids, DBGrids, StdCtrls, Buttons,
  ExtCtrls, Mask, DBCtrls, IBUpdateSQL, IBSQL, RLReport;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Padrao, Data.DB, IBCustomDataSet,
  IBQuery, Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, IBUpdateSQL, IBSQL,  RLReport, MidasLib;
  {$ENDIF} //Versao XE2

type
  TF_Cargo = class(TF_Padrao)
    QPadraoCAR_CODIGO: TSmallintField;
    QPadraoCAR_NOME: TIBStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    rla_2: TRLLabel;
    rdt_2: TRLDBText;
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
  F_Cargo: TF_Cargo;

implementation

{$R *.dfm}

procedure TF_Cargo.FormCreate(Sender: TObject);
begin
  vsSql := 'select car_codigo, car_nome from cargo'; // Select Limpo
  vsSqlAbrir := 'select car_codigo, car_nome from cargo where 0 = 0'; //Select p n trazer nada
  inherited;
end;

procedure TF_Cargo.QPadraoDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  inherited;
  if Pos('FK_FUNCIONARIO_CARGO',e.Message) > 0 then
  begin
    Application.MessageBox('Não é possível excluir esse cargo, pois o mesmo já está sendo usado para algum funcionário!','Atenção',MB_OK + MB_ICONWARNING);
    Abort;
  end;
end;

procedure TF_Cargo.QPadraoNewRecord(DataSet: TDataSet);
begin
  inherited;
  cmdSql.Close;
  cmdSql.ExecQuery;

  QPadraoCAR_CODIGO.AsInteger := cmdSql.FieldByName('car_codigo').AsInteger + 1; // Pega new ID
end;

end.
