inherited DtmDadosLoja: TDtmDadosLoja
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  inherited cdsPesquisa: TClientDataSet
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftLargeint
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'flg_principal'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
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
    object cdsPesquisadescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsPesquisaflg_principal: TStringField
      FieldName = 'flg_principal'
      FixedChar = True
      Size = 1
    end
  end
  inherited QryPesquisa: TADOQuery
    SQL.Strings = (
      'select * from Loja')
  end
end
