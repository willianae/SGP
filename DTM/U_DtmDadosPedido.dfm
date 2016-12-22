inherited DtmDadosPedido: TDtmDadosPedido
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  inherited cdsPesquisa: TClientDataSet
    FieldDefs = <
      item
        Name = 'codigo'
        Attributes = [faReadonly]
        DataType = ftLargeint
      end
      item
        Name = 'cod_fornecedor'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'cod_loja'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'data_pedido'
        Attributes = [faReadonly]
        DataType = ftDate
      end
      item
        Name = 'data_prev_faturamento'
        Attributes = [faReadonly]
        DataType = ftDate
      end
      item
        Name = 'status'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'qtd_parcelas'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'parcelas_txt'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'valor_pedido'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'valor_desconto1'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'valor_desconto2'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'observacoes'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 250
      end
      item
        Name = 'nome_representante'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'email_representante'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'fone_representante'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'razao_social'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'loja'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'CODIGO'
        Fields = 'CODIGO'
      end
      item
        Name = 'DESCRICAO'
        Fields = 'DESCRICAO'
      end>
    IndexFieldNames = 'CODIGO'
    StoreDefs = True
    Top = 160
    object cdsPesquisacodigo: TLargeintField
      FieldName = 'codigo'
    end
    object cdsPesquisacod_fornecedor: TIntegerField
      FieldName = 'cod_fornecedor'
    end
    object cdsPesquisacod_loja: TIntegerField
      FieldName = 'cod_loja'
    end
    object cdsPesquisadata_pedido: TDateField
      FieldName = 'data_pedido'
    end
    object cdsPesquisastatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object cdsPesquisaqtd_parcelas: TIntegerField
      FieldName = 'qtd_parcelas'
    end
    object cdsPesquisaparcelas_txt: TStringField
      FieldName = 'parcelas_txt'
      Size = 50
    end
    object cdsPesquisavalor_pedido: TFloatField
      FieldName = 'valor_pedido'
      DisplayFormat = 'R$ ###,###,##0.00'
    end
    object cdsPesquisarazao_social: TStringField
      FieldName = 'razao_social'
      ReadOnly = True
      Size = 50
    end
    object cdsPesquisaloja: TStringField
      FieldName = 'loja'
      ReadOnly = True
      Size = 50
    end
    object cdsPesquisavalor_desconto1: TFloatField
      FieldName = 'valor_desconto1'
      ReadOnly = True
    end
    object cdsPesquisavalor_desconto2: TFloatField
      FieldName = 'valor_desconto2'
      ReadOnly = True
    end
    object cdsPesquisadata_prev_faturamento: TDateField
      FieldName = 'data_prev_faturamento'
      ReadOnly = True
    end
    object cdsPesquisaobservacoes: TStringField
      FieldName = 'observacoes'
      ReadOnly = True
      Size = 250
    end
    object cdsPesquisanome_representante: TStringField
      FieldName = 'nome_representante'
      ReadOnly = True
      Size = 50
    end
    object cdsPesquisaemail_representante: TStringField
      FieldName = 'email_representante'
      ReadOnly = True
      Size = 50
    end
    object cdsPesquisafone_representante: TStringField
      FieldName = 'fone_representante'
      ReadOnly = True
      Size = 12
    end
  end
  inherited dsPesquisa: TDataSource
    Top = 160
  end
  inherited QryPesquisa: TADOQuery
    SQL.Strings = (
      'SELECT ped.*, forn.razao_social, loj.descricao loja            '
      'FROM Pedido ped                                                '
      'inner join fornecedor forn on forn.codigo = ped.cod_fornecedor '
      'inner join loja loj on loj.codigo = ped.cod_loja               '
      'ORDER BY CODIGO                                                ')
    Top = 160
  end
  inherited dspPesquisa: TDataSetProvider
    Top = 160
  end
  object dspProduto: TDataSetProvider
    DataSet = QryProduto
    Left = 256
    Top = 104
  end
  object QryProduto: TADOQuery
    Connection = DtmConexao.AdoConn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT PROD.*, BAI.NOTA_FISCAL, BAI.DATA_EMISSAO_NF '
      'FROM PRODUTO PROD'
      'LEFT JOIN BAIXA BAI '
      '  ON (BAI.CODIGO = PROD.CODIGO_BAIXA)')
    Left = 184
    Top = 104
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 112
    Top = 104
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        Attributes = [faReadonly]
        DataType = ftLargeint
      end
      item
        Name = 'cod_pedido'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'referencia'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'descricao'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'valor_unitario'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'valor_pdu'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'quantidade'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'valor_total'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'flg_recebido'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'qtd_recebido'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'codigo_baixa'
        Attributes = [faReadonly]
        DataType = ftLargeint
      end
      item
        Name = 'nota_fiscal'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'data_emissao_nf'
        Attributes = [faReadonly]
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'CODIGO'
        Fields = 'CODIGO'
      end
      item
        Name = 'DESCRICAO'
        Fields = 'DESCRICAO'
      end>
    IndexFieldNames = 'cod_pedido'
    MasterFields = 'codigo'
    MasterSource = dsPesquisa
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspProduto'
    StoreDefs = True
    Left = 40
    Top = 104
    object cdsProdutocodigo: TLargeintField
      FieldName = 'codigo'
    end
    object cdsProdutocod_pedido: TIntegerField
      FieldName = 'cod_pedido'
    end
    object cdsProdutoreferencia: TStringField
      FieldName = 'referencia'
    end
    object cdsProdutodescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsProdutovalor_unitario: TFloatField
      FieldName = 'valor_unitario'
      DisplayFormat = 'R$ ###,###,##0.00'
    end
    object cdsProdutovalor_pdu: TFloatField
      FieldName = 'valor_pdu'
      DisplayFormat = 'R$ ###,###,##0.00'
    end
    object cdsProdutoquantidade: TIntegerField
      FieldName = 'quantidade'
      DisplayFormat = '00'
    end
    object cdsProdutovalor_total: TFloatField
      FieldName = 'valor_total'
      DisplayFormat = 'R$ ###,###,##0.00'
    end
    object cdsProdutoflg_recebido: TStringField
      FieldName = 'flg_recebido'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoqtd_recebido: TIntegerField
      FieldName = 'qtd_recebido'
      DisplayFormat = '00'
    end
    object cdsProdutocodigo_baixa: TLargeintField
      FieldName = 'codigo_baixa'
      ReadOnly = True
    end
    object cdsProdutonota_fiscal: TStringField
      FieldName = 'nota_fiscal'
      ReadOnly = True
    end
    object cdsProdutodata_emissao_nf: TDateField
      FieldName = 'data_emissao_nf'
      ReadOnly = True
    end
  end
end
