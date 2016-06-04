unit U_RelHistoricoAluno;

interface

uses


  {$IFDEF VER210} //Versão 2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery,
  Buttons, DBClient, ExtCtrls, RLReport;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBCustomDataSet,
  IBUpdateSQL, Data.DB, IBQuery, Vcl.Menus, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, RLReport, MidasLib,
  Datasnap.DBClient, DB, DBClient, Grids, DBGrids, StdCtrls, DBCtrls, Controls,
  Classes, Buttons;
  {$ENDIF} //Versão XE2

type
  TF_RelHistoricoAluno = class(TForm)
    grb_Filtro: TGroupBox;
    dlk_Aluno: TDBLookupComboBox;
    edt_CodAlu: TEdit;
    lab_Aluno: TLabel;
    iqr_Alunos: TIBQuery;
    iqr_AlunosALU_CODIGO: TSmallintField;
    iqr_AlunosALUNO: TIBStringField;
    ds_Alunos: TDataSource;
    btn_Filtrar: TSpeedButton;
    grb_Result: TGroupBox;
    dgd_1: TDBGrid;
    btn_Imprimir: TSpeedButton;
    btn_Fechar: TSpeedButton;
    cds_Dados: TClientDataSet;
    cds_Dadosmesano: TStringField;
    cds_Dadosnome: TStringField;
    cds_Dadossobrenome: TStringField;
    cds_Dadosplano: TStringField;
    cds_Dadosvencimento: TIntegerField;
    cds_Dadosdatapgto: TDateField;
    cds_Dadosstatus: TStringField;
    cds_Dadosdiasdeatrazo: TIntegerField;
    cds_Dadosmulta: TFloatField;
    cds_Dadosvlrmensalidade: TFloatField;
    cds_Dadosvlrtot: TFloatField;
    ds_Dados: TDataSource;
    iqr_Filtro: TIBQuery;
    rpt_rel: TRLReport;
    RBA_CABECALHO: TRLBand;
    RIM_LOGO: TRLImage;
    rsy_Titulo1: TRLSystemInfo;
    rla_Aluno: TRLLabel;
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
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    rba_Detalhes: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand1: TRLBand;
    RLLabel11: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLBand2: TRLBand;
    RLLabel12: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel13: TRLLabel;
    RLDBResult2: TRLDBResult;
    cds_Dadosvlrpago: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dlk_AlunoClick(Sender: TObject);
    procedure dlk_AlunoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CodAluExit(Sender: TObject);
    procedure edt_CodAluKeyPress(Sender: TObject; var Key: Char);
    procedure btn_FiltrarClick(Sender: TObject);
    procedure btn_FecharClick(Sender: TObject);
    procedure cds_DadosstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cds_DadosstatusSetText(Sender: TField; const Text: string);
    procedure rba_1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure btn_ImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DatasInClient;
  end;

var
  F_RelHistoricoAluno: TF_RelHistoricoAluno;

implementation

uses U_Dm;

{$R *.dfm}

procedure TF_RelHistoricoAluno.btn_FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_RelHistoricoAluno.btn_FiltrarClick(Sender: TObject);
var
  i : Integer;
  vYear, vMonth, vDay : Word;
begin
  if Trim(edt_CodAlu.Text) = EmptyStr then
  begin
    Application.MessageBox('Selecione o aluno!','Atenção',MB_OK + MB_ICONWARNING);
    Exit;
  end;

  cds_Dados.Active := False;
  cds_Dados.Active := True;
  cds_Dados.EmptyDataSet;

  DatasInClient;

  i := 0;
  cds_Dados.First;
  while not cds_Dados.Eof do
  begin
    iqr_Filtro.Close;
    iqr_Filtro.ParamByName('alu_codigo').AsInteger := StrToInt(Trim(edt_CodAlu.Text));
    iqr_Filtro.ParamByName('mes').AsInteger := i+1;
    iqr_Filtro.Open;

    vYear := 0;
    vMonth := 0;
    vDay := 0;

    if not iqr_Filtro.IsEmpty then
    begin
      cds_Dados.Edit;
      cds_Dadosnome.AsString := iqr_Filtro.FieldByName('alu_nome').AsString;
      cds_Dadossobrenome.AsString := iqr_Filtro.FieldByName('alu_sobrenome').AsString;
      cds_Dadosplano.AsString := iqr_Filtro.FieldByName('pla_desc').AsString;
      cds_Dadosdatapgto.AsDateTime := iqr_Filtro.FieldByName('men_datapg').AsDateTime;
      cds_Dadosvencimento.AsInteger := iqr_Filtro.FieldByName('venc').AsInteger;
      cds_Dadosstatus.AsString := iqr_Filtro.FieldByName('men_status').AsString;

      if iqr_Filtro.FieldByName('alu_cobrar').AsString = 'S' then
      begin
        DecodeDate(iqr_Filtro.FieldByName('men_datapg').AsDateTime, vYear, vMonth, vDay);

        if (vDay > iqr_Filtro.FieldByName('venc').AsInteger) (*and (iqr_Filtro.FieldByName('men_status').AsString = 'A')*) then
        begin
          cds_Dadosdiasdeatrazo.AsInteger := vDay - iqr_Filtro.FieldByName('venc').AsInteger;
          if cds_Dadosdiasdeatrazo.AsInteger >= 5 then
            cds_Dadosmulta.AsFloat := vDay - (iqr_Filtro.FieldByName('venc').AsInteger + 5)
          else
            cds_Dadosmulta.AsFloat := 0;

          cds_Dadosvlrtot.AsFloat := iqr_Filtro.FieldByName('pla_valor').AsFloat + cds_Dadosmulta.AsFloat;
        end
        else
        begin
          cds_Dadosdiasdeatrazo.AsInteger := 0;
          cds_Dadosmulta.AsFloat := 0;

          cds_Dadosvlrtot.AsFloat := iqr_Filtro.FieldByName('pla_valor').AsFloat;
        end;
      end;

      cds_Dadosvlrmensalidade.AsFloat := iqr_Filtro.FieldByName('pla_valor').AsFloat;
      cds_Dadosvlrpago.AsFloat := iqr_Filtro.FieldByName('vlr_pago').AsFloat;
      cds_Dados.Post;
    end;

    Inc(i);
    cds_Dados.Next;
  end;
