inherited F_Aluno: TF_Aluno
  Top = 0
  HelpType = htKeyword
  Caption = 'Alunos'
  ClientHeight = 536
  ClientWidth = 898
  Constraints.MinHeight = 561
  Constraints.MinWidth = 904
  ExplicitWidth = 904
  ExplicitHeight = 561
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 898
    ExplicitWidth = 898
    inherited BtnProcurar: TSpeedButton
      ExplicitLeft = 157
    end
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
        FieldName = 'ALU_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_CID_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_NOME'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_NOME'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_SOBRENOME'
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_ENDERECO'
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_NUMERO'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_BAIRRO'
        Width = 289
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_CEP'
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_RG'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_CPF'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_SEXO'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_FOTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ALU_TELEFONE'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_CELULAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_PLA_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLA_DESC'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_STATUS'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_DTVENC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALU_COBRAR'
        Visible = True
      end>
  end
  inherited GroupBox: TGroupBox
    Width = 898
    Height = 330
    ExplicitWidth = 898
    ExplicitHeight = 330
    object pgc_Foto: TPageControl
      Left = 3
      Top = 20
      Width = 894
      Height = 302
      ActivePage = tbs_Dados
      TabOrder = 0
      object tbs_Dados: TTabSheet
        Caption = 'Dados'#31
        object lab_1: TLabel
          Left = 147
          Top = 211
          Width = 41
          Height = 18
          Caption = 'Status'
        end
        object lab_2: TLabel
          Left = 13
          Top = 211
          Width = 112
          Height = 18
          Caption = 'Data Vencimento'
          FocusControl = ded_1
        end
        object lab_3: TLabel
          Left = 573
          Top = 105
          Width = 57
          Height = 18
          Caption = 'Telefone'
          FocusControl = ded_2
        end
        object lab_4: TLabel
          Left = 726
          Top = 105
          Width = 42
          Height = 18
          Caption = 'Celular'
          FocusControl = ded_3
        end
        object lab_5: TLabel
          Left = 319
          Top = 158
          Width = 69
          Height = 18
          Caption = 'C'#243'd. Plano'
          FocusControl = ded_4
        end
        object sbt_1: TSpeedButton
          Left = 855
          Top = 180
          Width = 23
          Height = 22
          Caption = '...'
          Flat = True
          OnClick = sbt_1Click
        end
        object lab_6: TLabel
          Left = 449
          Top = 211
          Width = 32
          Height = 18
          Caption = 'Sexo'
          FocusControl = ded_5
        end
        object lab_7: TLabel
          Left = 166
          Top = 158
          Width = 25
          Height = 18
          Caption = 'CPF'
          FocusControl = ded_5
        end
        object lab_8: TLabel
          Left = 13
          Top = 158
          Width = 19
          Height = 18
          Caption = 'RG'
          FocusControl = ded_6
        end
        object lab_9: TLabel
          Left = 412
          Top = 105
          Width = 25
          Height = 18
          Caption = 'CEP'
          FocusControl = ded_7
        end
        object lab_10: TLabel
          Left = 423
          Top = 57
          Width = 52
          Height = 18
          Caption = 'N'#250'mero'
          FocusControl = ded_8
        end
        object lab_11: TLabel
          Left = 13
          Top = 105
          Width = 78
          Height = 18
          Caption = 'C'#243'd. Cidade'
          FocusControl = ded_9
        end
        object sbt_2: TSpeedButton
          Left = 383
          Top = 129
          Width = 23
          Height = 22
          Caption = '...'
          Flat = True
          OnClick = sbt_2Click
        end
        object lab_12: TLabel
          Left = 13
          Top = 57
          Width = 82
          Height = 18
          Caption = 'Rua/Avenida'
          FocusControl = ded_10
        end
        object lab_13: TLabel
          Left = 540
          Top = 5
          Width = 74
          Height = 18
          Caption = 'Sobrenome'
          FocusControl = ded_11
        end
        object lab_14: TLabel
          Left = 153
          Top = 5
          Width = 39
          Height = 18
          Caption = 'Nome'
          FocusControl = ded_12
        end
        object lab_15: TLabel
          Left = 13
          Top = 5
          Width = 43
          Height = 18
          Caption = 'C'#243'digo'
          FocusControl = ded_13
        end
        object lab_Cobrar: TLabel
          Left = 298
          Top = 211
          Width = 97
          Height = 18
          Caption = 'Cobrar Atraso?'
        end
        object lab_16: TLabel
          Left = 514
          Top = 57
          Width = 37
          Height = 18
          Caption = 'Bairro'
          FocusControl = ded_14
        end
        object cmb_status: TDBComboBox
          Left = 147
          Top = 229
          Width = 145
          Height = 26
          Style = csDropDownList
          Ctl3D = False
          DataField = 'ALU_STATUS'
          DataSource = DS
          Items.Strings = (
            'Ativo'
            'Inativo')
          ParentCtl3D = False
          TabOrder = 16
        end
        object ded_1: TDBEdit
          Left = 13
          Top = 231
          Width = 128
          Height = 24
          Ctl3D = False
          DataField = 'ALU_DTVENC'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 15
        end
        object ded_2: TDBEdit
          Left = 573
          Top = 127
          Width = 147
          Height = 24
          Ctl3D = False
          DataField = 'ALU_TELEFONE'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 9
        end
        object ded_3: TDBEdit
          Left = 726
          Top = 127
          Width = 147
          Height = 24
          Ctl3D = False
          DataField = 'ALU_CELULAR'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 10
        end
        object ded_4: TDBEdit
          Left = 319
          Top = 178
          Width = 84
          Height = 24
          Ctl3D = False
          DataField = 'ALU_PLA_CODIGO'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 13
        end
        object Edt_Plano: TEdit
          Left = 409
          Top = 178
          Width = 440
          Height = 24
          Color = 14737632
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 14
        end
        object cmb_sexo: TDBComboBox
          Left = 449
          Top = 229
          Width = 157
          Height = 26
          Style = csDropDownList
          Ctl3D = False
          DataField = 'ALU_SEXO'
          DataSource = DS
          Items.Strings = (
            'Masculino'
            'Feminino')
          ParentCtl3D = False
          TabOrder = 18
        end
        object ded_5: TDBEdit
          Left = 166
          Top = 178
          Width = 147
          Height = 24
          Ctl3D = False
          DataField = 'ALU_CPF'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 12
        end
        object ded_6: TDBEdit
          Left = 13
          Top = 178
          Width = 147
          Height = 24
          Ctl3D = False
          DataField = 'ALU_RG'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 11
        end
        object ded_7: TDBEdit
          Left = 412
          Top = 127
          Width = 155
          Height = 24
          Ctl3D = False
          DataField = 'ALU_CEP'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 8
        end
        object ded_8: TDBEdit
          Left = 423
          Top = 77
          Width = 85
          Height = 24
          Ctl3D = False
          DataField = 'ALU_NUMERO'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 4
        end
        object ded_9: TDBEdit
          Left = 13
          Top = 127
          Width = 85
          Height = 24
          Ctl3D = False
          DataField = 'ALU_CID_CODIGO'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 6
        end
        object Edt_Cidade: TEdit
          Left = 104
          Top = 127
          Width = 273
          Height = 24
          Color = 14737632
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object ded_10: TDBEdit
          Left = 13
          Top = 77
          Width = 402
          Height = 24
          Ctl3D = False
          DataField = 'ALU_ENDERECO'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 3
        end
        object ded_11: TDBEdit
          Left = 540
          Top = 27
          Width = 333
          Height = 24
          Ctl3D = False
          DataField = 'ALU_SOBRENOME'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 2
        end
        object ded_12: TDBEdit
          Left = 153
          Top = 27
          Width = 381
          Height = 24
          Ctl3D = False
          DataField = 'ALU_NOME'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 1
        end
        object ded_13: TDBEdit
          Left = 13
          Top = 27
          Width = 134
          Height = 24
          Ctl3D = False
          DataField = 'ALU_CODIGO'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 0
        end
        object dcb_Cobrar: TDBComboBox
          Left = 298
          Top = 229
          Width = 145
          Height = 26
          Style = csDropDownList
          Ctl3D = False
          DataField = 'ALU_COBRAR'
          DataSource = DS
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentCtl3D = False
          TabOrder = 17
        end
        object ded_14: TDBEdit
          Left = 514
          Top = 77
          Width = 359
          Height = 24
          Ctl3D = False
          DataField = 'ALU_BAIRRO'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 5
        end
      end
      object tbs_Foto: TTabSheet
        Caption = 'Foto'
        ImageIndex = 1
        object lab_17: TLabel
          Left = 12
          Top = 8
          Width = 111
          Height = 18
          Caption = 'Caminho da Foto'
          FocusControl = ded_15
        end
        object sbt_3: TSpeedButton
          Left = 834
          Top = 32
          Width = 31
          Height = 25
          Flat = True
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
            A7A7A78888888888888888888888888888888888888888888888888888888888
            88888888888888888888888888888888888888888888888888A8A8A8FEFEFEFF
            FFFFFFFFFFA4A4A4000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000A6A6A6FFFFFFFFFFFF7F7F7F00000000000000000000000000000000
            00000000003A3A3AB5B5B5F4F4F4F4F4F4B4B4B4383838000000000000000000
            0000000000000000000000007F7F7FFFFFFFFFFFFF7F7F7F0000000000000000
            00000000000000000000595959FBFBFBE9E9E99D9D9D9D9D9DE9E9E9FBFBFB57
            57570000000000000000000000000000000000007F7F7FFFFFFFFFFFFF7F7F7F
            000000000000000000000000000000111111F0F0F0C9C9C91111110000000000
            00111111CACACAEFEFEF0F0F0F0000000000000000000000000000007F7F7FFF
            FFFFFFFFFF7F7F7F0000000000000000000000000000005E5E5EFFFFFF3C3C3C
            0000000000000000000000003D3D3DFFFFFF5B5B5B0000000000000000000000
            000000007F7F7FFFFFFFFFFFFF7F7F7F0000000000000000000000000000007A
            7A7AFFFFFF0C0C0C0000000000000000000000000D0D0DFFFFFF787878000000
            0000000000000000000000007F7F7FFFFFFFFFFFFF7F7F7F0000000000000000
            000000000000005E5E5EFFFFFF373737000000000000000000000000393939FF
            FFFF5B5B5B0000000000000000000000000000007F7F7FFFFFFFFFFFFF7F7F7F
            000000000000000000000000000000111111F0F0F0C7C7C71111110000000000
            00111111C7C7C7EFEFEF0F0F0F0000000000000000000000000000007F7F7FFF
            FFFFFFFFFF7F7F7F000000000000000000000000000000000000595959FBFBFB
            E9E9E99D9D9D9D9D9DE9E9E9FBFBFB5757570000000000000000000000000000
            000000007F7F7FFFFFFFFFFFFF7F7F7F00000000000000000000000000000000
            00000000003A3A3AB5B5B5ECECECECECECB4B4B4383838000000000000000000
            0000000000000000000000007F7F7FFFFFFFFFFFFFA4A4A40000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000A6A6A6FFFFFFFFFFFFFEFEFE
            A7A7A77777777777777777770000000000000000000000000000000000000000
            00000000000000000000000000000000777777777777777777A8A8A8FEFEFEFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
            000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF24242400
            0000000000000000000000000000000000000000000000000000000000272727
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFDDDDDD83838377777777777777777777777777777777777777777777
            7777838383DFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = sbt_3Click
        end
        object img_Foto: TImage
          Left = 299
          Top = 62
          Width = 247
          Height = 196
          Proportional = True
        end
        object ded_15: TDBEdit
          Left = 12
          Top = 32
          Width = 816
          Height = 24
          Ctl3D = False
          DataField = 'ALU_FOTO'
          DataSource = DS
          ParentCtl3D = False
          TabOrder = 0
        end
      end
    end
  end
  inherited rpt_Padrao: TRLReport
    Left = 753
    Top = 526
    Width = 1123
    Height = 794
    Margins.BottomMargin = 13.000000000000000000
    PageSetup.Orientation = poLandscape
    Title = 'Relat'#243'rio de Alunos'
    ExplicitLeft = 753
    ExplicitTop = 526
    ExplicitWidth = 1123
    ExplicitHeight = 794
    inherited RBA_CABECALHO: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited RIM_LOGO: TRLImage
        Left = 947
        Top = 11
        ExplicitLeft = 947
        ExplicitTop = 11
      end
    end
    inherited RBA_ROD: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited rpa_Obs: TRLPanel
        Width = 1046
        ExplicitWidth = 1046
        inherited rpa_TotPG: TRLPanel
          Left = 973
          ExplicitLeft = 973
        end
        inherited rpa_numPG: TRLPanel
          Left = 904
          ExplicitLeft = 904
        end
        inherited rpa_data: TRLPanel
          Left = 766
          Top = 0
          ExplicitLeft = 766
          ExplicitTop = 0
        end
      end
    end
    inherited rba_Titulo: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited rla_1: TRLLabel
        Left = 6
        Width = 36
        Caption = 'C'#243'digo'
        ExplicitLeft = 6
        ExplicitWidth = 36
      end
      object rla_2: TRLLabel
        Left = 45
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
        Left = 126
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
        Left = 222
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
      object rla_5: TRLLabel
        Left = 306
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
      object rla_6: TRLLabel
        Left = 351
        Top = 0
        Width = 22
        Height = 14
        Caption = 'Cep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_7: TRLLabel
        Left = 399
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
      object rla_8: TRLLabel
        Left = 502
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
        Left = 559
        Top = -1
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
      object rla_10: TRLLabel
        Left = 630
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
      object rla_11: TRLLabel
        Left = 678
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
        Left = 744
        Top = 0
        Width = 36
        Height = 14
        Caption = 'Celular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_13: TRLLabel
        Left = 815
        Top = 0
        Width = 29
        Height = 14
        Caption = 'Plano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_14: TRLLabel
        Left = 884
        Top = 0
        Width = 60
        Height = 14
        Alignment = taCenter
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_15: TRLLabel
        Left = 951
        Top = 0
        Width = 36
        Height = 14
        Caption = 'Cobrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_16: TRLLabel
        Left = 1000
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
    end
    inherited rba_Detalhes: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited rdt_1: TRLDBText
        Left = -8
        Top = 1
        Width = 64
        Height = 12
        Alignment = taCenter
        DataField = 'ALU_CODIGO'
        Font.Height = -9
        ExplicitLeft = -8
        ExplicitTop = 1
        ExplicitWidth = 64
        ExplicitHeight = 12
      end
      object rdt_2: TRLDBText
        Left = 45
        Top = 0
        Width = 28
        Height = 12
        DataField = 'ALU_NOME'
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
        Left = 126
        Top = 0
        Width = 50
        Height = 12
        DataField = 'ALU_SOBRENOME'
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
        Left = 222
        Top = 0
        Width = 20
        Height = 12
        DataField = 'ALU_ENDERECO'
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
        Left = 308
        Top = 0
        Width = 36
        Height = 12
        Alignment = taCenter
        DataField = 'ALU_NUMERO'
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
        Left = 351
        Top = 0
        Width = 22
        Height = 12
        DataField = 'ALU_CEP'
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
        Left = 399
        Top = 0
        Width = 32
        Height = 12
        DataField = 'CID_NOME'
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
        Left = 502
        Top = 0
        Width = 17
        Height = 12
        DataField = 'ALU_RG'
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
        Left = 559
        Top = 0
        Width = 22
        Height = 12
        DataField = 'ALU_CPF'
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
        Left = 630
        Top = 0
        Width = 24
        Height = 12
        DataField = 'ALU_SEXO'
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
        Left = 678
        Top = 0
        Width = 39
        Height = 12
        DataField = 'ALU_TELEFONE'
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
        Left = 744
        Top = 0
        Width = 32
        Height = 12
        DataField = 'ALU_CELULAR'
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
        Left = 815
        Top = 0
        Width = 26
        Height = 12
        DataField = 'PLA_DESC'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_13
        ParentFont = False
      end
      object rdt_14: TRLDBText
        Left = 873
        Top = 0
        Width = 82
        Height = 12
        Alignment = taCenter
        DataField = 'ALU_DTVENC'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_14
        ParentFont = False
      end
      object rdt_15: TRLDBText
        Left = 936
        Top = 0
        Width = 66
        Height = 12
        Alignment = taCenter
        DataField = 'ALU_COBRAR'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_15
        ParentFont = False
      end
      object rdt_16: TRLDBText
        Left = 1002
        Top = 0
        Width = 30
        Height = 12
        Alignment = taCenter
        DataField = 'ALU_STATUS'
        DataSource = DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_16
        ParentFont = False
      end
    end
    inherited RLBand1: TRLBand
      Width = 1047
      ExplicitWidth = 1047
    end
  end
  inherited QPadrao: TIBQuery
    OnDeleteError = QPadraoDeleteError
    OnNewRecord = QPadraoNewRecord
    SQL.Strings = (
      'select'
      '    alu_codigo,'
      '    alu_cid_codigo,'
      '    cid_nome,'
      '    alu_nome,'
      '    alu_sobrenome,'
      '    alu_endereco,'
      '    alu_numero,'
      '    alu_cep,'
      '    alu_rg,'
      '    alu_cpf,'
      '    alu_sexo,'
      '    alu_foto,'
      '    alu_telefone,'
      '    alu_celular,'
      '    alu_pla_codigo,'
      '    pla_desc,'
      '    alu_status,'
      '    alu_dtvenc,'
      '    alu_cobrar,'
      '    alu_bairro'
      'from'
      '    aluno'
      '    left join cidade on alu_cid_codigo = cid_codigo'
      '    left join planos on alu_pla_codigo = pla_codigo')
    object QPadraoALU_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ALU_CODIGO'
      Origin = '"ALUNO"."ALU_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object QPadraoALU_CID_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'ALU_CID_CODIGO'
      Origin = '"ALUNO"."ALU_CID_CODIGO"'
      Required = True
      OnValidate = QPadraoALU_CID_CODIGOValidate
    end
    object QPadraoCID_NOME: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CID_NOME'
      Origin = '"CIDADE"."CID_NOME"'
      Visible = False
      Size = 255
    end
    object QPadraoALU_NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'ALU_NOME'
      Origin = '"ALUNO"."ALU_NOME"'
      Required = True
      Size = 45
    end
    object QPadraoALU_SOBRENOME: TIBStringField
      DisplayLabel = 'Sobrenome'
      FieldName = 'ALU_SOBRENOME'
      Origin = '"ALUNO"."ALU_SOBRENOME"'
      Size = 45
    end
    object QPadraoALU_ENDERECO: TIBStringField
      DisplayLabel = 'Rua'
      FieldName = 'ALU_ENDERECO'
      Origin = '"ALUNO"."ALU_ENDERECO"'
      Size = 100
    end
    object QPadraoALU_NUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'ALU_NUMERO'
      Origin = '"ALUNO"."ALU_NUMERO"'
    end
    object QPadraoALU_CEP: TIBStringField
      DisplayLabel = 'CEP'
      FieldName = 'ALU_CEP'
      Origin = '"ALUNO"."ALU_CEP"'
      EditMask = '99999-999;0;'
      Size = 8
    end
    object QPadraoALU_RG: TIBStringField
      DisplayLabel = 'RG'
      FieldName = 'ALU_RG'
      Origin = '"ALUNO"."ALU_RG"'
      Size = 9
    end
    object QPadraoALU_CPF: TIBStringField
      DisplayLabel = 'CPF'
      FieldName = 'ALU_CPF'
      Origin = '"ALUNO"."ALU_CPF"'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object QPadraoALU_SEXO: TIBStringField
      Tag = 1
      DisplayLabel = 'Sexo'
      FieldName = 'ALU_SEXO'
      Origin = '"ALUNO"."ALU_SEXO"'
      OnGetText = QPadraoALU_SEXOGetText
      OnSetText = QPadraoALU_SEXOSetText
      Size = 1
    end
    object QPadraoALU_FOTO: TIBStringField
      DisplayLabel = 'Foto'
      FieldName = 'ALU_FOTO'
      Origin = '"ALUNO"."ALU_FOTO"'
      Visible = False
      Size = 255
    end
    object QPadraoALU_TELEFONE: TIBStringField
      DisplayLabel = 'Telefone'
      FieldName = 'ALU_TELEFONE'
      Origin = '"ALUNO"."ALU_TELEFONE"'
      EditMask = '(99)9999-9999;0;'
      Size = 11
    end
    object QPadraoALU_CELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'ALU_CELULAR'
      Origin = '"ALUNO"."ALU_CELULAR"'
      EditMask = '(99)9-9999-9999;0;'
      Size = 11
    end
    object QPadraoALU_PLA_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'd. Plano'
      FieldName = 'ALU_PLA_CODIGO'
      Origin = '"ALUNO"."ALU_PLA_CODIGO"'
      Required = True
      OnValidate = QPadraoALU_PLA_CODIGOValidate
    end
    object QPadraoPLA_DESC: TIBStringField
      DisplayLabel = 'Plano'
      FieldName = 'PLA_DESC'
      Origin = '"PLANOS"."PLA_DESC"'
      Visible = False
      Size = 255
    end
    object QPadraoALU_STATUS: TIBStringField
      Tag = 1
      DisplayLabel = 'Status'
      FieldName = 'ALU_STATUS'
      Origin = '"ALUNO"."ALU_STATUS"'
      OnGetText = QPadraoALU_STATUSGetText
      OnSetText = QPadraoALU_STATUSSetText
      Size = 1
    end
    object QPadraoALU_DTVENC: TSmallintField
      DisplayLabel = 'Dia de Vencimento'
      FieldName = 'ALU_DTVENC'
      Origin = '"ALUNO"."ALU_DTVENC"'
    end
    object QPadraoALU_COBRAR: TIBStringField
      Tag = 1
      DisplayLabel = 'Cobrar Atraso?'
      FieldName = 'ALU_COBRAR'
      Origin = '"ALUNO"."ALU_COBRAR"'
      OnGetText = QPadraoALU_COBRARGetText
      OnSetText = QPadraoALU_COBRARSetText
      Size = 1
    end
    object QPadraoALU_BAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'ALU_BAIRRO'
      Origin = '"ALUNO"."ALU_BAIRRO"'
      Size = 100
    end
  end
  inherited UpdSQL: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ALU_CODIGO,'
      '  ALU_CID_CODIGO,'
      '  CID_NOME,'
      '  ALU_NOME,'
      '  ALU_SOBRENOME,'
      '  ALU_ENDERECO,'
      '  ALU_NUMERO,'
      '  ALU_CEP,'
      '  ALU_RG,'
      '  ALU_CPF,'
      '  ALU_SEXO,'
      '  ALU_FOTO,'
      '  ALU_TELEFONE,'
      '  ALU_CELULAR,'
      '  ALU_PLA_CODIGO,'
      '  PLA_DESC,'
      '  ALU_STATUS,'
      '  ALU_DTVENC,'
      '  ALU_COBRAR,'
      '  ALU_BAIRRO'
      'from aluno '
      '    left join cidade on alu_cid_codigo = cid_codigo'
      '    left join planos on alu_pla_codigo = pla_codigo'
      'where'
      '  ALU_CODIGO = :ALU_CODIGO')
    ModifySQL.Strings = (
      'update aluno'
      'set'
      '  ALU_CELULAR = :ALU_CELULAR,'
      '  ALU_CEP = :ALU_CEP,'
      '  ALU_CID_CODIGO = :ALU_CID_CODIGO,'
      '  ALU_CPF = :ALU_CPF,'
      '  ALU_ENDERECO = :ALU_ENDERECO,'
      '  ALU_FOTO = :ALU_FOTO,'
      '  ALU_NOME = :ALU_NOME,'
      '  ALU_NUMERO = :ALU_NUMERO,'
      '  ALU_PLA_CODIGO = :ALU_PLA_CODIGO,'
      '  ALU_RG = :ALU_RG,'
      '  ALU_SEXO = :ALU_SEXO,'
      '  ALU_SOBRENOME = :ALU_SOBRENOME,'
      '  ALU_TELEFONE = :ALU_TELEFONE,'
      '  ALU_STATUS = :ALU_STATUS,'
      '  ALU_DTVENC = :ALU_DTVENC,'
      '  ALU_COBRAR = :ALU_COBRAR,'
      '  ALU_BAIRRO = :ALU_BAIRRO'
      'where'
      '  ALU_CODIGO = :OLD_ALU_CODIGO')
    InsertSQL.Strings = (
      'insert into aluno'
      
        '  (ALU_CELULAR, ALU_CEP, ALU_CID_CODIGO, ALU_CODIGO, ALU_CPF, AL' +
        'U_ENDERECO, '
      
        '   ALU_FOTO, ALU_NOME, ALU_NUMERO, ALU_PLA_CODIGO, ALU_RG, ALU_S' +
        'EXO, ALU_SOBRENOME, '
      '   ALU_TELEFONE, ALU_STATUS, ALU_DTVENC, ALU_COBRAR, ALU_BAIRRO)'
      'values'
      
        '  (:ALU_CELULAR, :ALU_CEP, :ALU_CID_CODIGO, :ALU_CODIGO, :ALU_CP' +
        'F, :ALU_ENDERECO, '
      
        '   :ALU_FOTO, :ALU_NOME, :ALU_NUMERO, :ALU_PLA_CODIGO, :ALU_RG, ' +
        ':ALU_SEXO, '
      
        '   :ALU_SOBRENOME, :ALU_TELEFONE, :ALU_STATUS, :ALU_DTVENC, :ALU' +
        '_COBRAR, :ALU_BAIRRO)')
    DeleteSQL.Strings = (
      'delete from aluno'
      'where'
      '  ALU_CODIGO = :OLD_ALU_CODIGO')
  end
  inherited cmdSql: TIBSQL
    SQL.Strings = (
      'select coalesce(max(alu_codigo),0) as alu_codigo from aluno')
  end
  object OpenDialog1: TOpenDialog
    Left = 696
    Top = 56
  end
end
