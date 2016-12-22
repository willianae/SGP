inherited DtmDadosFornecedor: TDtmDadosFornecedor
  OldCreateOrder = True
  inherited cdsPesquisa: TClientDataSet
    OnCalcFields = cdsPesquisaCalcFields
    object cdsPesquisacodigo: TLargeintField
      FieldName = 'codigo'
    end
    object cdsPesquisarazao_social: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'razao_social'
      Size = 50
    end
    object cdsPesquisacpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Size = 16
    end
    object cdsPesquisainscricao_estadual: TStringField
      FieldName = 'inscricao_estadual'
    end
    object cdsPesquisarua: TStringField
      FieldName = 'rua'
      Size = 50
    end
    object cdsPesquisabairro: TStringField
      FieldName = 'bairro'
      Size = 30
    end
    object cdsPesquisacidade: TStringField
      FieldName = 'cidade'
      Size = 50
    end
    object cdsPesquisaestado: TStringField
      FieldName = 'estado'
      FixedChar = True
      Size = 2
    end
    object cdsPesquisacep: TStringField
      FieldName = 'cep'
      Size = 9
    end
    object cdsPesquisafone: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'fone'
      Size = 12
    end
    object cdsPesquisaemail: TStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Size = 50
    end
    object cdsPesquisanumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object cdsPesquisacomplemento: TStringField
      FieldName = 'complemento'
    end
    object cdsPesquisacpf_cnpj_formatado: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldKind = fkCalculated
      FieldName = 'cpf_cnpj_formatado'
      Calculated = True
    end
    object cdsPesquisanome_representante: TStringField
      FieldName = 'nome_representante'
      Size = 50
    end
    object cdsPesquisaemail_representante: TStringField
      FieldName = 'email_representante'
      Size = 50
    end
    object cdsPesquisafone_representante: TStringField
      FieldName = 'fone_representante'
      Size = 12
    end
  end
  inherited QryPesquisa: TADOQuery
    SQL.Strings = (
      'select * from Fornecedor')
  end
end
