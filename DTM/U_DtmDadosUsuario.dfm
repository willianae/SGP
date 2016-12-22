inherited DtmDadosUsuario: TDtmDadosUsuario
  OldCreateOrder = True
  inherited cdsPesquisa: TClientDataSet
    object cdsPesquisacodigo: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Visible = False
    end
    object cdsPesquisanome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'nome'
      Size = 60
    end
    object cdsPesquisalogin: TStringField
      DisplayLabel = 'Login'
      FieldName = 'login'
      Size = 50
    end
    object cdsPesquisasenha: TStringField
      FieldName = 'senha'
      Visible = False
      Size = 50
    end
    object cdsPesquisanivel: TIntegerField
      FieldName = 'nivel'
      Visible = False
    end
  end
end
