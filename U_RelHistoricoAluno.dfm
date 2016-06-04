object F_RelHistoricoAluno: TF_RelHistoricoAluno
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico de Aluno'
  ClientHeight = 521
  ClientWidth = 1052
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    1052
    521)
  PixelsPerInch = 96
  TextHeight = 13
  object btn_Imprimir: TSpeedButton
    Left = 838
    Top = 488
    Width = 100
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'Imprimir'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DBDBDBDBDBDBDB
      DBDBDBDBDBDBDBDBDBDBDB000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFC7C7C7939393
      939393939393000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000009393
      93939393939393C7C7C70F0F0F000000000000000000000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000F0F0F000000000000
      000000000000000000DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001E1E1EE3E3E31E1E1E08080800000000000000000000000000000000000000
      00000000000000000000000000000000000E0E0E9A9A9A161616A9A9A96C6C6C
      6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
      6C6C6C6C6C6C6CA9A9A9FFFFFFFFFFFFFFFFFFFFFFFFB7B7B7B7B7B7B7B7B7B7
      B7B7B7B7B7B7B7B7B7B7B7B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    OnClick = btn_ImprimirClick
    ExplicitLeft = 590
    ExplicitTop = 384
  end
  object btn_Fechar: TSpeedButton
    Left = 944
    Top = 488
    Width = 100
    Height = 30
    Anchors = [akRight, akBottom]
    Caption = 'Fechar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000EAEAEA3E3E3E
      0B0B0B888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8888
      880B0B0B3E3E3EEAEAEA3D3D3D000000000000000000808080FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF8080800000000000000000003D3D3D0B0B0B000000
      000000000000000000808080FFFFFFFFFFFFFFFFFFFFFFFF8080800000000000
      000000000000000B0B0B868686000000000000000000000000000000808080FF
      FFFFFFFFFF808080000000000000000000000000000000868686FFFFFF7F7F7F
      0000000000000000000000000000008080807F7F7F0000000000000000000000
      000000007F7F7FFFFFFFFFFFFFFFFFFF7F7F7F00000000000000000000000000
      00000000000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF7F7F7F0000000000000000000000000000000000000000000000007F7F
      7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F00000000000000
      00000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF7F7F7F0000000000000000000000000000000000007F7F7FFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F00000000000000000000
      00000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      7F7F7F0000000000000000000000000000000000000000000000000000000000
      007F7F7FFFFFFFFFFFFFFFFFFF7F7F7F00000000000000000000000000000080
      80807F7F7F0000000000000000000000000000007F7F7FFFFFFF868686000000
      000000000000000000000000808080FFFFFFFFFFFF8080800000000000000000
      000000000000008686860B0B0B000000000000000000000000808080FFFFFFFF
      FFFFFFFFFFFFFFFF8080800000000000000000000000000B0B0B3D3D3D000000
      000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080800000
      000000000000003D3D3DEAEAEA3E3E3E0B0B0B888888FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8888880B0B0B3E3E3EEAEAEA}
    ParentFont = False
    OnClick = btn_FecharClick
    ExplicitLeft = 696
    ExplicitTop = 384
  end
  object grb_Filtro: TGroupBox
    Left = 8
    Top = 7
    Width = 1036
    Height = 74
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Filtro '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lab_Aluno: TLabel
      Left = 16
      Top = 26
      Width = 31
      Height = 14
      Caption = 'Aluno'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn_Filtrar: TSpeedButton
      Left = 359
      Top = 35
      Width = 100
      Height = 30
      Caption = 'Filtrar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF686868818181FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56565600
        00009D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF565656000000050505BCBCBCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56565600
        0000000000595959FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF565656000000000000565656FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56565600
        0000000000565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF565656000000000000565656FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF55555500
        0000000000555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE3E3E3181818000000000000181818E3E3E3FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB2A2A2A00000000
        00000000000000002A2A2AEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF2F2F2353535000000000000000000000000000000000000353535F2F2
        F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F741414100000000000000000000
        0000000000000000000000000000414141F7F7F7FFFFFFFFFFFFFFFFFFFBFBFB
        4F4F4F0000000000000000000000000000000000000000000000000000000000
        004F4F4FFBFBFBFFFFFFFEFEFE5E5E5E00000000000000000000000000000000
        00000000000000000000000000000000000000005E5E5EFEFEFE727272000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000072727226262600000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000262626}
      ParentFont = False
      OnClick = btn_FiltrarClick
    end
    object dlk_Aluno: TDBLookupComboBox
      Left = 59
      Top = 41
      Width = 294
      Height = 24
      Ctl3D = False
      KeyField = 'ALU_CODIGO'
      ListField = 'ALUNO'
      ListSource = ds_Alunos
      ParentCtl3D = False
      TabOrder = 1
      OnClick = dlk_AlunoClick
      OnKeyPress = dlk_AlunoKeyPress
    end
    object edt_CodAlu: TEdit
      Left = 16
      Top = 41
      Width = 42
      Height = 24
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edt_CodAluExit
      OnKeyPress = edt_CodAluKeyPress
    end
  end
  object grb_Result: TGroupBox
    Left = 8
    Top = 87
    Width = 1036
    Height = 395
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Resultado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      1036
      395)
    object dgd_1: TDBGrid
      Left = 11
      Top = 21
      Width = 1013
      Height = 361
      Anchors = [akLeft, akTop, akRight, akBottom]
      Ctl3D = False
      DataSource = ds_Dados
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'mesano'
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sobrenome'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'plano'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vencimento'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'datapgto'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'diasdeatraso'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'multa'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlrmensalidade'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlrtot'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlrpago'
          Visible = True
        end>
    end
  end
  object rpt_rel: TRLReport
    Left = 24
    Top = 504
    Width = 794
    Height = 1123
    Margins.BottomMargin = 13.000000000000000000
    DataSource = ds_Dados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relat'#243'rio de Hist'#243'rico de Aluno'
    Visible = False
    object RBA_CABECALHO: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 90
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      BeforePrint = rba_1BeforePrint
      object RIM_LOGO: TRLImage
        Left = 619
        Top = 9
        Width = 83
        Height = 75
        Scaled = True
      end
      object rsy_Titulo1: TRLSystemInfo
        Left = 18
        Top = 34
        Width = 72
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        Info = itTitle
        ParentFont = False
      end
      object rla_Aluno: TRLLabel
        Left = 23
        Top = 60
        Width = 49
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RBA_ROD: TRLBand
      Left = 38
      Top = 221
      Width = 718
      Height = 39
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      object rpa_Obs: TRLPanel
        Left = 0
        Top = 3
        Width = 718
        Height = 33
        Borders.Sides = sdAll
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        object rpa_TotPG: TRLPanel
          Left = 645
          Top = 1
          Width = 70
          Height = 31
          object rla_TotPg: TRLLabel
            Left = 8
            Top = 0
            Width = 54
            Height = 12
            Align = faCenterTop
            Caption = 'Total Pag.'
          end
          object rsy_TotPg: TRLSystemInfo
            Left = -20
            Top = 16
            Width = 110
            Height = 15
            Align = faCenterBottom
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itLastPageNumber
            ParentFont = False
          end
        end
        object rpa_numPG: TRLPanel
          Left = 577
          Top = 1
          Width = 69
          Height = 31
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object rla_Numpg: TRLLabel
            Left = 9
            Top = 0
            Width = 51
            Height = 12
            Align = faCenterTop
            Caption = 'N'#250'm Pag.'
          end
          object rsy_Numpg: TRLSystemInfo
            Left = -9
            Top = 16
            Width = 86
            Height = 15
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itPageNumber
            ParentFont = False
          end
        end
        object rpa_data: TRLPanel
          Left = 439
          Top = 0
          Width = 138
          Height = 31
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object rla_DataImp: TRLLabel
            Left = 19
            Top = 0
            Width = 100
            Height = 12
            Align = faCenterTop
            Alignment = taCenter
            Caption = 'Data da Impress'#227'o'
          end
          object rsy_DataImp: TRLSystemInfo
            Left = 51
            Top = 16
            Width = 36
            Height = 15
            Align = faCenterBottom
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = itNow
            ParentFont = False
          end
        end
        object rla_ObsFim: TRLLabel
          Left = 1
          Top = 1
          Width = 230
          Height = 12
          Align = faLeftTop
          Caption = 'Observa'#231#227'o ou coment'#225'rio sobre o Relat'#243'rio:'
        end
        object rsy_Titulo: TRLSystemInfo
          Left = 1
          Top = 17
          Width = 35
          Height = 15
          Align = faLeftBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = itTitle
          ParentFont = False
        end
      end
    end
    object rba_Titulo: TRLBand
      Left = 38
      Top = 128
      Width = 718
      Height = 16
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedLeft = True
      Borders.FixedRight = True
      Borders.FixedBottom = True
      Color = clSilver
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 13
        Top = 0
        Width = 46
        Height = 14
        Caption = 'M'#234's/Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 87
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
      object RLLabel3: TRLLabel
        Left = 152
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
      object RLLabel5: TRLLabel
        Left = 239
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
      object RLLabel6: TRLLabel
        Left = 287
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
      object RLLabel7: TRLLabel
        Left = 361
        Top = 0
        Width = 52
        Height = 14
        Caption = 'Data Pgto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 435
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
      object RLLabel9: TRLLabel
        Left = 487
        Top = 0
        Width = 75
        Height = 14
        Caption = 'Dias de Atraso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 574
        Top = 0
        Width = 28
        Height = 14
        Caption = 'Multa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel11: TRLLabel
        Left = 611
        Top = 0
        Width = 46
        Height = 14
        Caption = 'Vlr. Men.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 666
        Top = 0
        Width = 41
        Height = 14
        Caption = 'Vlr. Tot.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object rba_Detalhes: TRLBand
      Left = 38
      Top = 144
      Width = 718
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = False
      Borders.FixedLeft = True
      Borders.FixedRight = True
      object RLDBText1: TRLDBText
        Left = 13
        Top = 1
        Width = 36
        Height = 12
        DataField = 'mesano'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel1
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 87
        Top = 1
        Width = 26
        Height = 12
        DataField = 'nome'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel2
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 152
        Top = 1
        Width = 49
        Height = 12
        DataField = 'sobrenome'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel3
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 239
        Top = 1
        Width = 25
        Height = 12
        DataField = 'plano'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel5
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 291
        Top = 1
        Width = 52
        Height = 12
        Alignment = taCenter
        DataField = 'vencimento'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel6
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 361
        Top = 1
        Width = 39
        Height = 12
        DataField = 'datapgto'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel7
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 435
        Top = 1
        Width = 29
        Height = 12
        DataField = 'status'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel8
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 496
        Top = 1
        Width = 56
        Height = 12
        Alignment = taCenter
        DataField = 'diasdeatraso'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel9
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 574
        Top = 1
        Width = 26
        Height = 12
        DataField = 'multa'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel10
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 601
        Top = 1
        Width = 66
        Height = 12
        Alignment = taCenter
        DataField = 'vlrmensalidade'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel11
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 673
        Top = 1
        Width = 26
        Height = 12
        Alignment = taCenter
        DataField = 'vlrtot'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel4
        ParentFont = False
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 160
      Width = 718
      Height = 16
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Borders.FixedTop = True
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 176
      Width = 718
      Height = 45
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Borders.FixedLeft = True
      Borders.FixedTop = True
      Borders.FixedRight = True
      Borders.FixedBottom = True
      object RLLabel12: TRLLabel
        Left = 550
        Top = 6
        Width = 72
        Height = 14
        Caption = 'Vlr. Total Men.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBResult1: TRLDBResult
        Left = 628
        Top = 6
        Width = 115
        Height = 14
        DataField = 'vlrmensalidade'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 550
        Top = 26
        Width = 46
        Height = 14
        Caption = 'Vlr. Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLDBResult2: TRLDBResult
        Left = 628
        Top = 26
        Width = 78
        Height = 14
        DataField = 'vlrtot'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
  end
  object iqr_Alunos: TIBQuery
    Database = DM.Conexao
    Transaction = DM.Transacao
    SQL.Strings = (
      
        'select alu_codigo, alu_nome || '#39' '#39' || alu_sobrenome as aluno fro' +
        'm aluno order by aluno')
    Left = 496
    Top = 24
    object iqr_AlunosALU_CODIGO: TSmallintField
      FieldName = 'ALU_CODIGO'
      Origin = '"ALUNO"."ALU_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object iqr_AlunosALUNO: TIBStringField
      FieldName = 'ALUNO'
      ProviderFlags = []
      Size = 91
    end
  end
  object ds_Alunos: TDataSource
    DataSet = iqr_Alunos
    Left = 560
    Top = 24
  end
  object cds_Dados: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'mesano'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'sobrenome'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'plano'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'vencimento'
        DataType = ftInteger
      end
      item
        Name = 'datapgto'
        DataType = ftDate
      end
      item
        Name = 'status'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'diasdeatraso'
        DataType = ftInteger
      end
      item
        Name = 'multa'
        DataType = ftFloat
      end
      item
        Name = 'vlrmensalidade'
        DataType = ftFloat
      end
      item
        Name = 'vlrtot'
        DataType = ftFloat
      end
      item
        Name = 'vlrpago'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 688
    Top = 24
    Data = {
      1E0100009619E0BD01000000180000000C0000000000030000001E01066D6573
      616E6F0100490000000100055749445448020002001400046E6F6D6501004900
      00000100055749445448020002002D0009736F6272656E6F6D65010049000000
      0100055749445448020002002D0005706C616E6F020049000000010005574944
      544802000200FF000A76656E63696D656E746F04000100000000000864617461
      7067746F04000600000000000673746174757301004900000001000557494454
      480200020001000C64696173646561747261736F0400010000000000056D756C
      746108000400000000000E766C726D656E73616C696461646508000400000000
      0006766C72746F74080004000000000007766C727061676F0800040000000000
      0000}
    object cds_Dadosmesano: TStringField
      DisplayLabel = 'M'#234's/Ano'
      FieldName = 'mesano'
    end
    object cds_Dadosnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 45
    end
    object cds_Dadossobrenome: TStringField
      DisplayLabel = 'Sobrenome'
      FieldName = 'sobrenome'
      Size = 45
    end
    object cds_Dadosplano: TStringField
      DisplayLabel = 'Plano'
      FieldName = 'plano'
      Size = 255
    end
    object cds_Dadosvencimento: TIntegerField
      DisplayLabel = 'Venc.'
      FieldName = 'vencimento'
    end
    object cds_Dadosdatapgto: TDateField
      DisplayLabel = 'Dt. Pgto.'
      FieldName = 'datapgto'
    end
    object cds_Dadosstatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      OnGetText = cds_DadosstatusGetText
      OnSetText = cds_DadosstatusSetText
      Size = 1
    end
    object cds_Dadosdiasdeatrazo: TIntegerField
      DisplayLabel = 'Dias de Atraso'
      FieldName = 'diasdeatraso'
    end
    object cds_Dadosmulta: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'multa'
      DisplayFormat = '#0.00'
    end
    object cds_Dadosvlrmensalidade: TFloatField
      DisplayLabel = 'Vlr. Mensalidade'
      FieldName = 'vlrmensalidade'
      DisplayFormat = '#0.00'
    end
    object cds_Dadosvlrtot: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'vlrtot'
      DisplayFormat = '#0.00'
    end
    object cds_Dadosvlrpago: TFloatField
      DisplayLabel = 'Vlr. Pago'
      FieldName = 'vlrpago'
      DisplayFormat = '#0.00'
    end
  end
  object ds_Dados: TDataSource
    DataSet = cds_Dados
    Left = 744
    Top = 24
  end
  object iqr_Filtro: TIBQuery
    Database = DM.Conexao
    Transaction = DM.Transacao
    SQL.Strings = (
      'select'
      '    alu_nome,'
      '    alu_sobrenome,'
      '    pla_desc,'
      '    COALESCE(alu_dtvenc, pla_venc) as venc,'
      '    men_datapg,'
      '    men_status,'
      '    alu_cobrar,'
      '    pla_valor,'
      '    men_valor as vlr_pago'
      'from'
      '    aluno'
      '    left join planos on ALU_PLA_CODIGO = PLA_CODIGO'
      '    left join mensalidade on alu_codigo = MEN_ALU_CODIGO'
      'where'
      '    alu_codigo = :alu_codigo'
      '    and'
      '    extract(month from men_datapg) = :mes')
    Left = 632
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'alu_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptUnknown
      end>
  end
end
