unit U_FrmCadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrmCadastroPadrao = class(TFrmPadrao)
    pgctrlPrincipal: TPageControl;
    tbsConsulta: TTabSheet;
    tbsCadastro: TTabSheet;
    pnlConsulta: TPanel;
    dbgrdConsulta: TDBGrid;
    dsConsulta: TDataSource;
    lblPesquisa: TLabel;
    edtPesquisa: TEdit;
    pnlBotoes: TPanel;
    btnSair: TBitBtn;
    pnlBotoesAcoes: TPanel;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    pnlBotoesLateral: TPanel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    pnlCorpo: TPanel;
    stbResumo: TStatusBar;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrdConsultaTitleClick(Column: TColumn);
    procedure tbsConsultaShow(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroPadrao: TFrmCadastroPadrao;

implementation

{$R *.dfm}

procedure TFrmCadastroPadrao.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmCadastroPadrao.dbgrdConsultaTitleClick(Column: TColumn);
var
  indexOf:integer;
begin
  inherited;
  for indexOf := 0 to dbgrdConsulta.Columns.Count -1 do
    dbgrdConsulta.Columns[indexOf].Title.Color := clBlack;

  Column.Title.Color := clNavy;

end;

procedure TFrmCadastroPadrao.dsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  {if Assigned(dbgrdConsulta.DataSource) then
    if not( dbgrdConsulta.DataSource.DataSet.IsEmpty) then
     stbResumo.Panels[0].Text := 'Qtd. Registros: ' + FormatFloat('000', dbgrdConsulta.DataSource.DataSet.RecordCount);
  }
end;

procedure TFrmCadastroPadrao.FormCreate(Sender: TObject);
begin
  inherited;
  pgctrlPrincipal.ActivePage := tbsConsulta;
  dbgrdConsulta.Columns[0].Title.Color := clNavy;
end;

procedure TFrmCadastroPadrao.FormShow(Sender: TObject);
begin
  inherited;
  if tbsConsulta.Visible then
    pgctrlPrincipal.ActivePage := tbsConsulta;
end;

procedure TFrmCadastroPadrao.tbsConsultaShow(Sender: TObject);
begin
  inherited;
  if Assigned(dbgrdConsulta.DataSource) then
    if not( dbgrdConsulta.DataSource.DataSet.IsEmpty) then
     stbResumo.Panels[0].Text := 'Qtd. Registros: ' + FormatFloat('000', dbgrdConsulta.DataSource.DataSet.RecordCount);

end;

end.
