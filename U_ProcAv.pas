unit U_ProcAv;

interface

uses
  {$IFDEF VER210} //Versão 2010
  GraphUtil, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, DB, Mask, Buttons, IBQuery;
  {$ELSE}
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBCustomDataSet,
  IBQuery, Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ExtCtrls;
  {$ENDIF} //Versao XE2

type
  TF_ProcAv = class(TForm)
    pan_1: TPanel;
    btn_Cancelar: TSpeedButton;
    btn_Anterior: TSpeedButton;
    btn_Proximo: TSpeedButton;
    btn_Confirmar: TSpeedButton;
    pgc_Filtro: TPageControl;
    tbs_Selecionar: TTabSheet;
    tbs_Valores: TTabSheet;
    tbs_Confirmar: TTabSheet;
    rdg_Parametros: TRadioGroup;
    lab_Sel: TLabel;
    grb_Valores: TGroupBox;
    lab_2: TLabel;
    lab_3: TLabel;
    lab_Op: TLabel;
    edt_Null: TEdit;
    lab_Op2: TLabel;
    lab_Sel2: TLabel;
    lab_Data1: TLabel;
    lab_Data2: TLabel;
    lab_CampoSel2: TLabel;
    lab_4: TLabel;
    lab_CampoSel: TLabel;
    lab_5: TLabel;
    rdg_Fields: TRadioGroup;
    lab_Ask: TLabel;
    Data1: TDateTimePicker;
    Data3: TDateTimePicker;
    Data2: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_CancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_AnteriorClick(Sender: TObject);
    procedure btn_ProximoClick(Sender: TObject);
    procedure tbs_ConfirmarShow(Sender: TObject);
    procedure tbs_ValoresShow(Sender: TObject);
    procedure tbs_SelecionarShow(Sender: TObject);
    procedure btn_ConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure OcultarSheets(PageControl: TPageControl);
    function InverteData( d:TDateTime ):String;
  public
    { Public declarations }
    slCampos : TStringList;
    Query : TIBQuery;
    vsSql : String;
  end;

var
  F_ProcAv: TF_ProcAv;

implementation

{$R *.DFM}

procedure TF_ProcAv.btn_AnteriorClick(Sender: TObject);
begin
  if pgc_Filtro.ActivePageIndex <> 0 then
    pgc_Filtro.ActivePageIndex := pgc_Filtro.ActivePageIndex -1;
end;

procedure TF_ProcAv.btn_CancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TF_ProcAv.btn_ConfirmarClick(Sender: TObject);
var
  Campo, vWhere : String;
