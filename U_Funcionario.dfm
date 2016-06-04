inherited F_Funcionario: TF_Funcionario
  Caption = 'Funcion'#225'rios'
  ClientHeight = 470
  ClientWidth = 890
  Constraints.MinHeight = 498
  Constraints.MinWidth = 896
  ExplicitWidth = 896
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 890
    ExplicitWidth = 890
  end
  inherited Panel2: TPanel
    Width = 890
    ExplicitWidth = 890
  end
  inherited DBG_Cons: TDBGrid
    Width = 890
    Columns = <
      item
        Expanded = False
        FieldName = 'FUN_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_CID_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_NOME'
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_CAR_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAR_NOME'
        Width = 173
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_SOBRENOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_ENDERECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_BAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_RG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_SEXO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_LOGIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_SENHA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'FUN_STATUS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FUN_CELULAR'
        Visible = True
      end>
  end
  inherited GroupBox: TGroupBox
    Width = 890
    Height = 264
    ExplicitWidth = 890
    ExplicitHeight = 264
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
      Width = 39
      Height = 18
      Caption = 'Nome'
      FocusControl = ded_2
    end
    object lab_3: TLabel
      Left = 287
      Top = 26
      Width = 74
      Height = 18
      Caption = 'Sobrenome'
      FocusControl = ded_3
    end
    object lab_4: TLabel
      Left = 411
      Top = 82
      Width = 78
      Height = 18
      Caption = 'C'#243'd. Cidade'
      FocusControl = ded_4
    end
    object sbt_1: TSpeedButton
      Left = 707
      Top = 106
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = sbt_1Click
    end
    object lab_5: TLabel
      Left = 557
      Top = 26
      Width = 82
      Height = 18
      Caption = 'Rua/Avenida'
      FocusControl = ded_5
    end
    object lab_6: TLabel
      Left = 10
      Top = 82
      Width = 52
      Height = 18
      Caption = 'N'#250'mero'
      FocusControl = ded_6
    end
    object lab_7: TLabel
      Left = 295
      Top = 82
      Width = 25
      Height = 18
      Caption = 'CEP'
      FocusControl = ded_7
    end
    object lab_8: TLabel
      Left = 148
      Top = 134
      Width = 19
      Height = 18
      Caption = 'RG'
      FocusControl = ded_8
    end
    object lab_9: TLabel
      Left = 285
      Top = 134
      Width = 25
      Height = 18
      Caption = 'CPF'
      FocusControl = ded_9
    end
    object lab_10: TLabel
      Left = 10
      Top = 188
      Width = 32
      Height = 18
      Caption = 'Sexo'
    end
    object lab_11: TLabel
      Left = 424
      Top = 134
      Width = 73
      Height = 18
      Caption = 'C'#243'd. Cargo'
      FocusControl = ded_10
    end
    object sbt_2: TSpeedButton
      Left = 719
      Top = 158
      Width = 23
      Height = 22
      Caption = '...'
      Flat = True
      OnClick = sbt_2Click
    end
    object lab_12: TLabel
      Left = 736
      Top = 82
      Width = 57
      Height = 18
      Caption = 'Telefone'
      FocusControl = ded_11
    end
    object lab_13: TLabel
      Left = 748
      Top = 134
      Width = 41
      Height = 18
      Caption = 'Status'
    end
    object Label1: TLabel
      Left = 87
      Top = 82
      Width = 37
      Height = 18
      Caption = 'Bairro'
      FocusControl = ded_6
    end
    object lab_info: TLabel
      Left = 173
      Top = 208
      Width = 397
      Height = 26
      Caption = 
        '*Ao cadastrar um usu'#225'rio, o nome dele '#233' utlizado como login'#13' e s' +
        'enha por padr'#227'o automaticamente. Utilize a tela de conf. senha p' +
        'ara troc'#225'-los.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 134
      Width = 42
      Height = 18
      Caption = 'Celular'
      FocusControl = DBEdit2
    end
    object ded_1: TDBEdit
      Left = 10
      Top = 50
      Width = 71
      Height = 24
      Ctl3D = False
      DataField = 'FUN_CODIGO'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 0
    end
    object ded_2: TDBEdit
      Left = 87
      Top = 50
      Width = 194
      Height = 24
      Ctl3D = False
      DataField = 'FUN_NOME'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 1
    end
    object ded_3: TDBEdit
      Left = 287
      Top = 50
      Width = 264
      Height = 24
      Ctl3D = False
      DataField = 'FUN_SOBRENOME'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 2
    end
    object ded_4: TDBEdit
      Left = 411
      Top = 104
      Width = 70
      Height = 24
      Ctl3D = False
      DataField = 'FUN_CID_CODIGO'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 7
    end
    object Edt_Cidade: TEdit
      Left = 487
      Top = 104
      Width = 214
      Height = 24
      Color = 14737632
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
    end
    object ded_5: TDBEdit
      Left = 557
      Top = 50
      Width = 322
      Height = 24
      Ctl3D = False
      DataField = 'FUN_ENDERECO'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 3
    end
    object ded_6: TDBEdit
      Left = 10
      Top = 104
      Width = 72
      Height = 24
      Ctl3D = False
      DataField = 'FUN_NUMERO'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 4
    end
    object ded_7: TDBEdit
      Left = 295
      Top = 104
      Width = 110
      Height = 24
      Ctl3D = False
      DataField = 'FUN_CEP'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 6
    end
    object ded_8: TDBEdit
      Left = 148
      Top = 158
      Width = 132
      Height = 24
      Ctl3D = False
      DataField = 'FUN_RG'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 11
    end
    object ded_9: TDBEdit
      Left = 286
      Top = 158
      Width = 132
      Height = 24
      Ctl3D = False
      DataField = 'FUN_CPF'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 12
    end
    object cmb_sexo: TDBComboBox
      Left = 10
      Top = 212
      Width = 157
      Height = 26
      Style = csDropDownList
      Ctl3D = False
      DataField = 'FUN_SEXO'
      DataSource = DS
      Items.Strings = (
        'Masculino'
        'Feminino')
      ParentCtl3D = False
      TabOrder = 16
    end
    object ded_10: TDBEdit
      Left = 424
      Top = 158
      Width = 82
      Height = 24
      Ctl3D = False
      DataField = 'FUN_CAR_CODIGO'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 13
    end
    object edt_Cargo: TEdit
      Left = 512
      Top = 158
      Width = 201
      Height = 24
      Color = 14737632
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 14
    end
    object ded_11: TDBEdit
      Left = 736
      Top = 104
      Width = 143
      Height = 24
      Ctl3D = False
      DataField = 'FUN_TELEFONE'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 9
    end
    object dcb_1: TDBComboBox
      Left = 748
      Top = 158
      Width = 131
      Height = 26
      Style = csDropDownList
      Ctl3D = False
      DataField = 'FUN_STATUS'
      DataSource = DS
      Items.Strings = (
        'Ativo'
        'Inativo')
      ParentCtl3D = False
      TabOrder = 15
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 104
      Width = 202
      Height = 24
      Ctl3D = False
      DataField = 'FUN_BAIRRO'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 5
    end
    object DBEdit2: TDBEdit
      Left = 10
      Top = 158
      Width = 132
      Height = 24
      Ctl3D = False
      DataField = 'FUN_CELULAR'
      DataSource = DS
      ParentCtl3D = False
      TabOrder = 10
    end
  end
  inherited rpt_Padrao: TRLReport
    Left = 811
    Top = 489
    Width = 1123
    Height = 794
    Margins.BottomMargin = 13.000000000000000000
    PageSetup.Orientation = poLandscape
    Title = 'Relat'#243'rio de Funcion'#225'rio'
    ExplicitLeft = 811
    ExplicitTop = 489
    ExplicitWidth = 1123
    ExplicitHeight = 794
    inherited RBA_CABECALHO: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited RIM_LOGO: TRLImage
        Left = 948
        Top = 7
        ExplicitLeft = 948
        ExplicitTop = 7
      end
    end
    inherited RBA_ROD: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited rpa_Obs: TRLPanel
        Width = 1047
        ExplicitWidth = 1047
        inherited rpa_TotPG: TRLPanel
          Left = 974
          ExplicitLeft = 974
        end
        inherited rpa_numPG: TRLPanel
          Left = 908
          ExplicitLeft = 908
        end
        inherited rpa_data: TRLPanel
          Left = 770
          ExplicitLeft = 770
        end
      end
    end
    inherited rba_Titulo: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited rla_1: TRLLabel
        Width = 36
        Caption = 'C'#243'digo'
        ExplicitWidth = 36
      end
      object rla_2: TRLLabel
        Left = 52
        Top = 0
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
        Left = 148
        Top = 0
        Width = 58
        Height = 14
        Caption = 'Sobrenome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_4: TRLLabel
        Left = 265
        Top = 0
        Width = 36
        Height = 14
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_5: TRLLabel
        Left = 379
        Top = 0
        Width = 49
        Height = 14
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_6: TRLLabel
        Left = 505
        Top = 0
        Width = 40
        Height = 14
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_7: TRLLabel
        Left = 559
        Top = 0
        Width = 22
        Height = 14
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_8: TRLLabel
        Left = 649
        Top = 0
        Width = 18
        Height = 14
        Caption = 'RG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_9: TRLLabel
        Left = 784
        Top = 0
        Width = 28
        Height = 14
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_10: TRLLabel
        Left = 825
        Top = 0
        Width = 32
        Height = 14
        Caption = 'Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_11: TRLLabel
        Left = 926
        Top = 0
        Width = 45
        Height = 14
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_12: TRLLabel
        Left = 1009
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
      object rla_13: TRLLabel
        Left = 706
        Top = 0
        Width = 22
        Height = 14
        Caption = 'CPF'
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
      Width = 1047
      ExplicitWidth = 1047
      inherited rdt_1: TRLDBText
        Left = -5
        Top = 1
        Width = 66
        Height = 12
        Alignment = taCenter
        DataField = 'FUN_CODIGO'
        Font.Height = -9
        ExplicitLeft = -5
        ExplicitTop = 1
        ExplicitWidth = 66
        ExplicitHeight = 12
      end
      object rdt_2: TRLDBText
        Left = 52
        Top = 1
        Width = 28
        Height = 12
        DataField = 'FUN_NOME'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_2
        ParentFont = False
      end
      object rdt_3: TRLDBText
        Left = 148
        Top = 1
        Width = 50
        Height = 12
        DataField = 'FUN_SOBRENOME'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_3
        ParentFont = False
      end
      object rdt_4: TRLDBText
        Left = 265
        Top = 1
        Width = 32
        Height = 12
        DataField = 'CID_NOME'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_4
        ParentFont = False
      end
      object rdt_5: TRLDBText
        Left = 379
        Top = 1
        Width = 20
        Height = 12
        DataField = 'FUN_ENDERECO'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_5
        ParentFont = False
      end
      object rdt_6: TRLDBText
        Left = 507
        Top = 1
        Width = 36
        Height = 12
        Alignment = taCenter
        DataField = 'FUN_NUMERO'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_6
        ParentFont = False
      end
      object rdt_7: TRLDBText
        Left = 559
        Top = 1
        Width = 22
        Height = 12
        DataField = 'FUN_CEP'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_7
        ParentFont = False
      end
      object rdt_8: TRLDBText
        Left = 649
        Top = 1
        Width = 17
        Height = 12
        DataField = 'FUN_RG'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_8
        ParentFont = False
      end
      object rdt_9: TRLDBText
        Left = 784
        Top = 1
        Width = 24
        Height = 12
        DataField = 'FUN_SEXO'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_9
        ParentFont = False
      end
      object rdt_10: TRLDBText
        Left = 825
        Top = 1
        Width = 28
        Height = 12
        DataField = 'CAR_NOME'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_10
        ParentFont = False
      end
      object rdt_11: TRLDBText
        Left = 926
        Top = 1
        Width = 39
        Height = 12
        DataField = 'FUN_TELEFONE'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_11
        ParentFont = False
      end
      object rdt_12: TRLDBText
        Left = 1009
        Top = 1
        Width = 30
        Height = 12
        DataField = 'FUN_STATUS'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_12
        ParentFont = False
      end
      object rdt_13: TRLDBText
        Left = 706
        Top = 1
        Width = 22
        Height = 12
        DataField = 'FUN_CPF'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_13
        ParentFont = False
      end
    end
    inherited RLBand1: TRLBand
      Width = 1047
      ExplicitWidth = 1047
    end
  end
  inherited QPadrao: TIBQuery
    BeforeDelete = QPadraoBeforeDelete
    BeforePost = QPadraoBeforePost
    OnNewRecord = QPadraoNewRecord
    SQL.Strings = (
      'select'
      '    FUN_CODIGO,'
      '    FUN_CID_CODIGO,'
      '    CID_NOME,'
      '    FUN_CAR_CODIGO,'
      '    CAR_NOME,'
      '    FUN_NOME,'
      '    FUN_SOBRENOME,'
      '    FUN_ENDERECO,'
      '    FUN_NUMERO,'
      '    FUN_BAIRRO,'
      '    FUN_CEP,'
      '    FUN_RG,'
      '    FUN_CPF,'
      '    FUN_SEXO,'
      '    FUN_TELEFONE,'
      '    FUN_LOGIN,'
      '    FUN_SENHA,'
      '    FUN_STATUS,'
      '    FUN_CELULAR'
      'from'
      '    funcionario'
      '    left join cidade on fun_cid_codigo = cid_codigo'
      '    left join cargo on fun_car_codigo = car_codigo')
    object QPadraoFUN_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'FUN_CODIGO'
      Origin = '"FUNCIONARIO"."FUN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object QPadraoFUN_CID_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'FUN_CID_CODIGO'
      Origin = '"FUNCIONARIO"."FUN_CID_CODIGO"'
      Required = True
      OnValidate = QPadraoFUN_CID_CODIGOValidate
    end
    object QPadraoCID_NOME: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CID_NOME'
      Origin = '"CIDADE"."CID_NOME"'
      Size = 255
    end
    object QPadraoFUN_CAR_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'd. Cargo'
      FieldName = 'FUN_CAR_CODIGO'
      Origin = '"FUNCIONARIO"."FUN_CAR_CODIGO"'
      Required = True
      OnValidate = QPadraoFUN_CAR_CODIGOValidate
    end
    object QPadraoCAR_NOME: TIBStringField
      DisplayLabel = 'Cargo'
      FieldName = 'CAR_NOME'
      Origin = '"CARGO"."CAR_NOME"'
      Size = 100
    end
    object QPadraoFUN_NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'FUN_NOME'
      Origin = '"FUNCIONARIO"."FUN_NOME"'
      Required = True
      Size = 45
    end
    object QPadraoFUN_SOBRENOME: TIBStringField
      DisplayLabel = 'Sobrenome'
      FieldName = 'FUN_SOBRENOME'
      Origin = '"FUNCIONARIO"."FUN_SOBRENOME"'
      Size = 45
    end
    object QPadraoFUN_ENDERECO: TIBStringField
      DisplayLabel = 'Rua'
      FieldName = 'FUN_ENDERECO'
      Origin = '"FUNCIONARIO"."FUN_ENDERECO"'
      Size = 100
    end
    object QPadraoFUN_NUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'FUN_NUMERO'
      Origin = '"FUNCIONARIO"."FUN_NUMERO"'
    end
    object QPadraoFUN_CEP: TIBStringField
      DisplayLabel = 'CEP'
      FieldName = 'FUN_CEP'
      Origin = '"FUNCIONARIO"."FUN_CEP"'
      EditMask = '99.999-999;0;'
      Size = 8
    end
    object QPadraoFUN_RG: TIBStringField
      DisplayLabel = 'RG'
      FieldName = 'FUN_RG'
      Origin = '"FUNCIONARIO"."FUN_RG"'
      Size = 9
    end
    object QPadraoFUN_CPF: TIBStringField
      DisplayLabel = 'CPF'
      FieldName = 'FUN_CPF'
      Origin = '"FUNCIONARIO"."FUN_CPF"'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object QPadraoFUN_SEXO: TIBStringField
      Tag = 1
      DisplayLabel = 'Sexo'
      FieldName = 'FUN_SEXO'
      Origin = '"FUNCIONARIO"."FUN_SEXO"'
      Required = True
      OnGetText = QPadraoFUN_SEXOGetText
      OnSetText = QPadraoFUN_SEXOSetText
      Size = 1
    end
    object QPadraoFUN_TELEFONE: TIBStringField
      DisplayLabel = 'Telefone'
      FieldName = 'FUN_TELEFONE'
      Origin = '"FUNCIONARIO"."FUN_TELEFONE"'
      EditMask = '(99)9999-9999;0;'
      Size = 11
    end
    object QPadraoFUN_LOGIN: TIBStringField
      DisplayLabel = 'Login'
      FieldName = 'FUN_LOGIN'
      Origin = '"FUNCIONARIO"."FUN_LOGIN"'
      Visible = False
      Size = 15
    end
    object QPadraoFUN_SENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'FUN_SENHA'
      Origin = '"FUNCIONARIO"."FUN_SENHA"'
      Visible = False
    end
    object QPadraoFUN_STATUS: TIBStringField
      Tag = 1
      DisplayLabel = 'Status'
      FieldName = 'FUN_STATUS'
      Origin = '"FUNCIONARIO"."FUN_STATUS"'
      Required = True
      OnGetText = QPadraoFUN_STATUSGetText
      OnSetText = QPadraoFUN_STATUSSetText
      Size = 1
    end
    object QPadraoFUN_BAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'FUN_BAIRRO'
      Origin = '"FUNCIONARIO"."FUN_BAIRRO"'
      Size = 100
    end
    object QPadraoFUN_CELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'FUN_CELULAR'
      Origin = '"FUNCIONARIO"."FUN_CELULAR"'
      EditMask = '(99)9-9999-9999;0;'
      Size = 11
    end
  end
  inherited UpdSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  FUN_CODIGO,'
      '  FUN_CID_CODIGO,'
      '  CID_NOME,'
      '  FUN_CAR_CODIGO,'
      '  CAR_NOME,'
      '  FUN_NOME,'
      '  FUN_SOBRENOME,'
      '  FUN_ENDERECO,'
      '  FUN_NUMERO,'
      '  FUN_CEP,'
      '  FUN_RG,'
      '  FUN_CPF,'
      '  FUN_SEXO,'
      '  FUN_TELEFONE,'
      '  FUN_LOGIN,'
      '  FUN_SENHA,'
      '  FUN_STATUS,'
      '  FUN_BAIRRO,'
      '  FUN_CELULAR'
      'from funcionario '
      '    left join cidade on fun_cid_codigo = cid_codigo'
      '    left join cargo on fun_car_codigo = car_codigo'
      'where'
      '  FUN_CODIGO = :FUN_CODIGO')
    ModifySQL.Strings = (
      'update funcionario'
      'set'
      '  FUN_CAR_CODIGO = :FUN_CAR_CODIGO,'
      '  FUN_CEP = :FUN_CEP,'
      '  FUN_CID_CODIGO = :FUN_CID_CODIGO,'
      '  FUN_CPF = :FUN_CPF,'
      '  FUN_ENDERECO = :FUN_ENDERECO,'
      '  FUN_LOGIN = :FUN_LOGIN,'
      '  FUN_NOME = :FUN_NOME,'
      '  FUN_NUMERO = :FUN_NUMERO,'
      '  FUN_RG = :FUN_RG,'
      '  FUN_SENHA = :FUN_SENHA,'
      '  FUN_SEXO = :FUN_SEXO,'
      '  FUN_SOBRENOME = :FUN_SOBRENOME,'
      '  FUN_STATUS = :FUN_STATUS,'
      '  FUN_TELEFONE = :FUN_TELEFONE,'
      '  FUN_BAIRRO = :FUN_BAIRRO,'
      '  FUN_CELULAR = :FUN_CELULAR'
      'where'
      '  FUN_CODIGO = :OLD_FUN_CODIGO')
    InsertSQL.Strings = (
      'insert into funcionario'
      '  (FUN_CAR_CODIGO, FUN_CEP, FUN_CID_CODIGO, FUN_CODIGO, '
      
        '   FUN_CPF, FUN_ENDERECO, FUN_LOGIN, FUN_NOME, FUN_NUMERO, FUN_R' +
        'G, FUN_SENHA, '
      
        '   FUN_SEXO, FUN_SOBRENOME, FUN_STATUS, FUN_TELEFONE, FUN_BAIRRO' +
        ', FUN_CELULAR)'
      'values'
      '  (:FUN_CAR_CODIGO, :FUN_CEP, :FUN_CID_CODIGO, :FUN_CODIGO, '
      
        '   :FUN_CPF, :FUN_ENDERECO, :FUN_LOGIN, :FUN_NOME, :FUN_NUMERO, ' +
        ':FUN_RG, '
      
        '   :FUN_SENHA, :FUN_SEXO, :FUN_SOBRENOME, :FUN_STATUS, :FUN_TELE' +
        'FONE, :FUN_BAIRRO, :FUN_CELULAR)')
    DeleteSQL.Strings = (
      'delete from funcionario'
      'where'
      '  FUN_CODIGO = :OLD_FUN_CODIGO')
  end
  inherited cmdSql: TIBSQL
    SQL.Strings = (
      
        'select coalesce(max(fun_codigo),0) as fun_codigo from funcionari' +
        'o')
  end
end
