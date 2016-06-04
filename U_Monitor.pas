unit U_Monitor;

interface

uses
  {$IFDEF VER210} //Versão 2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, Grids,
  DBGrids, Buttons, IBQuery, RLReport, DB, IBCustomDataSet;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Data.DB, IBCustomDataSet, IBQuery, RLReport, Vcl.Buttons, Vcl.DBGrids, MidasLib;
  {$ENDIF} //Versão XE2

type
  TF_Monitor = class(TForm)
    Rdg_Filtro: TRadioGroup;
    Grid_Monitor: TDBGrid;
    Panel1: TPanel;
    iqr_Atrasados: TIBQuery;
    iqr_AtrasadosALU_CODIGO: TSmallintField;
    iqr_AtrasadosALUNO: TIBStringField;
    iqr_AtrasadosDIAVENC: TSmallintField;
    iqr_AtrasadosDIASDEATRASO: TLargeintField;
    ds_Atrasados: TDataSource;
    iqr_Emdia: TIBQuery;
    ds_Emdia: TDataSource;
    iqr_EmdiaALU_CODIGO: TSmallintField;
    iqr_EmdiaALUNO: TIBStringField;
    iqr_EmdiaDIAVENC: TSmallintField;
    iqr_EmdiaDATADEPAGAMENTO: TDateField;
    iqr_APagar: TIBQuery;
    ds_APagar: TDataSource;
    iqr_APagarALU_CODIGO: TSmallintField;
    iqr_APagarALUNO: TIBStringField;
    iqr_APagarDIAVENC: TSmallintField;
    rpt_Atrasados: TRLReport;
    RBA_CABECALHO: TRLBand;
    RIM_LOGO: TRLImage;
    rsy_Titulo1: TRLSystemInfo;
    rla_ImpressoPor: TRLLabel;
    RBA_ROD: TRLBand;
    rpa_Obs: TRLPanel;
    rpa_TotPG: TRLPanel;
    rla_TotPg: TRLLabel;
    rsy_TotPg: TRLSystemInfo;
    rpa_numPG: TRLPanel;
    rla_Numpg: TRLLabel;
    rsy_Numpg: TRLSystemInfo;
    rpa_data: TRLPanel;
    rla_DataImp: TRLLabel;
    rsy_DataImp: TRLSystemInfo;
    rla_ObsFim: TRLLabel;
    rsy_Titulo: TRLSystemInfo;
    rba_Titulo: TRLBand;
    rla_1: TRLLabel;
    rla_2: TRLLabel;
    rla_3: TRLLabel;
    rla_4: TRLLabel;
    rba_Detalhes: TRLBand;
    rdt_1: TRLDBText;
    rdt_2: TRLDBText;
    rdt_3: TRLDBText;
    rdt_4: TRLDBText;
    RLBand1: TRLBand;
    rpt_Emdia: TRLReport;
    RLBand2: TRLBand;
    RLImage1: TRLImage;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLBand3: TRLBand;
    RLPanel1: TRLPanel;
    RLPanel2: TRLPanel;
    RLLabel2: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLPanel3: TRLPanel;
    RLLabel3: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLPanel4: TRLPanel;
    RLLabel4: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel5: TRLLabel;
    RLSystemInfo5: TRLSystemInfo;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand5: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand6: TRLBand;
    rpt_APagar: TRLReport;
    RLBand7: TRLBand;
    RLImage2: TRLImage;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel10: TRLLabel;
    RLBand8: TRLBand;
    RLPanel5: TRLPanel;
    RLPanel6: TRLPanel;
    RLLabel11: TRLLabel;
    RLSystemInfo7: TRLSystemInfo;
    RLPanel7: TRLPanel;
    RLLabel12: TRLLabel;
    RLSystemInfo8: TRLSystemInfo;
    RLPanel8: TRLPanel;
    RLLabel13: TRLLabel;
    RLSystemInfo9: TRLSystemInfo;
    RLLabel14: TRLLabel;
    RLSystemInfo10: TRLSystemInfo;
    RLBand9: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel18: TRLLabel;
    RLBand10: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand11: TRLBand;
    btn_Atualizar: TSpeedButton;
    btn_Imprimir: TSpeedButton;
    btn_Fechar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Rdg_FiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RBA_CABECALHOBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure btn_AtualizarClick(Sender: TObject);
    procedure btn_ImprimirClick(Sender: TObject);
    procedure btn_FecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Monitor: TF_Monitor;

implementation

{$R *.dfm}

uses U_Dm, U_Principal;

procedure TF_Monitor.btn_AtualizarClick(Sender: TObject);
begin
  if Rdg_Filtro.ItemIndex = 0 then
  begin
    iqr_Atrasados.Close;
    iqr_Atrasados.Open;
    iqr_Atrasados.FetchAll;

    Grid_Monitor.DataSource := ds_Atrasados;
  end;

  if Rdg_Filtro.ItemIndex = 1 then
  begin
    iqr_Emdia.Close;
    iqr_Emdia.Open;
    iqr_Emdia.FetchAll;

    Grid_Monitor.DataSource := ds_Emdia;
  end;

  if Rdg_Filtro.ItemIndex = 2 then
  begin
    iqr_APagar.Close;
    iqr_APagar.Open;
    iqr_APagar.FetchAll;

    Grid_Monitor.DataSource := ds_APagar;
  end;
end;

procedure TF_Monitor.btn_FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Monitor.btn_ImprimirClick(Sender: TObject);
begin
  if Rdg_Filtro.ItemIndex = 0 then
    rpt_Atrasados.Preview;

  if Rdg_Filtro.ItemIndex = 1 then
    rpt_Emdia.Preview;

  if Rdg_Filtro.ItemIndex = 2 then
    rpt_APagar.Preview;
end;

procedure TF_Monitor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TF_Monitor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TF_Monitor.FormShow(Sender: TObject);
begin
  Rdg_Filtro.ItemIndex := 0;

  iqr_Atrasados.Close;
  iqr_Atrasados.Open;
  iqr_Atrasados.FetchAll;

  Grid_Monitor.DataSource := ds_Atrasados;
end;

procedure TF_Monitor.RBA_CABECALHOBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RIM_LOGO.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\logorel.bmp');
  rla_ImpressoPor.Caption := 'Impresso por: ' + F_Principal.NomeUsuario;
end;

procedure TF_Monitor.Rdg_FiltroClick(Sender: TObject);
begin
  if Rdg_Filtro.ItemIndex = 0 then
  begin
    iqr_Atrasados.Close;
    iqr_Atrasados.Open;
    iqr_Atrasados.FetchAll;

    Grid_Monitor.DataSource := ds_Atrasados;
  end;

  if Rdg_Filtro.ItemIndex = 1 then
  begin
    iqr_Emdia.Close;
    iqr_Emdia.Open;
    iqr_Emdia.FetchAll;

    Grid_Monitor.DataSource := ds_Emdia;
  end;

  if Rdg_Filtro.ItemIndex = 2 then
  begin
    iqr_APagar.Close;
    iqr_APagar.Open;
    iqr_APagar.FetchAll;

    Grid_Monitor.DataSource := ds_APagar;
  end;
end;

procedure TF_Monitor.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLImage1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\logorel.bmp');
  RLLabel1.Caption := 'Impresso por: ' + F_Principal.NomeUsuario;
end;

procedure TF_Monitor.RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  RLImage2.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\logorel.bmp');
  RLLabel10.Caption := 'Impresso por: ' + F_Principal.NomeUsuario;
end;

end.
