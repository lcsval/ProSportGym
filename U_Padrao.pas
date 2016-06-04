unit U_Padrao;

interface

uses
  {$IFDEF VER210} //Versão 2010
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, Grids, DBGrids, StdCtrls, DB, ComCtrls,
  IBCustomDataSet, IBUpdateSQL, dbctrls, Menus, ToolWin, IniFiles, IBQuery,
  IBSQL, Mask, RLReport;
  {$ELSE}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBCustomDataSet,
  IBQuery, Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, IBUpdateSQL, IBSQL, Vcl.ComCtrls, IniFiles, ToolWin, MidasLib,
  RLReport, Dialogs, DB, Menus, StdCtrls, Grids, DBGrids, Controls, Buttons,
  Classes, ExtCtrls;
 {$ENDIF} //Versao XE2

type
  TF_Padrao = class(TForm)
    Panel1: TPanel;
    BtnProcurar: TSpeedButton;
    BtnFechar: TSpeedButton;
    Panel2: TPanel;
    BtnInserir: TSpeedButton;
    BtnAlterar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    DS: TDataSource;
    BtnGravar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    PopupMenu: TPopupMenu;
    Crescente1: TMenuItem;
    Decrescente1: TMenuItem;
    QPadrao: TIBQuery;
    DBG_Cons: TDBGrid;
    BtnAtualizar: TSpeedButton;
    UpdSQL: TIBUpdateSQL;
    cmdSql: TIBSQL;
    GroupBox: TGroupBox;
    btnProcAv: TSpeedButton;
    BtnRelatorio: TSpeedButton;
    rpt_Padrao: TRLReport;
    RBA_CABECALHO: TRLBand;
    RIM_LOGO: TRLImage;
    rsy_Titulo1: TRLSystemInfo;
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
    rba_Detalhes: TRLBand;
    rla_1: TRLLabel;
    rdt_1: TRLDBText;
    btnCSV: TSpeedButton;
    SaveDialog: TSaveDialog;
    rla_ImpressoPor: TRLLabel;
    RLBand1: TRLBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnProcurarClick(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBG_ConsMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Crescente1Click(Sender: TObject);
    procedure Decrescente1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure QPadraoAfterOpen(DataSet: TDataSet);
    procedure QPadraoAfterScroll(DataSet: TDataSet);
    procedure btnProcAvClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure RBA_CABECALHOBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure btnCSVClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure CriaForm(Query :TIBQuery);
    Procedure ProcessaSQL(Query : TIBQuery);
 		Procedure FormataCores;
    Procedure ExportToCSV(const aGrid : TDBGrid; const FileName : String);
 		Function Cores(Field: TField): Longint;
    Function Procurar(Caption,Sql : String) : Integer;
    Function SoNumeroLetra(Value: String): String;
  end;

var
  F_Padrao: TF_Padrao;
  Form : TForm;
  PageControl: TPageControl;
  vsSql : String;
  vsSqlAbrir : String;
  aDefFlags : Array of Array of string;

implementation

uses U_DM, U_ProcAv, U_Principal;

{$R *.dfm}

procedure TF_Padrao.BtnAlterarClick(Sender: TObject);
begin
  if QPadrao.Active then
    if Qpadrao.RecordCount > 0 then
      QPadrao.Edit;
end;

procedure TF_Padrao.BtnAtualizarClick(Sender: TObject);
begin
  QPadrao.Close;
  QPadrao.SQL.Clear;
  QPadrao.SQL.Text := vsSql;
  QPadrao.Open;
end;

procedure TF_Padrao.BtnCancelarClick(Sender: TObject);
begin
  if QPadrao.Active then
    QPadrao.Cancel;
end;

procedure TF_Padrao.btnCSVClick(Sender: TObject);
begin
  if QPadrao.RecordCount > 0 then
  begin
    if not SaveDialog.Execute then
      Exit;

    ExportToCSV(DBG_Cons,SaveDialog.FileName);
  end
  else
    Application.MessageBox('Não existem dados para serem exportados!','Atenção',MB_OK + MB_ICONWARNING);
end;

procedure TF_Padrao.BtnExcluirClick(Sender: TObject);
begin
  if QPadrao.Active then
    if QPadrao.RecordCount > 0 then
      if Application.MessageBox('Tem certeza que deseja excluir o registro selecionado?','ImoBox',MB_YESNO + MB_ICONQUESTION) = IDYES then
        QPadrao.Delete;
end;

procedure TF_Padrao.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Padrao.BtnGravarClick(Sender: TObject);
begin
  if QPadrao.Active then
    QPadrao.Post;

  DM.Transacao.CommitRetaining;
  QPadrao.Refresh;
end;

procedure TF_Padrao.BtnInserirClick(Sender: TObject);
var
  i : Integer;
begin
  if QPadrao.Active then
    QPadrao.Insert;

  BtnInserir.Enabled := False;
  BtnAlterar.Enabled := False;
  BtnGravar.Enabled := True;
  BtnCancelar.Enabled := True;
  BtnExcluir.Enabled := False;
  BtnAtualizar.Enabled := False;

  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TDBEdit) then
    begin
      if TDBEdit(Components[i]).TabOrder = 1 then
        TDBEdit(Components[i]).SetFocus;
    end;
  end;
