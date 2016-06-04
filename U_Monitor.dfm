object F_Monitor: TF_Monitor
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Monitor de Alunos'
  ClientHeight = 508
  ClientWidth = 1049
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
  PixelsPerInch = 96
  TextHeight = 13
  object Rdg_Filtro: TRadioGroup
    Left = 0
    Top = 0
    Width = 1049
    Height = 73
    Align = alTop
    Caption = ' Filtro '
    Columns = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Alunos Atrasados no m'#234's atual'
      'Alunos em Dia no m'#234's atual'
      'Alunos '#224' Pagar no m'#234's atual')
    ParentFont = False
    TabOrder = 0
    OnClick = Rdg_FiltroClick
  end
  object Grid_Monitor: TDBGrid
    Left = 0
    Top = 73
    Width = 1049
    Height = 394
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 467
    Width = 1049
    Height = 41
    Align = alBottom
    TabOrder = 5
    DesignSize = (
      1049
      41)
    object btn_Atualizar: TSpeedButton
      Left = 720
      Top = 6
      Width = 100
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Atualizar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFC9C9C96363632323230606060C0C0C2E2E2E767676E0E0E0FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F460606001010100000000000000
        0000000000000000000000070707868686FEFEFEFFFFFFFFFFFFFFFFFFF4F4F4
        3A3A3A0000000202025A5A5AB4B4B4DCDCDCD9D9D9A6A6A64343430000000000
        00676767FFFFFFFFFFFFFFFFFF636363000000131313C0C0C0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF9D9D9D0404040000009A9A9AFFFFFFCDCDCD010101
        020202C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090
        90000000131313F4F4F46868680000005C5C5CFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD2A2A2A000000A4A4A4272727000000
        B8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFAFAFAF2F2F2FD0D0D0070707000000E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF070707000000
        E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7FAFAFA272727000000B8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8F8F81B1B1B0000000000000000000000000000002B2B2B686868000000
        5C5C5CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB3737370C0C0C0C0C0C0505
        05000000000000000000CDCDCD010101020202C0C0C0FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFEDEDED1F1F1F000000000000000000FFFFFF636363
        000000131313C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF3939390000
        00131313000000000000FFFFFFF5F5F53A3A3A0000000202025A5A5AB4B4B4DC
        DCDCD6D6D6999999212121000000080808BBBBBB000000000000FFFFFFFFFFFF
        F4F4F4606060010101000000000000000000000000000000000000101010BFBF
        BFF8F8F8000000000000FFFFFFFFFFFFFFFFFFFFFFFFC9C9C963636323232306
        06060C0C0C2E2E2E777777E6E6E6FFFFFFFFFFFF3737373E3E3E}
      ParentFont = False
      OnClick = btn_AtualizarClick
      ExplicitLeft = 496
    end
    object btn_Imprimir: TSpeedButton
      Left = 826
      Top = 6
      Width = 100
      Height = 30
      Anchors = [akTop, akRight]
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
      ExplicitLeft = 602
    end
    object btn_Fechar: TSpeedButton
      Left = 932
      Top = 6
      Width = 100
      Height = 30
      Anchors = [akTop, akRight]
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
      ExplicitLeft = 708
    end
  end
  object rpt_Atrasados: TRLReport
    Left = -5
    Top = 467
    Width = 794
    Height = 1123
    Margins.BottomMargin = 13.000000000000000000
    DataSource = ds_Atrasados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relat'#243'rio de Alunos Atrasados (M'#234's Atual)'
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
      BeforePrint = RBA_CABECALHOBeforePrint
      object RIM_LOGO: TRLImage
        Left = 627
        Top = 8
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
      object rla_ImpressoPor: TRLLabel
        Left = 23
        Top = 60
        Width = 81
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
      Top = 176
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
        Width = 717
        Height = 33
        Borders.Sides = sdAll
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        object rpa_TotPG: TRLPanel
          Left = 646
          Top = 1
          Width = 72
          Height = 31
          object rla_TotPg: TRLLabel
            Left = 9
            Top = 0
            Width = 54
            Height = 12
            Align = faCenterTop
            Caption = 'Total Pag.'
          end
          object rsy_TotPg: TRLSystemInfo
            Left = -19
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
          Left = 578
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
          Left = 440
          Top = 1
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
      object rla_1: TRLLabel
        Left = 10
        Top = 0
        Width = 56
        Height = 14
        Caption = 'C'#243'd. Aluno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object rla_2: TRLLabel
        Left = 90
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
        Left = 367
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
      object rla_4: TRLLabel
        Left = 607
        Top = 0
        Width = 93
        Height = 14
        Caption = 'Dia de Vencimento'
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
      object rdt_1: TRLDBText
        Left = 3
        Top = 0
        Width = 70
        Height = 14
        Alignment = taCenter
        DataField = 'ALU_CODIGO'
        DataSource = ds_Atrasados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_1
        ParentFont = False
      end
      object rdt_2: TRLDBText
        Left = 90
        Top = 1
        Width = 39
        Height = 14
        DataField = 'ALUNO'
        DataSource = ds_Atrasados
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
        Width = 84
        Height = 14
        DataField = 'DIASDEATRASO'
        DataSource = ds_Atrasados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_3
        ParentFont = False
      end
      object rdt_4: TRLDBText
        Left = 629
        Top = 1
        Width = 48
        Height = 14
        Alignment = taCenter
        DataField = 'DIAVENC'
        DataSource = ds_Atrasados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = rla_4
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
  end
  object rpt_Emdia: TRLReport
    Left = 56
    Top = 438
    Width = 794
    Height = 1123
    Margins.BottomMargin = 13.000000000000000000
    DataSource = ds_Emdia
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relat'#243'rio de Alunos em Dia no m'#234's atual'
    Visible = False
    object RLBand2: TRLBand
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
      BeforePrint = RLBand2BeforePrint
      object RLImage1: TRLImage
        Left = 627
        Top = 8
        Width = 83
        Height = 75
        Scaled = True
      end
      object RLSystemInfo1: TRLSystemInfo
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
      object RLLabel1: TRLLabel
        Left = 23
        Top = 60
        Width = 81
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 176
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
      object RLPanel1: TRLPanel
        Left = 0
        Top = 3
        Width = 717
        Height = 33
        Borders.Sides = sdAll
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        object RLPanel2: TRLPanel
          Left = 646
          Top = 1
          Width = 72
          Height = 31
          object RLLabel2: TRLLabel
            Left = 9
            Top = 0
            Width = 54
            Height = 12
            Align = faCenterTop
            Caption = 'Total Pag.'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = -19
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
        object RLPanel3: TRLPanel
          Left = 578
          Top = 1
          Width = 69
          Height = 31
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object RLLabel3: TRLLabel
            Left = 9
            Top = 0
            Width = 51
            Height = 12
            Align = faCenterTop
            Caption = 'N'#250'm Pag.'
          end
          object RLSystemInfo3: TRLSystemInfo
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
        object RLPanel4: TRLPanel
          Left = 440
          Top = 1
          Width = 138
          Height = 31
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel4: TRLLabel
            Left = 19
            Top = 0
            Width = 100
            Height = 12
            Align = faCenterTop
            Alignment = taCenter
            Caption = 'Data da Impress'#227'o'
          end
          object RLSystemInfo4: TRLSystemInfo
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
        object RLLabel5: TRLLabel
          Left = 1
          Top = 1
          Width = 230
          Height = 12
          Align = faLeftTop
          Caption = 'Observa'#231#227'o ou coment'#225'rio sobre o Relat'#243'rio:'
        end
        object RLSystemInfo5: TRLSystemInfo
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
    object RLBand4: TRLBand
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
      object RLLabel6: TRLLabel
        Left = 10
        Top = 0
        Width = 56
        Height = 14
        Caption = 'C'#243'd. Aluno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 90
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
      object RLLabel8: TRLLabel
        Left = 367
        Top = 0
        Width = 96
        Height = 14
        Caption = 'Data de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 607
        Top = 0
        Width = 93
        Height = 14
        Caption = 'Dia de Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand5: TRLBand
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
        Left = 3
        Top = 0
        Width = 70
        Height = 14
        Alignment = taCenter
        DataField = 'ALU_CODIGO'
        DataSource = ds_Emdia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel6
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 90
        Top = 1
        Width = 39
        Height = 14
        DataField = 'ALUNO'
        DataSource = ds_Emdia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel7
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 367
        Top = 1
        Width = 110
        Height = 14
        DataField = 'DATADEPAGAMENTO'
        DataSource = ds_Emdia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel8
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 629
        Top = 1
        Width = 48
        Height = 14
        Alignment = taCenter
        DataField = 'DIAVENC'
        DataSource = ds_Emdia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel9
        ParentFont = False
      end
    end
    object RLBand6: TRLBand
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
  end
  object rpt_APagar: TRLReport
    Left = 129
    Top = 416
    Width = 794
    Height = 1123
    Margins.BottomMargin = 13.000000000000000000
    DataSource = ds_APagar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relat'#243'rio de Alunos '#224' Pagar (M'#234's Atual)'
    Visible = False
    object RLBand7: TRLBand
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
      BeforePrint = RLBand7BeforePrint
      object RLImage2: TRLImage
        Left = 627
        Top = 8
        Width = 83
        Height = 75
        Scaled = True
      end
      object RLSystemInfo6: TRLSystemInfo
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
      object RLLabel10: TRLLabel
        Left = 23
        Top = 60
        Width = 81
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 176
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
      object RLPanel5: TRLPanel
        Left = 0
        Top = 3
        Width = 717
        Height = 33
        Borders.Sides = sdAll
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        object RLPanel6: TRLPanel
          Left = 646
          Top = 1
          Width = 72
          Height = 31
          object RLLabel11: TRLLabel
            Left = 9
            Top = 0
            Width = 54
            Height = 12
            Align = faCenterTop
            Caption = 'Total Pag.'
          end
          object RLSystemInfo7: TRLSystemInfo
            Left = -19
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
        object RLPanel7: TRLPanel
          Left = 578
          Top = 1
          Width = 69
          Height = 31
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object RLLabel12: TRLLabel
            Left = 9
            Top = 0
            Width = 51
            Height = 12
            Align = faCenterTop
            Caption = 'N'#250'm Pag.'
          end
          object RLSystemInfo8: TRLSystemInfo
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
        object RLPanel8: TRLPanel
          Left = 440
          Top = 1
          Width = 138
          Height = 31
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLLabel13: TRLLabel
            Left = 19
            Top = 0
            Width = 100
            Height = 12
            Align = faCenterTop
            Alignment = taCenter
            Caption = 'Data da Impress'#227'o'
          end
          object RLSystemInfo9: TRLSystemInfo
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
        object RLLabel14: TRLLabel
          Left = 1
          Top = 1
          Width = 230
          Height = 12
          Align = faLeftTop
          Caption = 'Observa'#231#227'o ou coment'#225'rio sobre o Relat'#243'rio:'
        end
        object RLSystemInfo10: TRLSystemInfo
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
    object RLBand9: TRLBand
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
      object RLLabel15: TRLLabel
        Left = 10
        Top = 0
        Width = 56
        Height = 14
        Caption = 'C'#243'd. Aluno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel16: TRLLabel
        Left = 90
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
      object RLLabel18: TRLLabel
        Left = 607
        Top = 0
        Width = 93
        Height = 14
        Caption = 'Dia de Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand10: TRLBand
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
      object RLDBText5: TRLDBText
        Left = 3
        Top = 0
        Width = 70
        Height = 14
        Alignment = taCenter
        DataField = 'ALU_CODIGO'
        DataSource = ds_APagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel15
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 90
        Top = 1
        Width = 39
        Height = 14
        DataField = 'ALUNO'
        DataSource = ds_APagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel16
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 629
        Top = 1
        Width = 48
        Height = 14
        Alignment = taCenter
        DataField = 'DIAVENC'
        DataSource = ds_APagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Holder = RLLabel18
        ParentFont = False
      end
    end
    object RLBand11: TRLBand
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
  end
  object iqr_Atrasados: TIBQuery
    Database = DM.Conexao
    Transaction = DM.Transacao
    SQL.Strings = (
      'select'
      '    alu_codigo,'
      '    alu_nome || '#39' '#39' || alu_sobrenome as aluno,'
      '    coalesce(alu_dtvenc,pla_venc) as diavenc,'
      
        '    extract(day from men_datapg) - coalesce(alu_dtvenc,pla_venc)' +
        ' as diasdeatraso'
      'from'
      '    aluno'
      '    left join planos on alu_pla_codigo = pla_codigo'
      '    left join mensalidade on alu_codigo = MEN_ALU_CODIGO'
      'where'
      '    extract(day from men_datapg) > coalesce(alu_dtvenc,pla_venc)'
      '    and'
      '    men_status = '#39'A'#39
      '    and'
      
        '    extract(month from men_datapg) = extract(month from current_' +
        'date)'
      'order by'
      '    alu_codigo')
    Left = 80
    Top = 256
    object iqr_AtrasadosALU_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'd. Aluno'
      FieldName = 'ALU_CODIGO'
      Origin = '"ALUNO"."ALU_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object iqr_AtrasadosALUNO: TIBStringField
      DisplayLabel = 'Aluno'
      FieldName = 'ALUNO'
      ProviderFlags = []
      Size = 91
    end
    object iqr_AtrasadosDIAVENC: TSmallintField
      DisplayLabel = 'Dia de Vencimento'
      FieldName = 'DIAVENC'
      ProviderFlags = []
    end
    object iqr_AtrasadosDIASDEATRASO: TLargeintField
      DisplayLabel = 'Qtde de dias em atraso'
      FieldName = 'DIASDEATRASO'
      ProviderFlags = []
    end
  end
  object ds_Atrasados: TDataSource
    DataSet = iqr_Atrasados
    Left = 80
    Top = 304
  end
  object iqr_Emdia: TIBQuery
    Database = DM.Conexao
    Transaction = DM.Transacao
    SQL.Strings = (
      'select'
      '    alu_codigo,'
      '    alu_nome || '#39' '#39' || alu_sobrenome as aluno,'
      '    coalesce(alu_dtvenc,pla_venc) as diavenc,'
      '    men_datapg as datadepagamento'
      'from'
      '    aluno'
      '    left join planos on alu_pla_codigo = pla_codigo'
      '    left join mensalidade on alu_codigo = MEN_ALU_CODIGO'
      'where'
      
        '    --extract(day from men_datapg) <= coalesce(alu_dtvenc,pla_ve' +
        'nc)'
      '    --and'
      '    men_status = '#39'P'#39
      '    and'
      
        '    extract(month from men_datapg) = extract(month from current_' +
        'date)'
      'order by'
      '    alu_codigo')
    Left = 216
    Top = 256
    object iqr_EmdiaALU_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'd. Aluno'
      FieldName = 'ALU_CODIGO'
      Origin = '"ALUNO"."ALU_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object iqr_EmdiaALUNO: TIBStringField
      DisplayLabel = 'Aluno'
      FieldName = 'ALUNO'
      ProviderFlags = []
      Size = 91
    end
    object iqr_EmdiaDIAVENC: TSmallintField
      DisplayLabel = 'Dia de Vencimento'
      FieldName = 'DIAVENC'
      ProviderFlags = []
    end
    object iqr_EmdiaDATADEPAGAMENTO: TDateField
      DisplayLabel = 'Data de Pagamento'
      FieldName = 'DATADEPAGAMENTO'
      Origin = '"MENSALIDADE"."MEN_DATAPG"'
    end
  end
  object ds_Emdia: TDataSource
    DataSet = iqr_Emdia
    Left = 216
    Top = 312
  end
  object iqr_APagar: TIBQuery
    Database = DM.Conexao
    Transaction = DM.Transacao
    SQL.Strings = (
      'select'
      '    alu_codigo,'
      '    alu_nome || '#39' '#39' || alu_sobrenome as aluno,'
      '    coalesce(alu_dtvenc,pla_venc) as diavenc'
      'from'
      '    aluno'
      '    left join planos on alu_pla_codigo = pla_codigo'
      '    left join mensalidade on alu_codigo = MEN_ALU_CODIGO'
      'where'
      
        '    extract(day from men_datapg) <= coalesce(alu_dtvenc,pla_venc' +
        ')'
      '    and'
      '    men_status = '#39'A'#39
      '    and'
      
        '    extract(month from men_datapg) = extract(month from current_' +
        'date)'
      'order by'
      '    alu_codigo')
    Left = 328
    Top = 256
    object iqr_APagarALU_CODIGO: TSmallintField
      DisplayLabel = 'C'#243'd. Aluno'
      FieldName = 'ALU_CODIGO'
      Origin = '"ALUNO"."ALU_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object iqr_APagarALUNO: TIBStringField
      DisplayLabel = 'Aluno'
      FieldName = 'ALUNO'
      ProviderFlags = []
      Size = 91
    end
    object iqr_APagarDIAVENC: TSmallintField
      DisplayLabel = 'Dia de Vencimento'
      FieldName = 'DIAVENC'
      ProviderFlags = []
    end
  end
  object ds_APagar: TDataSource
    DataSet = iqr_APagar
    Left = 328
    Top = 312
  end
end
