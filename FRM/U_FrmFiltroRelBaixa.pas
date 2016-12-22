unit U_FrmFiltroRelBaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask;

type
  TFrmFIltroRelBaixa = class(TFrmPadrao)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    medtDataInicio: TMaskEdit;
    medtDataFim: TMaskEdit;
    rg_StatusBaixa: TRadioGroup;
    edtNumPedido: TEdit;
    grpFornecedor: TGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    btnConsultaFornecedor: TSpeedButton;
    edtCodFornecedor: TEdit;
    edtNomeFornecedor: TEdit;
    grpLoja: TGroupBox;
    lbl6: TLabel;
    lbl7: TLabel;
    btnConsultaLoja: TSpeedButton;
    edtCodLoja: TEdit;
    edtNomeLoja: TEdit;
    pnl2: TPanel;
    btnRelatorio: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFIltroRelBaixa: TFrmFIltroRelBaixa;

implementation

{$R *.dfm}

end.