end;

procedure TF_Padrao.btnProcAvClick(Sender: TObject);
var
  x : Integer;
  vTemDate : Boolean;
begin
  vTemDate := False;
  for x:= 0 to QPadrao.FieldCount - 1 do
  begin
    if ((QPadrao.Fields[x].DataType = ftDate) or
        (QPadrao.Fields[x].DataType = ftDateTime)) and
        (QPadrao.Fields[x].Visible) then
      vTemDate := True;
  end;

  if vTemDate then
  begin
    Application.CreateForm(TF_ProcAv,F_ProcAv);
    F_ProcAv.Query := QPadrao;
    F_ProcAv.vsSql := vsSql;
    F_ProcAv.ShowModal;
  end
  else
    Application.MessageBox('Não existem parâmetros necessários para a pesquisa avançada!','Atenção',MB_OK + MB_ICONWARNING);
end;

procedure TF_Padrao.BtnProcurarClick(Sender: TObject);
begin
  QPadrao.DisableControls;
  CriaForm(QPadrao);
end;

procedure TF_Padrao.BtnRelatorioClick(Sender: TObject);
begin
  if QPadrao.RecordCount > 0 then
    rpt_Padrao.Preview()
  else
    Application.MessageBox('Não existem dados para serem impressos!','Atenção',MB_OK + MB_ICONWARNING);
end;

function TF_Padrao.Cores(Field: TField): Longint;
begin
  Result := clWindow;

  case Field.FieldKind of
    fkData: Result := clWindow;
    fkCalculated: Result := $00FFFFE6;
    fkLookup: Result := $00C8DAFF;
    fkInternalCalc: Result := $00E6FFE6;
  end;

  if ( Field.Required ) then Result := $00B9FFFF; // Amarelo
  if ( Field.ReadOnly ) then Result := $00E0E0E0; // Cinza
end;

procedure TF_Padrao.Crescente1Click(Sender: TObject);
begin
  QPadrao.Close;
  QPadrao.SQL.Clear;
  QPadrao.SQL.Add( vsSql + ' ORDER BY ' + DBG_Cons.SelectedField.FieldName);
  QPadrao.Open;
end;

Procedure TF_Padrao.CriaForm(Query : TIBQuery);
var
	x, i: Integer;
  Panel: TPanel;
  Button: TButton;
  Label1: TLabel;
  MskEdit1: TMaskEdit;
  TabSheet : TTabSheet;
  Combo1: TComboBox;
