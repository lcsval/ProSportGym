object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 136
  Width = 189
  object Conexao: TIBDatabase
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    Left = 40
    Top = 40
  end
  object Transacao: TIBTransaction
    DefaultDatabase = Conexao
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 104
    Top = 40
  end
end
