unit U_DtmDadosPedido;

interface

uses
  System.SysUtils, System.Classes, U_DtmPadrao, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Data.Win.ADODB, U_TPedido;

type
  TDtmDadosPedido = class(TDtmPadrao)
    cdsPesquisacodigo: TLargeintField;
    cdsPesquisacod_fornecedor: TIntegerField;
    cdsPesquisacod_loja: TIntegerField;
    cdsPesquisadata_pedido: TDateField;
    cdsPesquisastatus: TStringField;
    cdsPesquisaqtd_parcelas: TIntegerField;
    cdsPesquisaparcelas_txt: TStringField;
    cdsPesquisavalor_pedido: TFloatField;
    cdsPesquisarazao_social: TStringField;
    cdsPesquisaloja: TStringField;
    cdsPesquisavalor_desconto1: TFloatField;
    cdsPesquisavalor_desconto2: TFloatField;
    cdsPesquisadata_prev_faturamento: TDateField;
    cdsPesquisaobservacoes: TStringField;
    cdsPesquisanome_representante: TStringField;
    cdsPesquisaemail_representante: TStringField;
    cdsPesquisafone_representante: TStringField;
    dspProduto: TDataSetProvider;
    QryProduto: TADOQuery;
    dsProduto: TDataSource;
    cdsProduto: TClientDataSet;
    cdsProdutocodigo: TLargeintField;
    cdsProdutocod_pedido: TIntegerField;
    cdsProdutoreferencia: TStringField;
    cdsProdutodescricao: TStringField;
    cdsProdutovalor_unitario: TFloatField;
    cdsProdutovalor_pdu: TFloatField;
    cdsProdutoquantidade: TIntegerField;
    cdsProdutovalor_total: TFloatField;
    cdsProdutoflg_recebido: TStringField;
    cdsProdutoqtd_recebido: TIntegerField;
    cdsProdutocodigo_baixa: TLargeintField;
    cdsProdutonota_fiscal: TStringField;
    cdsProdutodata_emissao_nf: TDateField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure excluir(ACodigo:Integer);
    procedure salvar(APedido: TPedido);
    procedure listar(AFiltro:string);
    function getCodigoAtual:Integer;
    procedure excluirProduto(ACodPedido:integer; ACodProduto:Integer);


  end;

var
  DtmDadosPedido: TDtmDadosPedido;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDtmDadosPedido }


{ TDtmDadosPedido }

procedure TDtmDadosPedido.DataModuleCreate(Sender: TObject);
begin
  inherited;
  //listar('');
end;

procedure TDtmDadosPedido.excluir(ACodigo: Integer);
begin
  try
    QryAux.Close;
    QryAux.SQL.Text := ' delete from parcela where cod_pedido = :CODIGO ';
    QryAux.Parameters.ParamByName('CODIGO').Value := ACodigo;
    QryAux.ExecSQL;

    QryAux.Close;
    QryAux.SQL.Text := ' delete from produto where cod_pedido = :CODIGO ';
    QryAux.Parameters.ParamByName('CODIGO').Value := ACodigo;
    QryAux.ExecSQL;

    QryAux.Close;
    QryAux.SQL.Text := ' delete from baixa where cod_pedido = :CODIGO ';
    QryAux.Parameters.ParamByName('CODIGO').Value := ACodigo;
    QryAux.ExecSQL;

    QryAux.Close;
    QryAux.SQL.Text := ' DELETE FROM Pedido WHERE CODIGO = :CODIGO ';
    QryAux.Parameters.ParamByName('CODIGO').Value := ACodigo;
    QryAux.ExecSQL;

  except
    raise;
  end;
end;

procedure TDtmDadosPedido.excluirProduto(ACodPedido, ACodProduto: Integer);
var
  valorParcela, valorTotal:Double;
begin
  try
    QryAux.Close;
    QryAux.SQL.Text :=
   ' select valor_total,                          '#13+
   ' (valor_total /                               '#13+
   '   (select coalesce(count(*),1) from parcela  '#13+
   '    where cod_pedido = :cod_pedido1)          '#13+
   ' )valor_pacela                                '#13+
   ' from produto                                 '#13+
   ' where cod_pedido = :cod_pedido2              '#13+
   ' and codigo = :cod_produto                    ';
   QryAux.Parameters.ParamByName('cod_pedido1').Value := ACodPedido;
   QryAux.Parameters.ParamByName('cod_pedido2').Value := ACodPedido;
   QryAux.Parameters.ParamByName('cod_produto').Value := ACodProduto;
   QryAux.Open;

   valorParcela := QryAux.FieldByName('valor_pacela').AsFloat;
   valorTotal := QryAux.FieldByName('valor_total').AsFloat;

   QryAux.Close;
   QryAux.SQL.Text :=
   ' update parcela                                     '#13+
   ' set valor_parcela = valor_parcela - :valor_parcela '#13+
   ' where cod_pedido = :cod_pedido                     ';
   QryAux.Parameters.ParamByName('cod_pedido').Value := ACodPedido;
   QryAux.Parameters.ParamByName('valor_parcela').Value := valorParcela;
   QryAux.ExecSQL;

   QryAux.Close;
   QryAux.SQL.Text :=
   ' update pedido                                  '#13+
   ' set valor_pedido = valor_pedido - :valor_total '#13+
   ' where codigo = :cod_pedido                     ';
   QryAux.Parameters.ParamByName('cod_pedido').Value := ACodPedido;
   QryAux.Parameters.ParamByName('valor_total').Value := valorTotal;
   QryAux.ExecSQL;

   QryAux.Close;
   QryAux.SQL.Text :=
   ' delete from produto            '#13+
   ' where cod_pedido = :cod_pedido '#13+
   ' and codigo = :cod_produto      ';
   QryAux.Parameters.ParamByName('cod_pedido').Value := ACodPedido;
   QryAux.Parameters.ParamByName('cod_produto').Value := ACodProduto;
   QryAux.ExecSQL;


  except
    raise;
  end;