begin
	{ cria TForm }
	Form := TForm.Create(Self);
  Form.BorderStyle := bsDialog;
  Form.Width := 380;
  Form.Height := 280;
  Form.Top := Trunc((Screen.Height - Form.Height) / 2);
  Form.Left := Trunc((Screen.Width - Form.Width) / 2);
  Form.Caption := Caption;
  Form.FormStyle := fsStayOnTop;
  Form.Position := poScreenCenter;
  Form.Caption := 'Pesquisar';

	{ cria TPageControl }
  PageControl := TPageControl.Create(Form);
  PageControl.Align := alClient;
  PageControl.HotTrack := True;
  PageControl.MultiLine := True;
  PageControl.TabStop := False;
  Form.InsertControl(PageControl);

	{ cria TPanel }
  Panel := TPanel.Create(Form);
  Panel.Height := 41;
  Panel.Align := alBottom;
  Form.InsertControl(Panel);

	{ cria TButton - Procura }
  Button := TButton.Create(Form);
  Button.Left := 118;
  Button.Top := 8;
  Button.Default := True;
  Button.Caption := 'Procurar';
	Button.ModalResult := mrOk;
  Button.TabStop := False;
  Panel.InsertControl(Button);

	{ cria TButton - Cancelar }
  Button := TButton.Create(Form);
  Button.Left := 202;
  Button.Top := 8;
  Button.Cancel := True;
  Button.Caption := 'Cancelar';
	Button.ModalResult := mrCancel;
  Button.TabStop := False;
  Panel.InsertControl(Button);

  for x:= 0 to Query.FieldCount - 1 do
  begin
    if ((Query.Fields[x].DataType in [ftString, ftWideString]) or
        (Query.Fields[x].DataType = ftInteger) or
        (Query.Fields[x].DataType = ftSmallint) or
        (Query.Fields[x].DataType = ftBlob) or
        (Query.Fields[x].DataType = ftMemo)) and
        (Query.Fields[x].Visible) then
    begin
      { cria TTabSheet - um para cada parametro }
      TabSheet := TTabSheet.Create(PageControl);
      TabSheet.Name := 'Tab_' + Query.Fields[x].FieldName;
      TabSheet.Caption := Query.Fields[x].DisplayLabel;
      TabSheet.PageControl := PageControl;

      { cria TLabel - um para cada parametro }
      Label1 := TLabel.Create(TabSheet);
      Label1.Top := 8;
      Label1.Left := 8;
      Label1.Caption := Query.Fields[x].DisplayLabel;
      TabSheet.InsertControl(Label1);

      //Controlar o gettext e fazer um combo para consulta nos campos com vários items.
      if Query.Fields[x].Tag = 1 then //Combos
      begin
        Combo1 := TComboBox.Create(TabSheet);
        Combo1.Top := 25;
        Combo1.Left := 8;
        Combo1.Name := Query.Fields[x].FieldName;
        Combo1.Width := 180;
        Combo1.Style := csDropDownList;

        if Query.Fields[x].DataType in [ftString, ftWideString, ftBlob, ftMemo] then //Tipo String
          Combo1.Tag := 1;

        if Query.Fields[x].DataType in [ftInteger, ftSmallint] then //Tipo Inteiro
          Combo1.Tag := 2;

        TabSheet.InsertControl(Combo1);

        for i := 0 to High(aDefFlags) do
        begin
          if Query.Fields[x].FieldName = aDefFlags[i,0] then
            Combo1.Items.Add(aDefFlags[i,1]);
        end;
      end
      else
      begin
        { cria TEdit - um para cada parametro }
        MskEdit1 := TMaskEdit.Create(TabSheet);
        MskEdit1.Top := 25;
        MskEdit1.Left := 8;
        MskEdit1.Width := 180;
        MskEdit1.Name := Query.Fields[x].FieldName;
        MskEdit1.Text := '';
        MskEdit1.EditMask := Query.Fields[x].EditMask;

        if Query.Fields[x].DataType in [ftString, ftWideString, ftBlob, ftMemo] then //tipo String
          MskEdit1.Tag := 1;

        if Query.Fields[x].DataType in [ftInteger, ftSmallint] then //Tipo inteiro
          MskEdit1.Tag := 2;

        TabSheet.InsertControl(MskEdit1);
      end;
    end
  end;

  if ( Form.ShowModal = mrOK ) then
  	ProcessaSQL(Query);
