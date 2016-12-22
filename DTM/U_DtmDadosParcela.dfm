inherited DtmDadosParcela: TDtmDadosParcela
  OldCreateOrder = True
  inherited cdsPesquisa: TClientDataSet
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftLargeint
      end
      item
        Name = 'cod_pedido'
        DataType = ftInteger
      end
      item
        Name = 'data_vencimento'
        DataType = ftDate
      end
      item
        Name = 'valor_parcela'
        DataType = ftFloat
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
    object cdsPesquisadata_vencimento: TDateField
      FieldName = 'data_vencimento'
    end
    object cdsPesquisavalor_parcela: TFloatField
      FieldName = 'valor_parcela'
      DisplayFormat = '###,##0.00'
    end
  end
  inherited QryPesquisa: TADOQuery
    SQL.Strings = (
      'select * from Parcela')
  end
end
