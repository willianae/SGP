unit U_DtmDadosDuplicatas;

interface

uses
  System.SysUtils, System.Classes, U_DtmPadrao, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Data.Win.ADODB;

type
  TDtmDadosDuplicatas = class(TDtmPadrao)
    cdsPesquisarazao_social: TStringField;
    cdsPesquisacod_pedido: TIntegerField;
    cdsPesquisadata_vencimento: TDateField;
    cdsPesquisavalor_parcela: TFloatField;
    cdsPesquisaloja: TStringField;
    cdsPesquisames_ano: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure listar(AFiltro:string);
  end;

var
  DtmDadosDuplicatas: TDtmDadosDuplicatas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDtmDadosDuplicatas }

procedure TDtmDadosDuplicatas.listar(AFiltro: string);
begin
  QryPesquisa.Close;
  cdsPesquisa.Close;
  QryPesquisa.SQL.Text :=
 ' select forn.razao_social, par.cod_pedido, par.data_vencimento,  '#13+
 ' par.valor_parcela, loj.descricao loja,                          '#13+
 ' to_char(par.data_vencimento,''mm/yyyy'') mes_ano                '#13+
 ' from parcela par                                                '#13+
 ' inner join pedido ped on ped.codigo = par.cod_pedido            '#13+
 ' inner join fornecedor forn on forn.codigo = ped.cod_fornecedor  '#13+
 ' inner join loja loj on loj.codigo = ped.cod_loja                '#13+
 ' WHERE 1=1                                                       '
 + AFiltro +
 ' ORDER BY forn.razao_social, par.data_vencimento ';
 cdsPesquisa.Open
end;

end.