end;

procedure TF_Padrao.DBG_ConsMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
	Point: TPoint;
begin
  with TDBGrid(Sender) do
    if (Button = mbRight ) then
    begin
			// aceita apenas cliques no titulo
      if ( MouseCoord(X, Y).Y <> 0 ) then Exit;

			// verifica se existe uma coluna selecionada
      if ( MouseCoord(X, Y).X = -1 ) then Exit;

			// encontra as coordenadas do clique do mouse em relacao a tela
			Point := ClientOrigin;
			Point.x := Point.x + X;
			Point.y := Point.y + Y;

			// grava o numero da coluna no tag do item de menu
			PopupMenu.Tag := MouseCoord(X, Y).X - 1;
			PopupMenu.Popup(Point.x, Point.y);
    end;
end;

procedure TF_Padrao.Decrescente1Click(Sender: TObject);
begin
  QPadrao.Close;
  QPadrao.SQL.Clear;
  QPadrao.SQL.Add( vsSql + ' ORDER BY ' + DBG_Cons.SelectedField.FieldName + ' DESC');
  QPadrao.Open;
end;

procedure TF_Padrao.DSStateChange(Sender: TObject);
begin
  if Ds.State in [dsEdit,dsInsert] then
  begin
    BtnInserir.Enabled := False;
    BtnAlterar.Enabled := False;
    BtnGravar.Enabled := True;
    BtnExcluir.Enabled := False;
    BtnAtualizar.Enabled := False;
    BtnCancelar.Enabled := True;
    BtnProcurar.Enabled := False;
    btnProcAv.Enabled := False;
    BtnRelatorio.Enabled := False;
    btnCSV.Enabled := False;
  end;

  if Ds.State in [dsBrowse] then
  begin
    BtnInserir.Enabled := True;
    BtnAlterar.Enabled := True;
    BtnGravar.Enabled := False;
    BtnExcluir.Enabled := True;
    BtnAtualizar.Enabled := True;
    BtnCancelar.Enabled := False;
    BtnProcurar.Enabled := True;
    btnProcAv.Enabled := True;
    BtnRelatorio.Enabled := True;
    btnCSV.Enabled := True;
  end;
end;

procedure TF_Padrao.ExportToCSV(const aGrid: TDBGrid; const FileName: String);
Var
  I, J : Integer;
  SavePlace : TBookmark;
  Table : TStrings;
  HeadTable : String;
  LineTable : String;
  First : Boolean;
Begin
  HeadTable := '';
  LineTable := '';
  Table := TStringList.Create;
  First := True;

  Try
    For I := 0 To Pred(aGrid.Columns.Count) Do
      If aGrid.Columns[I].Visible Then
        If First Then
        Begin
          // Use the text from the grid, in case it has been set programatically
          // E.g., we prefer to show "Date/time" than "from_unixtime(activity.time_stamp, "%D %b %Y  %l:%i:%S")"
          //HeadTable := HeadTable + aGrid.Columns[I].FieldName;
          HeadTable := HeadTable + DBG_Cons.Columns[i].Title.Caption + ';'; // Previous separated wth semi-colon, not comma! (global)
          First := False;
        End
        Else
          HeadTable := HeadTable + DBG_Cons.Columns[i].Title.Caption + ';';

    Delete(HeadTable, Length(HeadTable), 1);  // Remove the superfluous trailing comma
    Table.Add(HeadTable);
    First := True;

    // with selection of rows
    If aGrid.SelectedRows.Count > 0 Then
    Begin
      For i := 0 To aGrid.SelectedRows.Count - 1 Do
      Begin
        aGrid.DataSource.Dataset.GotoBookmark(pointer(aGrid.SelectedRows.Items[i]));
        For j := 0 To aGrid.Columns.Count - 1 Do
          If aGrid.Columns[J].Visible Then
            If First Then
            Begin
              lineTable := lineTable + aGrid.Fields[J].AsString;
              First := False;
            End
            Else
              lineTable := lineTable + ';' + aGrid.Fields[J].AsString;

        Delete(LineTable, Length(LineTable), 1);  // Remove the superfluous trailing comma
        Table.Add(LineTable);
        LineTable := '';
        First := True;
      End;
    End
    Else //no selection
    Begin
      SavePlace := aGrid.DataSource.Dataset.GetBookmark;
      aGrid.DataSource.Dataset.First;

      Try
        While Not aGrid.DataSource.Dataset.Eof Do
        Begin
          For I := 0 To aGrid.Columns.Count - 1 Do
            If aGrid.Columns[I].Visible Then
              If First Then
              Begin
                lineTable := lineTable + aGrid.Fields[I].AsString;
                First := False;
              End
              Else
                lineTable := lineTable + ';' + aGrid.Fields[I].AsString;


          Delete(LineTable, Length(LineTable), 1);  // Remove the superfluous trailing comma
          Table.Add(LineTable);
          LineTable := '';
          aGrid.DataSource.Dataset.Next;
          First := True;
        End;

        aGrid.DataSource.Dataset.GotoBookmark(SavePlace);
      Finally
        aGrid.DataSource.Dataset.FreeBookmark(SavePlace);
      End;
    End;
    Table.SaveToFile(FileName);
  Finally
    Table.Free;
  End;