begin
  if rdg_Parametros.ItemIndex < 0 then
  begin
    Application.MessageBox('Nenhum parâmetro foi selecionado!','Atenção',MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if rdg_Fields.ItemIndex < 0 then
  begin
    Application.MessageBox('Nenhum campo foi selecionado!','Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  Campo := '';
  Campo := slCampos[rdg_Fields.ItemIndex];

  vWhere := '';

  if rdg_Parametros.ItemIndex = 0 then //Entre datas
    vWhere := 'CAST(' + Campo + ' AS DATE)' + ' >= ' + chr(39) + InverteData(Data1.Date) + chr(39) + ' AND ' + Campo + ' <= ' + chr(39) + InverteData(Data2.Date) + chr(39);

  if rdg_Parametros.ItemIndex = 1 then //Data maior que
    vWhere := 'CAST(' + Campo + ' AS DATE)' + ' >= ' + chr(39) + InverteData(Data3.Date) + chr(39);

  if rdg_Parametros.ItemIndex = 2 then //Data menor que
    vWhere := 'CAST(' + Campo + ' AS DATE)' + ' <= ' + chr(39) + InverteData(Data3.Date) + chr(39);

  if rdg_Parametros.ItemIndex = 3 then //Data igual a
    vWhere := 'CAST(' + Campo + ' AS DATE)' + ' = ' + chr(39) + InverteData(Data3.Date) + Chr(39);

  if rdg_Parametros.ItemIndex = 4 then //Sem data
    vWhere := 'CAST(' + Campo + ' AS DATE)' + ' IS NULL ';

  if Trim(vWhere) = EmptyStr then
  begin
    Application.MessageBox('É necessário preencher os parâmetros para efetuar uma consulta!','Aviso', MB_OK + MB_ICONWARNING);
    Abort;
  end;

  Query.DisableControls;

  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(vsSql + ' WHERE ' + vWhere);
  Query.Open;

  Query.EnableControls;
  Close;
end;

procedure TF_ProcAv.btn_ProximoClick(Sender: TObject);
begin
  if pgc_Filtro.ActivePageIndex <> 2 then
    pgc_Filtro.ActivePageIndex := pgc_Filtro.ActivePageIndex + 1;
end;

procedure TF_ProcAv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TF_ProcAv.FormCreate(Sender: TObject);
begin
  slCampos := TStringList.Create;
end;

procedure TF_ProcAv.FormShow(Sender: TObject);
var
  x : Integer;
begin
  pgc_Filtro.ActivePageIndex := 0;
  rdg_Fields.Items.Clear;
  slCampos.Clear;

  for x:= 0 to Query.FieldCount - 1 do
  begin
    if ((Query.Fields[x].DataType = ftDate) or
        (Query.Fields[x].DataType = ftDateTime)) and
        (Query.Fields[x].Visible) then
    begin
      rdg_Fields.Items.Add(Query.Fields[x].DisplayLabel);
      slCampos.Add(Query.Fields[x].FieldName);
    end;
  end;
  rdg_Fields.ItemIndex := 0;

  Data1.Date := Now;
  Data2.Date := Now;
  Data3.Date := Now;

  OcultarSheets(pgc_Filtro);
end;

function TF_ProcAv.InverteData(d: TDateTime): String;
begin
  Result := DateToStr(d);
  Result := Trim(Copy(Result,7,4 )) + '-' + Copy(Result,4,2) + '-' + Copy(Result,1,2);
end;

procedure TF_ProcAv.OcultarSheets(PageControl: TPageControl);
var
  iPage: Integer;
begin
  for iPage := 0 to PageControl.PageCount - 1 do
    PageControl.Pages[iPage].TabVisible := False;

  if (PageControl.PageCount > 0) then
    PageControl.ActivePage := PageControl.Pages[0];

  PageControl.Style := tsButtons;
end;

procedure TF_ProcAv.tbs_ConfirmarShow(Sender: TObject);
begin
  btn_Proximo.Enabled := False;
  btn_Confirmar.Enabled := True;

  if rdg_Parametros.ItemIndex = 0 then //Entre datas
  begin
    if DateToStr(Data1.Date) <> '30/12/1899' then
      lab_Data1.Caption := 'Data 1 - ' + DateToStr(Data1.Date);

    if DateToStr(Data2.Date) <> '30/12/1899' then
      lab_Data2.Caption := 'Data 2 - ' + DateToStr(Data2.Date);
  end;

  if rdg_Parametros.ItemIndex = 1 then //Data maior que
    if DateToStr(Data3.Date) <> '30/12/1899' then
      lab_Data1.Caption := 'Data maior que > ' + DateToStr(Data3.Date);

  if rdg_Parametros.ItemIndex = 2 then //Data menor que
    if DateToStr(Data3.Date) <> '30/12/1899' then
      lab_Data1.Caption := 'Data menor que < ' + DateToStr(Data3.Date);

  if rdg_Parametros.ItemIndex = 3 then //Data igual a
    if DateToStr(Data3.Date) <> '30/12/1899' then
      lab_Data1.Caption := 'Data igual a = ' + DateToStr(Data3.Date);

  if rdg_Parametros.ItemIndex = 4 then //Sem data
    lab_Data1.Caption := 'Data igual a = Nada';
end;

procedure TF_ProcAv.tbs_SelecionarShow(Sender: TObject);
begin
  btn_Confirmar.Enabled := False;
end;

procedure TF_ProcAv.tbs_ValoresShow(Sender: TObject);
begin
  btn_Confirmar.Enabled := False;
  btn_Proximo.Enabled := True;
  lab_Op.Caption := rdg_Parametros.Items[rdg_Parametros.ItemIndex];
  lab_Op2.Caption := rdg_Parametros.Items[rdg_Parametros.ItemIndex];
  lab_CampoSel.Caption := rdg_Fields.Items[rdg_Fields.ItemIndex];
  lab_CampoSel2.Caption := rdg_Fields.Items[rdg_Fields.ItemIndex];

  if rdg_Parametros.ItemIndex = 0 then //Entre datas
  begin
    Data1.Visible := True;
    Data2.Visible := True;
    Data3.Visible := False;
    edt_Null.Visible := False;
    lab_Data1.Visible := True;
    lab_Data2.Visible := True;
  end;

  if rdg_Parametros.ItemIndex = 1 then //Data maior que
  begin
    Data1.Visible := False;
    Data2.Visible := False;
    Data3.Visible := True;
    edt_Null.Visible := False;
    lab_Data1.Visible := True;
    lab_Data2.Visible := False;
  end;

  if rdg_Parametros.ItemIndex = 2 then //Data menor que
  begin
    Data1.Visible := False;
    Data2.Visible := False;
    Data3.Visible := True;
    edt_Null.Visible := False;
    lab_Data1.Visible := True;
    lab_Data2.Visible := False;
  end;

  if rdg_Parametros.ItemIndex = 3 then //Data igual a
  begin
    Data1.Visible := False;
    Data2.Visible := False;
    Data3.Visible := True;
    edt_Null.Visible := False;
    lab_Data1.Visible := True;
    lab_Data2.Visible := False;
  end;

  if rdg_Parametros.ItemIndex = 4 then //Sem data
  begin
    Data1.Visible := False;
    Data2.Visible := False;
    Data3.Visible := False;
    edt_Null.Visible := True;
    lab_Data1.Visible := True;
    lab_Data2.Visible := False;
  end;
end;

end.






