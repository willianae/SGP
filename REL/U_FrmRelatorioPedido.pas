unit U_FrmRelatorioPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmRelPadrao, Data.DB, RLFilters,
  RLPDFFilter, RLReport,U_DtmDadosRelatorioPedido;

type
  TFrmRelatorioPedido = class(TFrmRelPadrao)
    RlblPeriodo: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel14: TRLLabel;
    RLSubDetailProduto: TRLSubDetail;
    RLBand6: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand7: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel15: TRLLabel;
    RLLblValorTotalReceber: TRLLabel;
    RLLblValorTotalRecebido: TRLLabel;
    RLLblQtdTotalReceber: TRLLabel;
    RLLblQtdTotalRecebido: TRLLabel;
    RLDBText1: TRLDBText;
    RLLblQtdTotal: TRLLabel;
    RLLblValorTotal: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel16: TRLLabel;
    RLBand8: TRLBand;
    RLDBResult1: TRLDBResult;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel17: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel23: TRLLabel;
    RlblPrevFaturamento: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText15: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    FTotalRecebido: Double;
    FTotalAReceber: Double;
    FQtdRecebido: Integer;
    FQtdAReceber: Integer;
    procedure SetTotalAReceber(const Value: Double);
    procedure SetTotalRecebido(const Value: Double);
    procedure SetQtdRecebido(const Value: Integer);
    procedure SetQtdAReceber(const Value: Integer);
    { Private declarations }
    property TotalRecebido:Double read FTotalRecebido write SetTotalRecebido;
    property TotalAReceber:Double read FTotalAReceber write SetTotalAReceber;
    property QtdRecebido:Integer read FQtdRecebido write SetQtdRecebido;
    property QtdAReceber:Integer read FQtdAReceber write SetQtdAReceber;
  public
    { Public declarations }
  end;

var
  FrmRelatorioPedido: TFrmRelatorioPedido;

implementation

{$R *.dfm}                                            

procedure TFrmRelatorioPedido.FormCreate(Sender: TObject);
begin
     inherited;
   RLReport1.DataSource := DtmDadosRelatorioPedido.dsPesquisa;
   RLSubDetailProduto.DataSource := DtmDadosRelatorioPedido.dsProduto;
   SetTotalAReceber(0);
   SetTotalRecebido(0);
   SetQtdRecebido(0);
   SetQtdAReceber(0);
end;

procedure TFrmRelatorioPedido.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
   RLLblValorTotalReceber.Caption  := FormatFloat('###,###,##0.00',TotalAReceber);
   RLLblValorTotalRecebido.Caption := FormatFloat('###,###,##0.00',TotalRecebido);
   RLLblQtdTotalReceber.Caption    := FormatFloat('000',QtdAReceber);
   RLLblQtdTotalRecebido.Caption   := FormatFloat('000',QtdRecebido);

   RLLblQtdTotal.Caption           := FormatFloat('000',QtdRecebido + QtdAReceber);
   RLLblValorTotal.Caption         := FormatFloat('###,###,##0.00',TotalRecebido + TotalAReceber);
end;

procedure TFrmRelatorioPedido.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
   if ( DtmDadosRelatorioPedido.cdsProdutoFLG_RECEBIDO.AsString = 'X' )  then
   begin
      TotalRecebido := TotalRecebido + DtmDadosRelatorioPedido.cdsProdutoVALOR_TOTAL.AsFloat;
      QtdRecebido   := QtdRecebido   + DtmDadosRelatorioPedido.cdsProdutoQUANTIDADE.AsInteger;
   end
   else
   begin
      TotalAReceber := TotalAReceber + DtmDadosRelatorioPedido.cdsProdutoVALOR_TOTAL.AsFloat;
      QtdAReceber   := QtdAReceber   + DtmDadosRelatorioPedido.cdsProdutoQUANTIDADE.AsInteger;
   end;
end;

procedure TFrmRelatorioPedido.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
   if ( RLBand6.Height = 0 )then

   RLSubDetailProduto.PageBreaking := pbNone;
end;

procedure TFrmRelatorioPedido.SetQtdAReceber(const Value: Integer);
begin
  FQtdAReceber := Value;
end;

procedure TFrmRelatorioPedido.SetQtdRecebido(const Value: Integer);
begin
  FQtdRecebido := Value;
end;

procedure TFrmRelatorioPedido.SetTotalAReceber(const Value: Double);
begin
  FTotalAReceber := Value;
end;

procedure TFrmRelatorioPedido.SetTotalRecebido(const Value: Double);
begin
  FTotalRecebido := Value;
end;

end.
