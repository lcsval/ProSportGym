inherited F_Cidade: TF_Cidade
  Caption = 'Cadastro de Cidades'
  ClientHeight = 312
  ClientWidth = 908
  Constraints.MinHeight = 330
  Constraints.MinWidth = 898
  ExplicitWidth = 914
  ExplicitHeight = 340
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 908
    ExplicitWidth = 908
    inherited BtnProcurar: TSpeedButton
      ExplicitLeft = 139
      ExplicitTop = -4
    end
    inherited BtnAtualizar: TSpeedButton
      ExplicitTop = 2
    end
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
        FieldName = 'CID_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_NOME'
        Width = 305
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_UF_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF_NOME'
        Width = 71
        Visible = True
      end>
  end
  inherited GroupBox: TGroupBox
    Width = 908
    Height = 106
    ExplicitWidth = 908
    ExplicitHeight = 106
    object Label1: TLabel
      Left = 10
      Top = 28
      Width = 43
      Height = 18
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 535
      Top = 28
      Width = 18
      Height = 18
      Caption = 'UF'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 87
      Top = 28
      Width = 39
      Height = 18
      Caption = 'Nome'
      FocusControl = DBEdit3
    end
    object btn_selUF: TSpeedButton
      Left = 705
      Top = 52
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = btn_selUFClick
    end
    object DBEdit1: TDBEdit
      Left = 10
      Top = 52
      Width = 71
      Height = 24
      Ctl3D = False
      DataField = 'CID_CODIGO'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 535
      Top = 52
      Width = 38
      Height = 24
      Ctl3D = False
      DataField = 'CID_UF_CODIGO'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 87
      Top = 52
      Width = 442
      Height = 24
      Ctl3D = False
      DataField = 'CID_NOME'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 1
    end
    object Edt_UF: TEdit
      Left = 579
      Top = 52
      Width = 120
      Height = 24
      Color = 14737632
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  inherited rpt_Padrao: TRLReport
    Left = 753
    Top = 234
    Margins.BottomMargin = 13.000000000000000000
    Title = 'Relat'#243'rio de Cidades'
    ExplicitLeft = 753
    ExplicitTop = 234
    inherited rba_Titulo: TRLBand
      inherited rla_1: TRLLabel
        Width = 36
        Caption = 'C'#243'digo'
        ExplicitWidth = 36
      end
      object rla_2: TRLLabel
        Left = 63
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
      object rla_3: TRLLabel
        Left = 490
        Top = 1
        Width = 16
        Height = 14
        Caption = 'UF'
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
        Left = -5
        Width = 66
        Alignment = taCenter
        DataField = 'CID_CODIGO'
        ExplicitLeft = -5
        ExplicitWidth = 66
      end
      object rdt_2: TRLDBText
        Left = 63
        Top = 1
        Width = 30
        Height = 14
        DataField = 'CID_NOME'
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
        Left = 490
        Top = 1
        Width = 16
        Height = 14
        DataField = 'UF_NOME'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_3
        ParentFont = False
      end
    end
  end
  inherited QPadrao: TIBQuery
    OnDeleteError = QPadraoDeleteError
    OnNewRecord = QPadraoNewRecord
    SQL.Strings = (
      'select CID_CODIGO, CID_UF_CODIGO, UF_NOME,  CID_NOME from cidade'
      'left join uf on cid_uf_codigo = uf_codigo')
    object QPadraoCID_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CID_CODIGO'
      Origin = '"CIDADE"."CID_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object QPadraoCID_NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'CID_NOME'
      Origin = '"CIDADE"."CID_NOME"'
      Required = True
      Size = 255
    end
    object QPadraoCID_UF_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'd. UF'
      FieldName = 'CID_UF_CODIGO'
      Origin = '"CIDADE"."CID_UF_CODIGO"'
      Required = True
      OnValidate = QPadraoCID_UF_CODIGOValidate
    end
    object QPadraoUF_NOME: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'UF_NOME'
      Origin = '"UF"."UF_NOME"'
      Size = 100
    end
  end
  inherited UpdSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CID_CODIGO,'
      '  CID_UF_CODIGO,'
      '  UF_NOME,'
      '  CID_NOME'
      'from cidade'
      'left join uf on cid_uf_codigo = uf_codigo '
      'where'
      '  CID_CODIGO = :CID_CODIGO')
    ModifySQL.Strings = (
      'update cidade'
      'set'
      '  CID_CODIGO = :CID_CODIGO,'
      '  CID_NOME = :CID_NOME,'
      '  CID_UF_CODIGO = :CID_UF_CODIGO'
      'where'
      '  CID_CODIGO = :OLD_CID_CODIGO')
    InsertSQL.Strings = (
      'insert into cidade'
      '  (CID_CODIGO, CID_NOME, CID_UF_CODIGO)'
      'values'
      '  (:CID_CODIGO, :CID_NOME, :CID_UF_CODIGO)')
    DeleteSQL.Strings = (
      'delete from cidade'
      'where'
      '  CID_CODIGO = :OLD_CID_CODIGO')
  end
  inherited cmdSql: TIBSQL
    SQL.Strings = (
      'select coalesce(max(cid_codigo),0) as cid_codigo from cidade')
  end
end
