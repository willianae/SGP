inherited DtmDadosRelatorioPedido: TDtmDadosRelatorioPedido
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  inherited cdsPesquisa: TClientDataSet
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO'
    object cdsPesquisaCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      EditFormat = '000'
    end
    object cdsPesquisaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object cdsPesquisaCOD_LOJA: TIntegerField
      FieldName = 'COD_LOJA'
      DisplayFormat = '000'
    end
    object cdsPesquisaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 50
    end
    object cdsPesquisaPARCELAS_TXT: TStringField
      FieldName = 'PARCELAS_TXT'
      Size = 50
    end
    object cdsPesquisaDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object cdsPesquisaCODIGO: TLargeintField
      FieldName = 'CODIGO'
      DisplayFormat = '00000'
    end
    object cdsPesquisaVALOR_DESCONTO1: TFloatField
      FieldName = 'VALOR_DESCONTO1'
      DisplayFormat = '00%'
    end
    object cdsPesquisaVALOR_DESCONTO2: TFloatField
      FieldName = 'VALOR_DESCONTO2'
      DisplayFormat = '00%'
    end
    object cdsPesquisaDATA_PREV_FATURAMENTO: TDateField
      FieldName = 'DATA_PREV_FATURAMENTO'
    end
    object cdsPesquisaVALOR_PEDIDO: TFloatField
      DisplayLabel = 'Total pedido'
      FieldName = 'VALOR_PEDIDO'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qryProduto: TADOQuery
    Connection = DtmConexao.AdoConn
    CursorType = ctStatic
    Parameters = <>
    Left = 184
    Top = 168
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 112
    Top = 168
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'COD_PEDIDO'
    MasterFields = 'codigo'
    MasterSource = dsPesquisa
    PacketRecords = 0
    Params = <>
    Left = 40
    Top = 168
    object cdsProdutoCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      DisplayFormat = '00000'
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsProdutoVALOR_UNITARIO: TFloatField
      FieldName = 'VALOR_UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdutoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '00'
    end
    object cdsProdutoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsProdutoFLG_RECEBIDO: TStringField
      FieldName = 'FLG_RECEBIDO'
      Size = 1
    end
    object cdsProdutoCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object cdsProdutoNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
    end
    object cdsProdutoDATA_EMISSAO_NF: TDateField
      FieldName = 'DATA_EMISSAO_NF'
    end
  end
end
