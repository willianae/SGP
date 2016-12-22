unit U_DtmDadosBaixa;

interface

uses
  System.SysUtils, System.Classes, U_DtmPadrao, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Data.Win.ADODB,U_TBaixa;

type
  TDtmDadosBaixa = class(TDtmPadrao)
    cdsPesquisacod_pedido: TLargeintField;
    cdsPesquisaloja: TStringField;
    cdsPesquisafornecedor: TStringField;
    cdsPesquisacod_fornecedor: TLargeintField;
    cdsPesquisacod_loja: TLargeintField;
    cdsPesquisadata_prev_faturamento: TDateField;
    cdsPesquisastatus: TStringField;
    cdsPesquisavalor_pedido: TFloatField;
    cdsPesquisaqtd_baixas: TLargeintField;
    { Private declarations }
  public
    { Public declarations }
    procedure excluir(ICodigo:Integer);
    procedure salvar(Baixa:TBaixa);
    procedure listar(ACondicao:string);
  end;

var
  DtmDadosBaixa: TDtmDadosBaixa;

const
  // SCRIPTS

  SQL_DELETE_Baixa_PARAM_CODIGO =
  ' DELETE FROM Baixa WHERE CODIGO = :CODIGO ';

  SQL_SELECT_BAIXAS =
  //' SELECT * FROM Baixa ';
 ' SELECT DISTINCT V.* FROM (                                                         '#13+
 '   SELECT PED.CODIGO COD_PEDIDO, LOJA.DESCRICAO LOJA, FORN.RAZAO_SOCIAL FORNECEDOR, '#13+
 '   FORN.CODIGO COD_FORNECEDOR, LOJA.CODIGO COD_LOJA,                                '#13+
 '   PED.DATA_PREV_FATURAMENTO, PED.STATUS, PED.VALOR_PEDIDO,                         '#13+
 '   COUNT(BAI.CODIGO) OVER(PARTITION BY PED.CODIGO ) QTD_BAIXAS                      '#13+
 '   FROM PEDIDO PED                                                                  '#13+
 '   INNER JOIN FORNECEDOR FORN ON (FORN.CODIGO = PED.COD_FORNECEDOR)                 '#13+
 '   INNER JOIN LOJA LOJA ON (LOJA.CODIGO = PED.COD_LOJA)                             '#13+
 '   LEFT JOIN BAIXA BAI ON (PED.CODIGO = BAI.COD_PEDIDO)                             '#13+
 '   ) V                                                                              '#13+
 ' WHERE 1 = 1                                                                        ';


 SQL_ORDER =
   ' ORDER BY V.LOJA, V.FORNECEDOR, V.DATA_PREV_FATURAMENTO ';


 SQL_UPDATE_Baixa =
  ' UPDATE baixa                          '#13+
  '  SET cod_pedido = :cod_pedido,        '#13+
  '    tipo = :tipo,                      '#13+
  '    data_baixa = :data_baixa,          '#13+
  '    nota_fiscal = :nota_fiscal         '#13+
  '    data_emissao_nf = :data_emissao_nf '#13+
  '   WHERE codigo = :codigo              ';


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_BibliotecaFuncoes;

{$R *.dfm}

{ TDtmDadosBaixa }

procedure TDtmDadosBaixa.excluir(ICodigo: Integer);
begin
  try
    QryAux.Close;
    QryAux.SQL.Text := SQL_DELETE_Baixa_PARAM_CODIGO;
    QryAux.Parameters.ParamByName('CODIGO').Value := ICodigo;
    QryAux.ExecSQL;
  except
    raise;
  end;
end;

procedure TDtmDadosBaixa.listar(ACondicao:string);
begin
  cdsPesquisa.Close;
  QryPesquisa.SQL.Text := SQL_SELECT_BAIXAS + ACondicao + SQL_ORDER;
  cdsPesquisa.Open;
end;

procedure TDtmDadosBaixa.salvar(Baixa: TBaixa);
var
  indexOf:integer;
  valorAux:Double;
