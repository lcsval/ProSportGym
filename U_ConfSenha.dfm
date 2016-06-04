object F_ConfSenha: TF_ConfSenha
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Configurar Usu'#225'rio/Senha'
  ClientHeight = 178
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
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
  object btn_Sair: TSpeedButton
    Left = 390
    Top = 142
    Width = 100
    Height = 30
    Caption = 'Fechar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
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
    OnClick = btn_SairClick
  end
  object btn_salvar: TSpeedButton
    Left = 284
    Top = 142
    Width = 100
    Height = 30
    Caption = 'Salvar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      76040000424D7604000000000000360000002800000016000000100000000100
      18000000000040040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF2424240D0D0D777777FDFDFDFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD0A0A0A000000000000000000656565FD
      FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFFFFFFFFFFFFFBDBDBD0A0A0A000000000000000000000000
      000000656565FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF0000FFFFFFFFFFFFFFFFFFBDBDBD0A0A0A0000000000000000000000
      00000000000000000000656565FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFBDBDBD0A0A0A00000000000000000000
      0000000000000000000000000000000000656565FDFDFDFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFBDBDBD0A0A0A000000000000000000
      0000001F1F1F5A5A5A000000000000000000000000000000656565FEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C1C1C10A0A0A0000000000000000
      000000001F1F1FDFDFDFFDFDFD62626200000000000000000000000000000065
      6565FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000024242400000000000000
      00000000001F1F1FDFDFDFFFFFFFFFFFFFFDFDFD626262000000000000000000
      000000000000656565FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF00000C0C0C000000
      0000000000001F1F1FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD6262620000
      00000000000000000000000000656565FEFEFEFFFFFFFFFFFFFFFFFF00007A7A
      7A000000000000202020DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
      FDFD626262000000000000000000000000000000656565FEFEFEFFFFFFFFFFFF
      0000FFFFFFC0C0C0A7A7A7F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFD626262000000000000000000000000000000666666FEFE
      FEFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD62626200000000000000000000000000
      0000666666FEFEFE0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD626262000000000000
      0000000000000000007777770000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD6262
      620000000000000000000000000C0C0C0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFD6262620000000000000000002525250000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFDFDFD7575750C0C0C252525C4C4C40000}
    ParentFont = False
    OnClick = btn_salvarClick
  end
  object pan_Usu: TPanel
    Left = 0
    Top = 0
    Width = 498
    Height = 49
    Align = alTop
    TabOrder = 0
    object lab_Nome: TLabel
      Left = 119
      Top = 15
      Width = 44
      Height = 18
      Caption = 'Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lab_Codigo: TLabel
      Left = 16
      Top = 15
      Width = 48
      Height = 18
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lab_Sobrenome: TLabel
      Left = 284
      Top = 14
      Width = 79
      Height = 18
      Caption = 'Sobrenome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lab_vCod: TLabel
      Left = 68
      Top = 18
      Width = 45
      Height = 13
      Caption = 'lab_vCod'
      Color = clBtnFace
      ParentColor = False
    end
    object lab_vNome: TLabel
      Left = 167
      Top = 18
      Width = 26
      Height = 13
      Caption = 'lab_1'
      Color = clBtnFace
      ParentColor = False
    end
    object lab_vSobrenome: TLabel
      Left = 367
      Top = 18
      Width = 26
      Height = 13
      Caption = 'lab_1'
      Color = clBtnFace
      ParentColor = False
    end
  end
  object grb_1: TGroupBox
    Left = 8
    Top = 55
    Width = 482
    Height = 81
    Caption = ' Usu'#225'rio'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object lab_Login: TLabel
      Left = 19
      Top = 32
      Width = 30
      Height = 16
      Caption = 'Login'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lab_Senha: TLabel
      Left = 170
      Top = 32
      Width = 36
      Height = 16
      Caption = 'Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lab_ConfSenha: TLabel
      Left = 321
      Top = 32
      Width = 100
      Height = 16
      Caption = 'Configurar Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edt_Login: TEdit
      Left = 19
      Top = 49
      Width = 145
      Height = 24
      TabStop = False
      Color = clSilver
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object edt_Senha: TEdit
      Left = 170
      Top = 49
      Width = 145
      Height = 24
      Ctl3D = False
      MaxLength = 25
      ParentCtl3D = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object edt_ConfSenha: TEdit
      Left = 321
      Top = 49
      Width = 145
      Height = 24
      Ctl3D = False
      MaxLength = 25
      ParentCtl3D = False
      PasswordChar = '*'
      TabOrder = 2
    end
  end
  object iqr_Usuario: TIBQuery
    Database = DM.Conexao
    Transaction = DM.Transacao
    SQL.Strings = (
      
        'select fun_codigo, fun_nome, fun_sobrenome, fun_login, fun_senha' +
        ' from funcionario where fun_codigo = :codigo')
    UpdateObject = ius_UpUsuario
    Left = 232
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object iqr_UsuarioFUN_CODIGO: TSmallintField
      FieldName = 'FUN_CODIGO'
      Origin = '"FUNCIONARIO"."FUN_CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object iqr_UsuarioFUN_NOME: TIBStringField
      FieldName = 'FUN_NOME'
      Origin = '"FUNCIONARIO"."FUN_NOME"'
      Size = 45
    end
    object iqr_UsuarioFUN_LOGIN: TIBStringField
      FieldName = 'FUN_LOGIN'
      Origin = '"FUNCIONARIO"."FUN_LOGIN"'
      Size = 15
    end
    object iqr_UsuarioFUN_SENHA: TIBStringField
      FieldName = 'FUN_SENHA'
      Origin = '"FUNCIONARIO"."FUN_SENHA"'
    end
    object iqr_UsuarioFUN_SOBRENOME: TIBStringField
      FieldName = 'FUN_SOBRENOME'
      Origin = '"FUNCIONARIO"."FUN_SOBRENOME"'
      Size = 45
    end
  end
  object ius_UpUsuario: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  FUN_CODIGO,'
      '  FUN_NOME,'
      '  FUN_SOBRENOME,'
      '  FUN_LOGIN,'
      '  FUN_SENHA'
      'from funcionario '
      'where'
      '  FUN_CODIGO = :FUN_CODIGO')
    ModifySQL.Strings = (
      'update funcionario'
      'set'
      '  FUN_LOGIN = :FUN_LOGIN,'
      '  FUN_SENHA = :FUN_SENHA'
      'where'
      '  FUN_CODIGO = :OLD_FUN_CODIGO')
    InsertSQL.Strings = (
      'insert into funcionario'
      '  (FUN_LOGIN, FUN_SENHA)'
      'values'
      '  (:FUN_LOGIN, :FUN_SENHA)')
    DeleteSQL.Strings = (
      'delete from funcionario'
      'where'
      '  FUN_CODIGO = :OLD_FUN_CODIGO')
    Left = 128
    Top = 48
  end
end
