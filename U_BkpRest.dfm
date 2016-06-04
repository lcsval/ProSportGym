object F_BkpRest: TF_BkpRest
  Left = 192
  Top = 124
  Align = alCustom
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Backup/Restaura'#231#227'o'
  ClientHeight = 365
  ClientWidth = 566
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object btnFechar: TSpeedButton
    Left = 458
    Top = 318
    Width = 100
    Height = 40
    Caption = '&Fechar'
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
    OnClick = btnFecharClick
  end
  object btn_IniciarBKP: TSpeedButton
    Left = 358
    Top = 318
    Width = 100
    Height = 40
    Caption = 'Iniciar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000383838151515
      838383F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0000000000000000001616168F8F8FF8F8F8FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000001D1D1D9B9B9BFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000026
      2626A7A7A7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000002F2F2FB3B3B3FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      00000000000000000000003A3A3ABFBFBFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00464646CACACAFFFFFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000101015D5D5D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000101015D5D5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000464646CACACAFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000003A3A3ABFBF
      BFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      00000000002F2F2FB3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      000000000000000000000000000000262626A7A7A7FDFDFDFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0000000000000000000000000000001D1D1D9B9B9BFB
      FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000001616168F8F8FF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF373737131313838383F3F3F3FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    OnClick = btn_IniciarBKPClick
  end
  object pgc_Control: TPageControl
    Left = 0
    Top = 0
    Width = 566
    Height = 145
    ActivePage = tbs_Backup
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tbs_Backup: TTabSheet
      Caption = 'Backup'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object lab_CaminhoBD: TLabel
        Left = 11
        Top = 3
        Width = 112
        Height = 18
        Caption = 'Banco de Dados:'
      end
      object lab_CaminhoBKP: TLabel
        Left = 11
        Top = 57
        Width = 134
        Height = 18
        Caption = 'Caminho do Backup:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btn_SelPathBKP: TSpeedButton
        Left = 522
        Top = 81
        Width = 23
        Height = 22
        Caption = '...'
        Flat = True
        OnClick = btn_SelPathBKPClick
      end
      object btn_SelBD: TSpeedButton
        Left = 522
        Top = 27
        Width = 23
        Height = 22
        Caption = '...'
        Flat = True
        OnClick = btn_SelBDClick
      end
      object edt_CaminhoBD: TEdit
        Left = 11
        Top = 27
        Width = 505
        Height = 24
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object edt_CaminhoBKP: TEdit
        Left = 11
        Top = 81
        Width = 505
        Height = 24
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object tbs_Restauracao: TTabSheet
      Caption = 'Restaura'#231#227'o'
      ImageIndex = 1
      object btn_SelPathBKPREST: TSpeedButton
        Left = 522
        Top = 81
        Width = 23
        Height = 22
        Caption = '...'
        Flat = True
        OnClick = btn_SelPathBKPRESTClick
      end
      object lab_1: TLabel
        Left = 11
        Top = 57
        Width = 105
        Height = 18
        Caption = 'Arquivo Backup:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btn_SelBDREST: TSpeedButton
        Left = 522
        Top = 27
        Width = 23
        Height = 22
        Caption = '...'
        Flat = True
        OnClick = btn_SelBDRESTClick
      end
      object lab_2: TLabel
        Left = 11
        Top = 3
        Width = 112
        Height = 18
        Caption = 'Banco de Dados:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edt_CaminhoBKPREST: TEdit
        Left = 11
        Top = 81
        Width = 505
        Height = 24
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object edt_CaminhoBDREST: TEdit
        Left = 11
        Top = 27
        Width = 505
        Height = 24
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object grb_Log: TGroupBox
    Left = 8
    Top = 151
    Width = 550
    Height = 161
    Caption = ' Log '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object mem_log: TMemo
      Left = 7
      Top = 24
      Width = 534
      Height = 127
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object IBBackupService1: TIBBackupService
    LoginPrompt = False
    TraceFlags = []
    BlockingFactor = 0
    Options = []
    Left = 256
  end
  object IBRestoreService1: TIBRestoreService
    LoginPrompt = False
    TraceFlags = []
    PageBuffers = 0
    Left = 208
  end
  object OpenDialog1: TOpenDialog
    Left = 312
  end
end