begin
  try
    QryAux.Close;
    if Baixa.codigo > 0 then
    begin
      QryAux.SQL.Text := SQL_UPDATE_Baixa;
      QryAux.Parameters.ParamByName('codigo').Value          := Baixa.codigo;
    end
    else
    begin
      QryAux.SQL.Text :=
     ' INSERT INTO baixa (cod_pedido, tipo, data_baixa, nota_fiscal, data_emissao_nf)  '#13+
     ' VALUES (:cod_pedido, :tipo, :data_baixa, :nota_fiscal, :data_emissao_nf)        ';

    end;
    QryAux.Parameters.ParamByName('cod_pedido').Value      := Baixa.cod_pedido;
    QryAux.Parameters.ParamByName('tipo').Value            := Baixa.tipo;
    QryAux.Parameters.ParamByName('data_baixa').Value      := Baixa.data_baixa;
    QryAux.Parameters.ParamByName('nota_fiscal').Value     := Baixa.nota_fiscal;
    QryAux.Parameters.ParamByName('data_emissao_nf').Value := Baixa.data_emissao_nf;
    QryAux.ExecSQL;

    if Baixa.codigo <= 0 then
      Baixa.codigo := GetSequencialAtual('baixa_codigo_seq');

    valorAux := 0;
    for indexOf := 0 to Length(baixa.lista_produtos) - 1 do
    begin
      if Baixa.lista_produtos[indexOf].qtd_recebido > 0 then
      begin
        QryAux.Close;
        QryAux.SQL.Text := ' UPDATE PRODUTO                           ' +
                           ' SET QTD_RECEBIDO = QTD_RECEBIDO + :QTD,  ' +
                           ' CODIGO_BAIXA = :CODIGO_BAIXA             ' +
                           ' WHERE CODIGO = :CODIGO                   ' ;
        QryAux.Parameters.ParamByName('QTD').Value    := Baixa.lista_produtos[indexOf].qtd_recebido;
        QryAux.Parameters.ParamByName('CODIGO').Value := Baixa.lista_produtos[indexOf].codigo;
        QryAux.Parameters.ParamByName('CODIGO_BAIXA').Value := Baixa.codigo;
        QryAux.ExecSQL;

      //if Baixa.lista_produtos[indexOf].qtd_recebido > 0 then
        valorAux := valorAux + (Baixa.lista_produtos[indexOf].qtd_recebido * Baixa.lista_produtos[indexOf].valor_unitario);
      end;
    end;

    // altera pra recebido se o QTD_RECEBIDO ALCANÇAR A QUANTIDADE
    QryAux.Close;
    QryAux.SQL.Text := ' UPDATE PRODUTO                   '#13+
                       ' SET FLG_RECEBIDO = ''S''         '#13+
                       ' WHERE QTD_RECEBIDO >= QUANTIDADE ';
    QryAux.ExecSQL;


    // ALTERA BAIXA PRA TOTAL QUANDO NÃO HOUVER NENHUM PRODUTO COM FLG_RECEBIDO = 'N'
    QryAux.Close;
    QryAux.SQL.Text := ' UPDATE BAIXA                       '#13+
                       '   SET TIPO = ''T''                 '#13+
                       '   WHERE COD_PEDIDO = :COD_PEDIDO1   '#13+
                       '    AND 0 =                         '#13+
                       '    ( SELECT COUNT(*) FROM PRODUTO  '#13+
                       '     WHERE COD_PEDIDO = :COD_PEDIDO2 '#13+
                       '       AND flg_recebido = ''N'' )   ';
    QryAux.Parameters.ParamByName('cod_pedido1').Value      := Baixa.cod_pedido;
    QryAux.Parameters.ParamByName('cod_pedido2').Value      := Baixa.cod_pedido;
    QryAux.ExecSQL;

    // VERIFICA SE A BAIXA EM QUESTÃO VIROU TOTAL, SE SIM ENTÃO DELETA TODAS AS PARCELAS
    QryAux.Close;
    QryAux.SQL.Text := ' SELECT * FROM BAIXA WHERE COD_PEDIDO = :COD_PEDIDO '#13+
                       ' AND TIPO = ''T''                                   ';
    QryAux.Parameters.ParamByName('cod_pedido').Value      := Baixa.cod_pedido;
    QryAux.Open;
    if not QryAux.IsEmpty then
    begin
      QryAux.Close;
      QryAux.SQL.Text := ' DELETE FROM PARCELA WHERE COD_PEDIDO = :COD_PEDIDO ';
      QryAux.Parameters.ParamByName('cod_pedido').Value  := Baixa.cod_pedido;
      QryAux.ExecSql;

      QryAux.Close;
      QryAux.SQL.Text := ' UPDATE PEDIDO SET STATUS = ''F'' WHERE CODIGO = :COD_PEDIDO ';
      QryAux.Parameters.ParamByName('cod_pedido').Value  := Baixa.cod_pedido;
      QryAux.ExecSql;
    end
    else
    begin
      // SE NÃO DEVERÁ SER ATUALIZADO O VALOR_PARCELA RETIRANDO O PRODUTO BAIXADO

      QryAux.Close;
      QryAux.SQL.Text := ' UPDATE PARCELA                                                         '#13+
                         '    SET VALOR_PARCELA = VALOR_PARCELA -                                 '#13+
                         '        ( '+ StringReplace(FloatToStr(valorAux),',','.',[]) +' /                                  '#13+
                         '        (SELECT COUNT(*) FROM PARCELA WHERE COD_PEDIDO = :COD_PEDIDO1)) '#13+
                         '  WHERE COD_PEDIDO = :COD_PEDIDO2                                        ';
      QryAux.Parameters.ParamByName('cod_pedido1').Value  := Baixa.cod_pedido;
      QryAux.Parameters.ParamByName('cod_pedido2').Value  := Baixa.cod_pedido;
      QryAux.ExecSQL;
    end;

  except
    raise;
  end;
end;

end.
