inherited DtmDadosBaixa: TDtmDadosBaixa
  OldCreateOrder = True
  inherited cdsPesquisa: TClientDataSet
    object cdsPesquisacod_pedido: TLargeintField
      FieldName = 'cod_pedido'
      ReadOnly = True
    end
    object cdsPesquisaloja: TStringField
      FieldName = 'loja'
      ReadOnly = True
      Size = 50
    end
    object cdsPesquisafornecedor: TStringField
      FieldName = 'fornecedor'
      ReadOnly = True
      Size = 50
    end
    object cdsPesquisacod_fornecedor: TLargeintField
      FieldName = 'cod_fornecedor'
      ReadOnly = True
    end
    object cdsPesquisacod_loja: TLargeintField
      FieldName = 'cod_loja'
      ReadOnly = True
    end
    object cdsPesquisadata_prev_faturamento: TDateField
      FieldName = 'data_prev_faturamento'
      ReadOnly = True
    end
    object cdsPesquisastatus: TStringField
      FieldName = 'status'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object cdsPesquisavalor_pedido: TFloatField
      FieldName = 'valor_pedido'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object cdsPesquisaqtd_baixas: TLargeintField
      FieldName = 'qtd_baixas'
      ReadOnly = True
    end
  end
  inherited QryPesquisa: TADOQuery
    SQL.Strings = (
      
        'SELECT V.* FROM (                                               ' +
        '                   '
      
        '  SELECT PED.CODIGO COD_PEDIDO, LOJA.DESCRICAO LOJA, FORN.RAZAO_' +
        'SOCIAL FORNECEDOR, '
      
        '  FORN.CODIGO COD_FORNECEDOR, LOJA.CODIGO COD_LOJA,             ' +
        '                   '
      
        '  PED.DATA_PREV_FATURAMENTO, PED.STATUS, PED.VALOR_PEDIDO,      ' +
        '                   '
      
        '  COUNT(BAI.CODIGO) OVER() QTD_BAIXAS                           ' +
        '                   '
      
        '  FROM PEDIDO PED                                               ' +
        '                   '
      
        '  INNER JOIN FORNECEDOR FORN ON (FORN.CODIGO = PED.COD_FORNECEDO' +
        'R)                 '
      
        '  INNER JOIN LOJA LOJA ON (LOJA.CODIGO = PED.COD_LOJA)          ' +
        '                   '
      
        '  LEFT JOIN BAIXA BAI ON (PED.CODIGO = BAI.COD_PEDIDO)          ' +
        '                   '
      
        '  ) V                                                           ' +
        '                   '
      
        'WHERE 1 = 1                                                     ' +
        '                   ')
  end
end
