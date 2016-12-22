inherited DtmDadosProduto: TDtmDadosProduto
  OldCreateOrder = True
  inherited cdsPesquisa: TClientDataSet
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
    IndexFieldNames = 'CODIGO'
    StoreDefs = True
    object cdsPesquisacodigo: TLargeintField
      FieldName = 'codigo'
    end
    object cdsPesquisacod_pedido: TIntegerField
      FieldName = 'cod_pedido'
    end
    object cdsPesquisareferencia: TStringField
      FieldName = 'referencia'
    end
    object cdsPesquisadescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object cdsPesquisavalor_unitario: TFloatField
      FieldName = 'valor_unitario'
    end
    object cdsPesquisavalor_pdu: TFloatField
      FieldName = 'valor_pdu'
    end
    object cdsPesquisaquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object cdsPesquisavalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object cdsPesquisaflg_recebido: TStringField
      FieldName = 'flg_recebido'
      FixedChar = True
      Size = 1
    end
    object cdsPesquisaqtd_recebido: TIntegerField
      FieldName = 'qtd_recebido'
    end
    object cdsPesquisacodigo_baixa: TLargeintField
      FieldName = 'codigo_baixa'
      ReadOnly = True
    end
    object cdsPesquisanota_fiscal: TStringField
      FieldName = 'nota_fiscal'
      ReadOnly = True
    end
    object cdsPesquisadata_emissao_nf: TDateField
      FieldName = 'data_emissao_nf'
      ReadOnly = True
    end
  end
  inherited QryPesquisa: TADOQuery
    SQL.Strings = (
      'SELECT PROD.*, BAI.NOTA_FISCAL, BAI.DATA_EMISSAO_NF '
      'FROM PRODUTO PROD'
      'LEFT JOIN BAIXA BAI '
      '  ON (BAI.CODIGO = PROD.CODIGO_BAIXA)'
      'WHERE PROD.COD_PEDIDO = 730'
      'ORDER BY PROD.CODIGO')
  end
end