end;

procedure TF_Padrao.FormataCores;
var
	i: Integer;
begin
	// formata as cores do grid
  for i := 0 to DBG_Cons.Columns.Count - 1 do
    DBG_Cons.Columns[i].Color := Cores(DBG_Cons.Columns[i].Field);
  // formata as cores dos controles
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TDBEdit) then
      TDBEdit(Components[i]).Color := Cores(TDBEdit(Components[i]).Field);
    if (Components[i] is TDBLookupComboBox) then
      TDBLookupComboBox(Components[i]).Color := Cores(TDBLookupComboBox(Components[i]).Field);
    if (Components[i] is TDBLookupListBox) then
      TDBLookupListBox(Components[i]).Color := Cores(TDBLookupListBox(Components[i]).Field);
    if (Components[i] is TDBComboBox) then
      TDBComboBox(Components[i]).Color := Cores(TDBComboBox(Components[i]).Field);
    if (Components[i] is TDBListBox) then
      TDBListBox(Components[i]).Color := Cores(TDBListBox(Components[i]).Field);
    if (Components[i] is TDBMemo) then
      TDBMemo(Components[i]).Color := Cores(TDBMemo(Components[i]).Field);
    if (Components[i] is TDBRichEdit) then
      TDBRichEdit(Components[i]).Color := Cores(TDBRichEdit(Components[i]).Field);
  end;
end;

procedure TF_Padrao.FormClose(Sender: TObject; var Action: TCloseAction);
var
	IniFile: TIniFile;
begin
	// abre o arquivo ini
	IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\forms.ini');
  if ( IniFile.FileName <> '' ) then
  begin
		// grava as posicoes da janela
    if ( WindowState in [wsNormal, wsMinimized] ) then
    begin
		  IniFile.WriteInteger(Name, 'Top', Top);
		  IniFile.WriteInteger(Name, 'Left', Left);
		  IniFile.WriteInteger(Name, 'Width', Width);
		  IniFile.WriteInteger(Name, 'Height', Height);
    end;

		// grava o estado da janela
    case WindowState of
		  wsNormal: IniFile.WriteInteger(Name, 'State', 0);
		  wsMinimized: IniFile.WriteInteger(Name, 'State', 1);
		  wsMaximized: IniFile.WriteInteger(Name, 'State', 2);
    end;
  end;
  Action := caFree;
end;

procedure TF_Padrao.FormCreate(Sender: TObject);
begin
  QPadrao.Close;
  QPadrao.SQL.Clear;
  QPadrao.SQL.Add(vsSqlAbrir);
  QPadrao.Open;
end;

