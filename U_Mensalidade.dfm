inherited F_Mensalidade: TF_Mensalidade
  Caption = 'Mensalidades'
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
  end
  inherited DBG_Cons: TDBGrid
    Width = 898
    Columns = <
      item
        Expanded = False
        FieldName = 'MEN_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEN_ALU_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_NOME'
        Width = 245
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEN_DATAPG'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEN_STATUS'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEN_VALOR'
        Visible = True
      end>
  end
  inherited GroupBox: TGroupBox
    Width = 898
    Height = 96
    ExplicitWidth = 898
    ExplicitHeight = 96
    object lab_1: TLabel
      Left = 10
      Top = 26
      Width = 43
      Height = 18
      Caption = 'C'#243'digo'
      FocusControl = ded_1
    end
    object lab_2: TLabel
      Left = 87
      Top = 26
      Width = 35
      Height = 18
      Caption = 'Aluno'
      FocusControl = ded_2
    end
    object lab_3: TLabel
      Left = 643
      Top = 26
      Width = 110
      Height = 18
      Caption = 'Data Pagamento'
      FocusControl = ded_3
    end
    object btn_selAluno: TSpeedButton
      Left = 463
      Top = 48
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = btn_selAlunoClick
    end
    object lab_5: TLabel
      Left = 772
      Top = 26
      Width = 32
      Height = 18
      Caption = 'Valor'
      FocusControl = ded_4
    end
    object lab_4: TLabel
      Left = 492
      Top = 26
      Width = 41
      Height = 18
      Caption = 'Status'
      FocusControl = ded_2
    end
    object ded_1: TDBEdit
      Left = 10
      Top = 48
      Width = 71
      Height = 24
      Ctl3D = False
      DataField = 'MEN_CODIGO'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 0
    end
    object ded_2: TDBEdit
      Left = 87
      Top = 48
      Width = 71
      Height = 24
      Ctl3D = False
      DataField = 'MEN_ALU_CODIGO'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 1
    end
    object ded_3: TDBEdit
      Left = 643
      Top = 48
      Width = 123
      Height = 24
      Ctl3D = False
      DataField = 'MEN_DATAPG'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 4
    end
    object edt_Nome: TEdit
      Left = 164
      Top = 48
      Width = 293
      Height = 24
      Color = 14737632
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object ded_4: TDBEdit
      Left = 772
      Top = 48
      Width = 107
      Height = 24
      Ctl3D = False
      DataField = 'MEN_VALOR'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 5
    end
    object dcb_1: TDBComboBox
      Left = 492
      Top = 48
      Width = 145
      Height = 26
      Style = csDropDownList
      Ctl3D = False
      DataField = 'MEN_STATUS'
      DataSource = DS
      Items.Strings = (
        'Aberta'
        'Paga')
      ParentCtl3D = False
      TabOrder = 3
    end
  end
  inherited rpt_Padrao: TRLReport
    Left = 860
    Top = 276
    Margins.BottomMargin = 13.000000000000000000
    Title = 'Relat'#243'rio de Mensalidade'
    ExplicitLeft = 860
    ExplicitTop = 276
    inherited rba_Titulo: TRLBand
      inherited rla_1: TRLLabel
        Width = 36
        Caption = 'C'#243'digo'
        ExplicitWidth = 36
      end
      object rla_2: TRLLabel
        Left = 76
        Top = 0
        Width = 31
        Height = 14
        Caption = 'Aluno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_3: TRLLabel
        Left = 275
        Top = 0
        Width = 34
        Height = 14
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_4: TRLLabel
        Left = 458
        Top = 0
        Width = 72
        Height = 14
        Caption = 'Dt. Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_5: TRLLabel
        Left = 633
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
    end
    inherited rba_Detalhes: TRLBand
      inherited rdt_1: TRLDBText
        Left = -7
        Width = 70
        Alignment = taCenter
        DataField = 'MEN_CODIGO'
        ExplicitLeft = -7
        ExplicitWidth = 70
      end
      object rdt_2: TRLDBText
        Left = 76
        Top = 1
        Width = 61
        Height = 14
        DataField = 'ALU_NOME'
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
        Left = 275
        Top = 1
        Width = 34
        Height = 14
        DataField = 'MEN_STATUS'
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
        Left = 458
        Top = 1
        Width = 72
        Height = 14
        DataField = 'MEN_DATAPG'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_4
        ParentFont = False
      end
      object rdt_5: TRLDBText
        Left = 633
        Top = 1
        Width = 29
        Height = 14
        DataField = 'MEN_VALOR'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_5
        ParentFont = False
      end
    end
  end
  inherited QPadrao: TIBQuery
    BeforeDelete = QPadraoBeforeDelete
    OnNewRecord = QPadraoNewRecord
    SQL.Strings = (
      'select '
      #9'MEN_CODIGO, '
      #9'MEN_ALU_CODIGO, '
      #9'ALU_NOME, '
      #9'MEN_DATAPG, '
      #9'MEN_STATUS,'
      #9'MEN_VALOR '
      'from '
      #9'mensalidade '
      #9'left join aluno on men_alu_codigo = alu_codigo')
    object QPadraoMEN_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MEN_CODIGO'
      Origin = '"MENSALIDADE"."MEN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object QPadraoMEN_ALU_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'd. Aluno'
      FieldName = 'MEN_ALU_CODIGO'
      Origin = '"MENSALIDADE"."MEN_ALU_CODIGO"'
      Required = True
      OnValidate = QPadraoMEN_ALU_CODIGOValidate
    end
    object QPadraoALU_NOME: TIBStringField
      DisplayLabel = 'Nome Aluno'
      FieldName = 'ALU_NOME'
      Origin = '"ALUNO"."ALU_NOME"'
      Size = 45
    end
    object QPadraoMEN_DATAPG: TDateField
      DisplayLabel = 'Dt. Pagamento'
      FieldName = 'MEN_DATAPG'
      Origin = '"MENSALIDADE"."MEN_DATAPG"'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object QPadraoMEN_STATUS: TIBStringField
      Tag = 1
      DisplayLabel = 'Status'
      FieldName = 'MEN_STATUS'
      Origin = '"MENSALIDADE"."MEN_STATUS"'
      Required = True
      OnGetText = QPadraoMEN_STATUSGetText
      OnSetText = QPadraoMEN_STATUSSetText
      Size = 1
    end
    object QPadraoMEN_VALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'MEN_VALOR'
      Origin = '"MENSALIDADE"."MEN_VALOR"'
      Required = True
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 2
    end
  end
  inherited UpdSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  MEN_CODIGO,'
      '  MEN_ALU_CODIGO,'
      '  ALU_NOME,'
      '  MEN_DATAPG,'
      '  MEN_STATUS,'
      '  MEN_VALOR'
      'from mensalidade'
      'left join aluno on men_alu_codigo = alu_codigo '
      'where'
      '  MEN_CODIGO = :MEN_CODIGO')
    ModifySQL.Strings = (
      'update mensalidade'
      'set'
      '  MEN_ALU_CODIGO = :MEN_ALU_CODIGO,'
      '  MEN_DATAPG = :MEN_DATAPG,'
      '  MEN_STATUS = :MEN_STATUS,'
      '  MEN_VALOR = :MEN_VALOR'
      'where'
      '  MEN_CODIGO = :OLD_MEN_CODIGO')
    InsertSQL.Strings = (
      'insert into mensalidade'
      
        '  ( MEN_ALU_CODIGO, MEN_CODIGO, MEN_DATAPG, MEN_STATUS, MEN_VALO' +
        'R)'
      'values'
      
        '  ( :MEN_ALU_CODIGO, :MEN_CODIGO, :MEN_DATAPG, :MEN_STATUS, :MEN' +
        '_VALOR)')
    DeleteSQL.Strings = (
      'delete from mensalidade'
      'where'
      '  MEN_CODIGO = :OLD_MEN_CODIGO')
  end
  inherited cmdSql: TIBSQL
    SQL.Strings = (
      
        'select coalesce(max(men_codigo),0) as men_codigo from mensalidad' +
        'e')
  end
end
