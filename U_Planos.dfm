inherited F_Planos: TF_Planos
  Caption = 'Planos'
  ClientHeight = 302
  ClientWidth = 908
  Constraints.MinHeight = 300
  Constraints.MinWidth = 894
  ExplicitWidth = 914
  ExplicitHeight = 327
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 908
    ExplicitWidth = 908
  end
  inherited Panel2: TPanel
    Width = 908
    ExplicitWidth = 908
  end
  inherited DBG_Cons: TDBGrid
    Width = 908
    Columns = <
      item
        Expanded = False
        FieldName = 'PLA_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLA_DESC'
        Width = 342
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLA_VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLA_VENC'
        Visible = True
      end>
  end
  inherited GroupBox: TGroupBox
    Width = 908
    Height = 96
    ExplicitWidth = 908
    ExplicitHeight = 96
    object Label1: TLabel
      Left = 17
      Top = 24
      Width = 43
      Height = 18
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 157
      Top = 24
      Width = 62
      Height = 18
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 647
      Top = 24
      Width = 32
      Height = 18
      Caption = 'Valor'
      FocusControl = DBEdit3
    end
    object lab_DtVenc: TLabel
      Left = 787
      Top = 24
      Width = 76
      Height = 18
      Caption = 'Vencimento'
      FocusControl = ded_DtVenc
    end
    object DBEdit1: TDBEdit
      Left = 17
      Top = 46
      Width = 134
      Height = 24
      Ctl3D = False
      DataField = 'PLA_CODIGO'
      DataSource = DS
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 157
      Top = 46
      Width = 484
      Height = 24
      Ctl3D = False
      DataField = 'PLA_DESC'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 647
      Top = 46
      Width = 134
      Height = 24
      Ctl3D = False
      DataField = 'PLA_VALOR'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 2
    end
    object ded_DtVenc: TDBEdit
      Left = 787
      Top = 45
      Width = 94
      Height = 24
      Ctl3D = False
      DataField = 'PLA_VENC'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 3
    end
  end
  inherited rpt_Padrao: TRLReport
    Left = 647
    Top = 379
    Margins.BottomMargin = 13.000000000000000000
    Title = 'Relat'#243'rio de Planos'
    ExplicitLeft = 647
    ExplicitTop = 379
    inherited rba_Titulo: TRLBand
      inherited rla_1: TRLLabel
        Width = 36
        Caption = 'C'#243'digo'
        ExplicitWidth = 36
      end
      object rla_2: TRLLabel
        Left = 90
        Top = 0
        Width = 52
        Height = 14
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_3: TRLLabel
        Left = 367
        Top = 0
        Width = 29
        Height = 14
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_4: TRLLabel
        Left = 607
        Top = 0
        Width = 60
        Height = 14
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    inherited rba_Detalhes: TRLBand
      inherited rdt_1: TRLDBText
        Left = -7
        Width = 70
        Alignment = taCenter
        DataField = 'PLA_CODIGO'
        ExplicitLeft = -7
        ExplicitWidth = 70
      end
      object rdt_2: TRLDBText
        Left = 90
        Top = 1
        Width = 52
        Height = 14
        DataField = 'PLA_DESC'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_2
        ParentFont = False
      end
      object rdt_3: TRLDBText
        Left = 367
        Top = 1
        Width = 29
        Height = 14
        DataField = 'PLA_VALOR'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_3
        ParentFont = False
      end
      object rdt_4: TRLDBText
        Left = 607
        Top = 1
        Width = 60
        Height = 14
        Alignment = taCenter
        DataField = 'PLA_VENC'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_4
        ParentFont = False
      end
    end
  end
  inherited QPadrao: TIBQuery
    OnDeleteError = QPadraoDeleteError
    OnNewRecord = QPadraoNewRecord
    SQL.Strings = (
      'select '
      #9'pla_codigo,'
      #9'pla_desc,'
      #9'pla_valor,'
      #9'pla_venc'
      'from'
      #9'planos')
    object QPadraoPLA_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PLA_CODIGO'
      Origin = '"PLANOS"."PLA_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object QPadraoPLA_DESC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PLA_DESC'
      Origin = '"PLANOS"."PLA_DESC"'
      Required = True
      Size = 255
    end
    object QPadraoPLA_VALOR: TIBBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor'
      FieldName = 'PLA_VALOR'
      Origin = '"PLANOS"."PLA_VALOR"'
      Required = True
      DisplayFormat = '#,0.00'#13#10
      Precision = 18
      Size = 2
    end
    object QPadraoPLA_VENC: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Vencimento'
      FieldName = 'PLA_VENC'
      Origin = '"PLANOS"."PLA_VENC"'
      Required = True
    end
  end
  inherited UpdSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PLA_CODIGO,'
      '  PLA_DESC,'
      '  PLA_VALOR,'
      '  PLA_VENC'
      'from planos '
      'where'
      '  PLA_CODIGO = :PLA_CODIGO')
    ModifySQL.Strings = (
      'update planos'
      'set'
      '  PLA_CODIGO = :PLA_CODIGO,'
      '  PLA_DESC = :PLA_DESC,'
      '  PLA_VALOR = :PLA_VALOR,'
      '  PLA_VENC = :PLA_VENC'
      'where'
      '  PLA_CODIGO = :OLD_PLA_CODIGO')
    InsertSQL.Strings = (
      'insert into planos'
      '  (PLA_CODIGO, PLA_DESC, PLA_VALOR, PLA_VENC)'
      'values'
      '  (:PLA_CODIGO, :PLA_DESC, :PLA_VALOR, :PLA_VENC)')
    DeleteSQL.Strings = (
      'delete from planos'
      'where'
      '  PLA_CODIGO = :OLD_PLA_CODIGO')
  end
  inherited cmdSql: TIBSQL
    SQL.Strings = (
      'select coalesce(max(pla_codigo),0) as pla_codigo from planos'
      '')
  end
end
