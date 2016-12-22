unit U_DtmDadosParcela;

interface

uses
  System.SysUtils, System.Classes, U_DtmPadrao, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Data.Win.ADODB, U_TParcela;

type
  TDtmDadosParcela = class(TDtmPadrao)
    cdsPesquisacodigo: TLargeintField;
    cdsPesquisacod_pedido: TIntegerField;
    cdsPesquisadata_vencimento: TDateField;
    cdsPesquisavalor_parcela: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure excluir(ACodigo:Integer);
    procedure salvar(AParcela: TParcela);
    procedure listar(ACodPedido:integer);


  end;

var
  DtmDadosParcela: TDtmDadosParcela;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDtmDadosParcela }


{ TDtmDadosParcela }

procedure TDtmDadosParcela.excluir(ACodigo: Integer);
begin
  try
    QryAux.Close;
    QryAux.SQL.Text := ' DELETE FROM Parcela WHERE CODIGO = :CODIGO ';
    QryAux.Parameters.ParamByName('CODIGO').Value := ACodigo;
    QryAux.ExecSQL;
  except
    raise;
  end;
end;

procedure TDtmDadosParcela.listar(ACodPedido:integer);
begin
  cdsPesquisa.Close;
  QryPesquisa.SQL.Text := ' SELECT * FROM PARCELA           '#13+
                          '  WHERE COD_PEDIDO = :COD_PEDIDO '#13+
                          '  ORDER BY DATA_VENCIMENTO       ';
  QryPesquisa.Parameters.ParamByName('COD_PEDIDO').Value := ACodPedido;
  cdsPesquisa.Open;
end;

procedure TDtmDadosParcela.salvar(AParcela: TParcela);
begin
  try
    QryAux.Close;
    if AParcela.codigo > 0 then
    begin
      QryAux.SQL.Text := ' UPDATE parcela                                                   '#13+
                         '   SET cod_pedido=:cod_pedido,                                    '#13+
                         '  data_vencimento=:data_vencimento, valor_parcela=:valor_parcela  '#13+
                         ' WHERE CODIGO = :COD    ';
      QryAux.Parameters.ParamByName('COD').Value := AParcela.codigo;
    end
    else
      QryAux.SQL.Text := ' INSERT INTO parcela(                                  '#13+
                         '         cod_pedido, data_vencimento, valor_parcela)   '#13+
                         ' VALUES (:cod_pedido, :data_vencimento, :valor_parcela) ';

    QryAux.Parameters.ParamByName('cod_pedido').Value := AParcela.cod_pedido;
    QryAux.Parameters.ParamByName('data_vencimento').Value := AParcela.data;
    QryAux.Parameters.ParamByName('valor_parcela').Value := AParcela.valor;

    QryAux.ExecSQL;
  except
    raise;
  end;
end;

end.