end;

procedure TF_RelHistoricoAluno.btn_ImprimirClick(Sender: TObject);
begin
  rpt_Rel.Preview();
end;

procedure TF_RelHistoricoAluno.cds_DadosstatusGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString = 'A' then
    Text := 'Aberta';

  if Sender.AsString = 'P' then
    Text := 'Paga';
end;

procedure TF_RelHistoricoAluno.cds_DadosstatusSetText(Sender: TField;
  const Text: string);
begin
  if Text = 'Aberta' then
    Sender.AsString := 'A';

  if Text = 'Paga' then
    Sender.AsString := 'P';
end;

procedure TF_RelHistoricoAluno.DatasInClient;
var
  vYear, vMonth, vDay : Word;
  i : Integer;
begin
  DecodeDate(Date, vYear, vMonth, vDay);

  for I := 0 to 12 - 1 do
  begin
    cds_Dados.Append;
    case i of
      0 : cds_Dadosmesano.AsString := 'Janeiro/' + IntToStr(vYear);
      1 : cds_Dadosmesano.AsString := 'Fevereiro/' + IntToStr(vYear);
      2 : cds_Dadosmesano.AsString := 'Março/' + IntToStr(vYear);
      3 : cds_Dadosmesano.AsString := 'Abril/' + IntToStr(vYear);
      4 : cds_Dadosmesano.AsString := 'Maio/' + IntToStr(vYear);
      5 : cds_Dadosmesano.AsString := 'Junho/' + IntToStr(vYear);
      6 : cds_Dadosmesano.AsString := 'Julho/' + IntToStr(vYear);
      7 : cds_Dadosmesano.AsString := 'Agosto/' + IntToStr(vYear);
      8 : cds_Dadosmesano.AsString := 'Setembro/' + IntToStr(vYear);
      9 : cds_Dadosmesano.AsString := 'Outubro/' + IntToStr(vYear);
      10 : cds_Dadosmesano.AsString := 'Novembro/' + IntToStr(vYear);
      11 : cds_Dadosmesano.AsString := 'Dezembro/' + IntToStr(vYear);
    end;
    cds_Dados.Post;
  end;
end;

procedure TF_RelHistoricoAluno.dlk_AlunoClick(Sender: TObject);
begin
  edt_CodAlu.Text := dlk_Aluno.KeyValue;
end;

procedure TF_RelHistoricoAluno.dlk_AlunoKeyPress(Sender: TObject;
  var Key: Char);
begin
  edt_CodAlu.Text := dlk_Aluno.KeyValue;
end;

procedure TF_RelHistoricoAluno.edt_CodAluExit(Sender: TObject);
begin
  if Trim(edt_CodAlu.Text) <> EmptyStr then
    dlk_Aluno.KeyValue := StrToInt(edt_CodAlu.Text);
end;

procedure TF_RelHistoricoAluno.edt_CodAluKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edt_CodAlu.Text) <> EmptyStr then
    dlk_Aluno.KeyValue := StrToInt(edt_CodAlu.Text);
end;

procedure TF_RelHistoricoAluno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TF_RelHistoricoAluno.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    Close;
end;

procedure TF_RelHistoricoAluno.FormShow(Sender: TObject);
begin
  iqr_Alunos.Close;
  iqr_Alunos.Open;
  iqr_Alunos.FetchAll;
end;

procedure TF_RelHistoricoAluno.rba_1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rla_Aluno.Caption := 'Aluno: ' + dlk_Aluno.Text;
  RIM_LOGO.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\logorel.bmp');
end;

end.