end;

function TDtmDadosPedido.getCodigoAtual: Integer;
begin
  QryPesquisa.Close;
  QryPesquisa.SQL.Text := ' select currval(''pedido_codigo_seq'') ';
  QryPesquisa.Open;
  Result := QryPesquisa.Fields[0].AsInteger;
end;

procedure TDtmDadosPedido.listar(AFiltro:string);
begin
  cdsPesquisa.Close;
  cdsProduto.Close;
  QryPesquisa.SQL.Text := ' SELECT ped.*, forn.razao_social, loj.descricao loja            '+
                          ' FROM Pedido ped                                                '+
                          ' inner join fornecedor forn on forn.codigo = ped.cod_fornecedor '+
                          ' inner join loja loj on loj.codigo = ped.cod_loja               '+
                          ' where ped.status = ''A''                                       '+
                           AFiltro +
                          ' ORDER BY CODIGO                                                ';
  cdsPesquisa.Open;
  cdsProduto.Open;
end;

procedure TDtmDadosPedido.salvar(APedido: TPedido);
begin
  try
    QryAux.Close;
    if APedido.codigo > 0 then
    begin
      QryAux.SQL.Text := ' UPDATE pedido                                                           '#13+
                         '  SET cod_fornecedor=:cod_fornecedor, cod_loja=:cod_loja,                '#13+
                         '   data_pedido=:data_pedido, status=:status, qtd_parcelas=:qtd_parcelas, '#13+
                         '   parcelas_txt=:parcelas_txt, valor_pedido=:valor_pedido,               '#13+
                         '   data_prev_faturamento=:data_prev_faturamento,                         '#13+
                         '   valor_desconto1=:valor_desconto1, valor_desconto2=:valor_desconto2,   '#13+
                         '   observacoes=:observacoes, nome_representante=:nome_representante,     '#13+
                         '   fone_representante=:fone_representante,                               '#13+
                         '   email_representante=:email_representante                              '#13+
                         ' WHERE CODIGO = :COD                                                     ';

      QryAux.Parameters.ParamByName('COD').Value := APedido.codigo;
    end
    else
      QryAux.SQL.Text :=
       ' INSERT INTO pedido(                                                       '#13+
       '       cod_fornecedor, cod_loja, data_pedido, status, qtd_parcelas,        '#13+
       '       parcelas_txt, valor_pedido, data_prev_faturamento,                  '#13+
       '       valor_desconto1, valor_desconto2, observacoes, nome_representante,  '#13+
       '       fone_representante, email_representante )                           '#13+
       ' VALUES (:cod_fornecedor, :cod_loja, :data_pedido, :status, :qtd_parcelas, '#13+
       '       :parcelas_txt, :valor_pedido, :data_prev_faturamento,               '#13+
       '       :valor_desconto1, :valor_desconto2, :observacoes,                   '#13+
       '       :nome_representante, :fone_representante, :email_representante )    ';

    QryAux.Parameters.ParamByName('cod_fornecedor').Value := APedido.fornecedor.id;
    QryAux.Parameters.ParamByName('cod_loja').Value       := APedido.loja.codigo;
    QryAux.Parameters.ParamByName('data_pedido').Value    := APedido.data;
    QryAux.Parameters.ParamByName('status').Value         := APedido.status;
    QryAux.Parameters.ParamByName('qtd_parcelas').Value   := APedido.qtd_parcelas;
    QryAux.Parameters.ParamByName('parcelas_txt').Value   := APedido.parcelas_txt;
    QryAux.Parameters.ParamByName('valor_pedido').Value   := APedido.valor_pedido;
    QryAux.Parameters.ParamByName('valor_desconto1').Value   := APedido.desconto1;
    QryAux.Parameters.ParamByName('valor_desconto2').Value   := APedido.desconto2;
    QryAux.Parameters.ParamByName('nome_representante').Value   := APedido.nome_representante;
    QryAux.Parameters.ParamByName('fone_representante').Value   := APedido.fone_representante;
    QryAux.Parameters.ParamByName('email_representante').Value   := APedido.email_representante;

    QryAux.Parameters.ParamByName('data_prev_faturamento').Value    := APedido.dataPrevFaturamento;
    QryAux.Parameters.ParamByName('observacoes').Value := APedido.observacoes;

    QryAux.ExecSQL;
  except
    raise;
  end;
end;

end.