procedure TF_Padrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	// processa as teclas de atalho
  if (Key = VK_F3) then BtnProcurar.Click; //Procurar
  if (Key = VK_F3) and (ssCtrl in Shift) then btnProcAv.Click; //Procurar Avançado
  if (Key = VK_F5 ) then BtnAtualizar.Click; //Atualizar
  if (Key = VK_ESCAPE ) then BtnFechar.Click; //Fechar

  if QPadrao.State in [dsEdit,dsInsert] then
  begin
    if (Key = Ord('S')) and (ssCtrl in Shift) then BtnGravar.Click; //Gravar
    if (Key = Ord('I')) and (ssCtrl in Shift) then BtnInserir.Click; //Inserir
    if (Key = Ord('A')) and (ssCtrl in Shift) then BtnAlterar.Click; //Alterar
    if (Key = VK_DELETE) and (ssCtrl in Shift) then BtnExcluir.Click; //Excluir
    if (Key = VK_ESCAPE) and (ssCtrl in Shift) then BtnCancelar.Click; //Cancelar
  end;
end;

procedure TF_Padrao.FormShow(Sender: TObject);
var
	IniFile: TIniFile;
begin
	// abre o arquivo ini
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\forms.ini');

  if ( IniFile.FileName <> '' ) then
  begin
		// obtem as posicoes da janela
	  Top := IniFile.ReadInteger(Name, 'Top', Top);
	  Left := IniFile.ReadInteger(Name, 'Left', Left);
	  Width := IniFile.ReadInteger(Name, 'Width', Width);
	  Height := IniFile.ReadInteger(Name, 'Height', Height);
	  // obtem o estado da janela
    case IniFile.ReadInteger(Name, 'State', -1) of
	  	0: WindowState := wsNormal;
	    1: WindowState := wsMinimized;
	    2: WindowState := wsMaximized;
    end;
  end;
end;

Procedure TF_Padrao.ProcessaSQL(Query : TIBQuery);
var
	i, x, y : Integer;
  vWhere, Texto : String;
