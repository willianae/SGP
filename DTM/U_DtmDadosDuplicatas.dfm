inherited DtmDadosDuplicatas: TDtmDadosDuplicatas
  OldCreateOrder = True
  inherited cdsPesquisa: TClientDataSet
    FieldDefs = <
      item
        Name = 'razao_social'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cod_pedido'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'data_vencimento'
        Attributes = [faReadonly]
        DataType = ftDate
      end
      item
        Name = 'valor_parcela'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'loja'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'mes_ano'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 8190
      end>
    IndexDefs = <
      item
        Name = 'razao_social'
        Fields = 'razao_social'
      end
      item
        Name = 'cod_pedido'
        Fields = 'cod_pedido'
      end
      item
        Name = 'data_vencimento'
        Fields = 'data_vencimento'
      end
      item
        Name = 'valor_parcela'
        Fields = 'valor_parcela'
      end
      item
        Name = 'loja'
        Fields = 'loja'
      end>
    StoreDefs = True
    object cdsPesquisarazao_social: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'razao_social'
      ReadOnly = True
      Size = 50
    end
    object cdsPesquisacod_pedido: TIntegerField
      DisplayLabel = 'N'#186' Pedido'
      FieldName = 'cod_pedido'
      ReadOnly = True
    end
    object cdsPesquisadata_vencimento: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'data_vencimento'
      ReadOnly = True
    end
    object cdsPesquisavalor_parcela: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor_parcela'
      ReadOnly = True
      DisplayFormat = 'R$ ###,###,##0.00'
    end
    object cdsPesquisaloja: TStringField
      FieldName = 'loja'
      ReadOnly = True
      Size = 50
    end
    object cdsPesquisames_ano: TStringField
      FieldName = 'mes_ano'
      ReadOnly = True
      Size = 8190
    end
  end
  inherited QryPesquisa: TADOQuery
    SQL.Strings = (
      'select forn.razao_social, par.cod_pedido, par.data_vencimento, '
      'par.valor_parcela, loj.descricao  loja,'
      
        'to_char(par.data_vencimento,'#39'mm/yyyy'#39') mes_ano                  ' +
        '         '
      'from parcela par                                               '
      'inner join pedido ped on ped.codigo = par.cod_pedido           '
      'inner join fornecedor forn on forn.codigo = ped.cod_fornecedor '
      'inner join loja loj on loj.codigo = ped.cod_loja               '
      'WHERE 1=1                                                      ')
  end
end
