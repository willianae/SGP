object DtmConexao: TDtmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 355
  Width = 483
  object AdoConn: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=rwsof' +
      't_pedido'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 270
    Top = 70
  end
  object QryAux: TADOQuery
    Connection = AdoConn
    Parameters = <>
    Left = 168
    Top = 72
  end
  object AdoConnWeb: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=rwsof' +
      't_despa_w'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 270
    Top = 158
  end
  object QryAuxWeb: TADOQuery
    Connection = AdoConnWeb
    Parameters = <>
    Left = 176
    Top = 160
  end
  object IdFTP1: TIdFTP
    IPVersion = Id_IPv4
    ConnectTimeout = 0
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 400
    Top = 112
  end
end