begin
  vWhere := '';
  for I := 0 to PageControl.PageCount - 1 do //Percorre todos os componentes dentro do pagecontrol
  begin
    PageControl.ActivePageIndex := i;

    for x := 0 to PageControl.ActivePage.ComponentCount - 1 do //Percorre todos os componentes dentro do pagecontrol
    begin
      if (PageControl.ActivePage.Components[x] is TMaskEdit) then //Se o componente for um maskedit
      begin
        if Trim(TMaskEdit(PageControl.ActivePage.Components[x]).Text) <> EmptyStr then // Se tiver preenchido
        begin
          Texto := '';

          if PageControl.ActivePage.Components[x].Tag = 1 then //Tipo String
            Texto := PageControl.ActivePage.Components[x].Name + ' LIKE ' + QuotedStr('%' + TMaskEdit(PageControl.ActivePage.Components[x]).Text + '%');

          if PageControl.ActivePage.Components[x].Tag = 2 then //Tipo Inteiro
            Texto := PageControl.ActivePage.Components[x].Name + ' = ' + TMaskEdit(PageControl.ActivePage.Components[x]).Text;
        end;
      end;

      if (PageControl.ActivePage.Components[x] is TComboBox) then
      begin
        for y := 0 to High(aDefFlags) do
        begin
          if TComboBox(PageControl.ActivePage.Components[x]).Text = aDefFlags[y,1] then
          begin
            Texto := PageControl.ActivePage.Components[x].Name + ' = ' + QuotedStr(aDefFlags[y,2]);
            Break;
          end;
        end;
      end;
    end;

    if Trim(vWhere) <> EmptyStr then
    begin
      if not (Pos(Texto, vWhere) > 0) then
        vWhere := vWhere + ' AND ' + Texto
    end
    else
    begin
      if not (Pos(Texto, vWhere) > 0) then
        vWhere := Texto;
    end;
  end;

  if Trim(vWhere) = EmptyStr then
  begin
    Application.MessageBox('É necessário preencher os parâmetros para efetuar uma consulta!','Aviso', MB_OK + MB_ICONWARNING);
    Abort;
  end;

  try
    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add(vsSql + ' WHERE ' + vWhere);
    Query.Open;
  except
    on E : Exception do
      Application.MessageBox(Pchar('Ocorreu um erro ao realizar a consulta!' + #13 + E.Message), 'Atenção', MB_OK + MB_ICONWARNING);
  end;

  Query.EnableControls;
end;

function TF_Padrao.Procurar(Caption, Sql: String): Integer;
var
  Form : TForm;
  TabSheet : TTabSheet;
  Panel: TPanel;
  Button: TButton;
  Grid : TDBGrid;
  DS : TDataSource;
  Qry : TIBQuery;
begin
	{ cria TForm }
	Form := TForm.Create(Self);
  Form.BorderStyle := bsDialog;
  Form.Width := 400;
  Form.Height := 250;
  Form.Top := Trunc((Screen.Height - Form.Height) / 2);
  Form.Left := Trunc((Screen.Width - Form.Width) / 2);
  Form.Caption := Caption;
  Form.FormStyle := fsStayOnTop;
  Form.Position := poScreenCenter;

	{ cria TPageControl }
  PageControl := TPageControl.Create(Form);
  PageControl.Align := alClient;
  PageControl.HotTrack := True;
  PageControl.MultiLine := True;
  PageControl.TabStop := False;
  Form.InsertControl(PageControl);

	{ cria TPanel }
  Panel := TPanel.Create(Form);
  Panel.Height := 41;
  Panel.Align := alBottom;
  Form.InsertControl(Panel);

	{ cria TButton - Transportar }
  Button := TButton.Create(Form);
  Button.Left := 115;
  Button.Top := 8;
  Button.Default := True;
  Button.Caption := 'Transportar';
	Button.ModalResult := mrOk;
  Button.TabStop := False;
  Panel.InsertControl(Button);

	{ cria TButton - Cancela }
  Button := TButton.Create(Form);
  Button.Left := 200;
  Button.Top := 8;
  Button.Cancel := True;
  Button.Caption := 'Cancelar';
	Button.ModalResult := mrCancel;
  Button.TabStop := False;
  Panel.InsertControl(Button);

  { cria Grid - Cancela }
  Grid := TDBGrid.Create(Form);
  Grid.Align := alClient;
  PageControl.InsertControl(Grid);

  { Cria Query }
  Qry := TIBQuery.Create(Form);
  Qry.Database := DM.Conexao;
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add(Sql);
  Qry.Open;

  { Cria DS/ Passa o Query pra ele, e Passa o DS pro Grid. }
  DS := TDataSource.Create(Form);
  DS.DataSet := Qry;
  DS.AutoEdit := False;

  Grid.DataSource := DS;
  Grid.ReadOnly := True;

  if ( Form.ShowModal = mrOK ) then
    Result := Qry.FieldByName('CODIGO').AsInteger
  else
    Result := 0;
end;

procedure TF_Padrao.QPadraoAfterOpen(DataSet: TDataSet);
begin
  FormataCores;
end;

procedure TF_Padrao.QPadraoAfterScroll(DataSet: TDataSet);
begin
  if QPadrao.RecordCount > 0 then
  begin
    BtnInserir.Enabled := True;
    BtnAlterar.Enabled := True;
    BtnExcluir.Enabled := True;
    BtnAtualizar.Enabled := True;
  end;
end;

procedure TF_Padrao.RBA_CABECALHOBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RIM_LOGO.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) + '\logorel.bmp');
  rla_ImpressoPor.Caption := 'Impresso por: ' + F_Principal.NomeUsuario;
end;

function TF_Padrao.SoNumeroLetra(Value: String): String;
const
  Number: set of '0'..'9' = ['0'..'9'];
  Letra: set of 'A'..'Z' = ['A'..'Z'];
var
  i : Integer;
begin
  Result := '';
  for i := 1 to Length(Value) do
    if (Value[i] in Number) or (Value[i] in Letra) then
                Result := Result + Value[i];
  if ( Result = '' ) then
    Result := '0';
end;

end.
