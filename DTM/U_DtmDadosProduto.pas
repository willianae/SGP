unit U_DtmDadosProduto;

interface

uses
  System.SysUtils, System.Classes, U_DtmPadrao, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Data.Win.ADODB, U_TProduto;

type
  TDtmDadosProduto = class(TDtmPadrao)
    cdsPesquisacodigo: TLargeintField;
    cdsPesquisacod_pedido: TIntegerField;
    cdsPesquisareferencia: TStringField;
    cdsPesquisadescricao: TStringField;
    cdsPesquisavalor_unitario: TFloatField;
    cdsPesquisavalor_pdu: TFloatField;
    cdsPesquisaquantidade: TIntegerField;
    cdsPesquisavalor_total: TFloatField;
    cdsPesquisaflg_recebido: TStringField;
    cdsPesquisaqtd_recebido: TIntegerField;
    cdsPesquisacodigo_baixa: TLargeintField;
    cdsPesquisanota_fiscal: TStringField;
    cdsPesquisadata_emissao_nf: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure excluir(ACodigo:Integer);
    procedure salvar(AProduto: TProduto);
    procedure listar(ACodPedido:integer);


  end;

var
  DtmDadosProduto: TDtmDadosProduto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDtmDadosProduto }


{ TDtmDadosProduto }

procedure TDtmDadosProduto.excluir(ACodigo: Integer);
begin
  try
    QryAux.Close;
    QryAux.SQL.Text := ' DELETE FROM Produto WHERE CODIGO = :CODIGO ';
    QryAux.Parameters.ParamByName('CODIGO').Value := ACodigo;
    QryAux.ExecSQL;
  except
    raise;
  end;
end;

procedure TDtmDadosProduto.listar(ACodPedido:integer);
begin
  cdsPesquisa.Close;
  QryPesquisa.SQL.Text := ' SELECT PROD.*, BAI.NOTA_FISCAL,        '#13+
                          ' BAI.DATA_EMISSAO_NF                    '#13+
                          '  FROM PRODUTO PROD                     '#13+
                          '  LEFT JOIN BAIXA BAI                   '#13+
                          '    ON (BAI.CODIGO = PROD.CODIGO_BAIXA) '#13+
                          '  WHERE PROD.COD_PEDIDO = :COD_PEDIDO   '#13+
                          '  ORDER BY PROD.CODIGO                  ';
  QryPesquisa.Parameters.ParamByName('COD_PEDIDO').Value := ACodPedido;
  cdsPesquisa.Open;
end;

procedure TDtmDadosProduto.salvar(AProduto: TProduto);
begin
  try
    QryAux.Close;
    if AProduto.codigo > 0 then
    begin
      QryAux.SQL.Text := ' UPDATE produto                                                              '#13+
                         '  SET cod_pedido=:cod_pedido, referencia=:referencia, descricao=:descricao,  '#13+
                         '  valor_unitario=:valor_unitario, valor_pdu=:valor_pdu,                      '#13+
                         '  quantidade=:quantidade, valor_total=:valor_total,                          '#13+
                         '  flg_recebido=:flg_recebido, qtd_recebido=:qtd_recebido                     '#13+
                         ' WHERE CODIGO = :COD                                                         ';
      QryAux.Parameters.ParamByName('COD').Value := AProduto.codigo;
    end
    else
      QryAux.SQL.Text :=
     ' INSERT INTO produto(                                                       '#13+
     '       cod_pedido, referencia, descricao, valor_unitario, valor_pdu,        '#13+
     '       quantidade, valor_total, flg_recebido, qtd_recebido)                 '#13+
     ' VALUES (:cod_pedido, :referencia, :descricao, :valor_unitario, :valor_pdu, '#13+
     '       :quantidade, :valor_total, :flg_recebido, :qtd_recebido)             ';
    QryAux.Parameters.ParamByName('cod_pedido').Value := AProduto.cod_pedido;
    QryAux.Parameters.ParamByName('referencia').Value := AProduto.referencia;
    QryAux.Parameters.ParamByName('descricao').Value := AProduto.descricao;
    QryAux.Parameters.ParamByName('valor_unitario').Value := AProduto.valor_unitario;
    QryAux.Parameters.ParamByName('valor_pdu').Value := AProduto.valor_pdu;
    QryAux.Parameters.ParamByName('quantidade').Value := AProduto.quantidade;
    QryAux.Parameters.ParamByName('valor_total').Value := AProduto.valor_total;
    QryAux.Parameters.ParamByName('flg_recebido').Value := AProduto.flg_recebido;
    QryAux.Parameters.ParamByName('qtd_recebido').Value := AProduto.qtd_recebido;

    QryAux.ExecSQL;
  except
    raise;
  end;
end;

end.
