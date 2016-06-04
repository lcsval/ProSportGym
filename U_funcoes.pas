unit U_funcoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, IBCustomDataSet,
  IBQuery, ExtCtrls, DBCtrls, Grids, DBGrids, IBSQL, IBUpdateSQL,
  Menus, ComCtrls, Buttons, ToolWin, RLConsts, DateUtils, shellapi;

function AcessoTela(CodigoUsuario, CodigoTela: string; Owner : TComponent) : Boolean;

implementation

uses U_Dm;

function AcessoTela(CodigoUsuario, CodigoTela: string; Owner : TComponent): Boolean;
var
  QAux : TIBQuery;
begin
  Result := False;

  QAux := TIBQuery.Create(Owner);
  QAux.Database := DM.Conexao;
  QAux.Close;
  QAux.SQL.Clear;
  QAux.SQL.Add('SELECT * FROM Acesso WHERE ACE_FUN_CODIGO = ' + CODIGOUSUARIO + ' AND ACE_FOR_CODIGO = ' + CodigoTela);
  QAux.Open;

  if QAux.RecordCount > 0 then
    Result := True;
end;

end.
