unit U_DtmDadosRelatorioPedido;

interface

uses
  System.SysUtils, System.Classes, U_DtmPadrao, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Data.Win.ADODB;

type
  TDtmDadosRelatorioPedido = class(TDtmPadrao)
    qryProduto: TADOQuery;
    dsProduto: TDataSource;
    cdsProduto: TClientDataSet;
    cdsPesquisaCOD_FORNECEDOR: TIntegerField;
    cdsPesquisaFORNECEDOR: TStringField;
    cdsPesquisaCOD_LOJA: TIntegerField;
    cdsPesquisaEMPRESA: TStringField;
    cdsPesquisaPARCELAS_TXT: TStringField;
    cdsPesquisaDATA_PEDIDO: TDateField;
    cdsProdutoCOD_PEDIDO: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoDESCRICAO: TStringField;
    cdsProdutoVALOR_UNITARIO: TFloatField;
    cdsProdutoQUANTIDADE: TIntegerField;
    cdsProdutoVALOR_TOTAL: TFloatField;
    cdsProdutoFLG_RECEBIDO: TStringField;
    cdsPesquisaCODIGO: TLargeintField;
    cdsProdutoCODIGO: TLargeintField;
    cdsPesquisaVALOR_DESCONTO1: TFloatField;
    cdsPesquisaVALOR_DESCONTO2: TFloatField;
    cdsPesquisaDATA_PREV_FATURAMENTO: TDateField;
    cdsPesquisaVALOR_PEDIDO: TFloatField;
    cdsProdutoNOTA_FISCAL: TStringField;
    cdsProdutoDATA_EMISSAO_NF: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmDadosRelatorioPedido: TDtmDadosRelatorioPedido;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDtmDadosRelatorioPedido.DataModuleCreate(Sender: TObject);
begin
  inherited;
   cdsProduto.CreateDataSet;
end;

procedure TDtmDadosRelatorioPedido.DataModuleDestroy(Sender: TObject);
begin
  inherited;
   cdsProduto.Destroy;
end;

end.
