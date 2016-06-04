inherited F_Cargo: TF_Cargo
  Top = 206
  Caption = 'Cadastro de Cargos'
  ClientHeight = 302
  ClientWidth = 898
  Constraints.MinHeight = 330
  Constraints.MinWidth = 904
  ExplicitWidth = 904
  ExplicitHeight = 330
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 898
    ExplicitWidth = 898
  end
  inherited Panel2: TPanel
    Width = 898
    ExplicitWidth = 898
    inherited BtnExcluir: TSpeedButton
      ExplicitLeft = 407
    end
  end
  inherited DBG_Cons: TDBGrid
    Width = 898
    Columns = <
      item
        Expanded = False
        FieldName = 'CAR_CODIGO'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAR_NOME'
        Width = 334
        Visible = True
      end>
  end
  inherited GroupBox: TGroupBox
    Width = 898
    Height = 96
    ExplicitWidth = 898
    ExplicitHeight = 96
    object Label2: TLabel
      Left = 114
      Top = 26
      Width = 39
      Height = 18
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label1: TLabel
      Left = 10
      Top = 26
      Width = 43
      Height = 18
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object DBEdit2: TDBEdit
      Left = 114
      Top = 50
      Width = 391
      Height = 24
      Ctl3D = False
      DataField = 'CAR_NOME'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 10
      Top = 50
      Width = 98
      Height = 24
      Ctl3D = False
      DataField = 'CAR_CODIGO'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  inherited rpt_Padrao: TRLReport
    Top = 257
    Margins.BottomMargin = 13.000000000000000000
    Title = 'Relat'#243'rio de Cargo'
    ExplicitTop = 257
    inherited rba_Titulo: TRLBand
      inherited rla_1: TRLLabel
        Width = 36
        Caption = 'C'#243'digo'
        ExplicitWidth = 36
      end
      object rla_2: TRLLabel
        Left = 79
        Top = 1
        Width = 30
        Height = 14
        Caption = 'Nome'
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
        Left = -8
        Width = 72
        Alignment = taCenter
        DataField = 'CAR_CODIGO'
        ExplicitLeft = -8
        ExplicitWidth = 72
      end
      object rdt_2: TRLDBText
        Left = 79
        Top = 1
        Width = 30
        Height = 14
        DataField = 'CAR_NOME'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_2
        ParentFont = False
      end
    end
  end
  inherited QPadrao: TIBQuery
    OnDeleteError = QPadraoDeleteError
    OnNewRecord = QPadraoNewRecord
    SQL.Strings = (
      'select'
      '    Car_codigo,'
      '    car_nome'
      'from'
      '    cargo')
    object QPadraoCAR_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CAR_CODIGO'
      Origin = '"CARGO"."CAR_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object QPadraoCAR_NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'CAR_NOME'
      Origin = '"CARGO"."CAR_NOME"'
      Required = True
      Size = 100
    end
  end
  inherited UpdSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CAR_CODIGO,'
      '  CAR_NOME'
      'from cargo '
      'where'
      '  CAR_CODIGO = :CAR_CODIGO')
    ModifySQL.Strings = (
      'update cargo'
      'set'
      '  CAR_CODIGO = :CAR_CODIGO,'
      '  CAR_NOME = :CAR_NOME'
      'where'
      '  CAR_CODIGO = :OLD_CAR_CODIGO')
    InsertSQL.Strings = (
      'insert into cargo'
      '  (CAR_CODIGO, CAR_NOME)'
      'values'
      '  (:CAR_CODIGO, :CAR_NOME)')
    DeleteSQL.Strings = (
      'delete from cargo'
      'where'
      '  CAR_CODIGO = :OLD_CAR_CODIGO')
  end
  inherited cmdSql: TIBSQL
    SQL.Strings = (
      'select coalesce(max(car_codigo),0) as car_codigo from cargo')
  end
end
