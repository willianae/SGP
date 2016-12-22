unit U_FrmRelDuplicata;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,U_DtmDadosDuplicatas, U_FrmRelPadrao,
  Data.DB, RLFilters, RLPDFFilter, RLReport;

type
  TFrmRelDuplicata = class(TFrmRelPadrao)
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBResult1: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelDuplicata: TFrmRelDuplicata;

implementation

{$R *.dfm}

end.
