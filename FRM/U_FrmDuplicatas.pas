unit U_FrmDuplicatas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, U_DtmDadosDuplicatas, Vcl.Buttons,
  Vcl.Mask,U_BibliotecaFuncoes,U_TCodDesc, U_DtmDadosFornecedor, U_FrmSelecaoPadrao,
  Data.DB;

type
  TFrmDuplicatas = class(TFrmPadrao)
    Panel1: TPanel;
    Label2: TLabel;
    rbMes: TRadioButton;
    rbPeriodo: TRadioButton;
    dtpPeriodoFim: TDateTimePicker;
    dtpPeriodoIni: TDateTimePicker;
    dbgrdDuplicata: TDBGrid;
    StatusBar1: TStatusBar;
    btnSair: TBitBtn;
    medtMesAno: TMaskEdit;
    lblLoja: TLabel;
    cbbLoja: TComboBox;
    pnl1: TPanel;
    lblTotal: TLabel;
    btnLimparPesquisa: TBitBtn;
    btnRelatorio: TBitBtn;
    Label1: TLabel;
    edtCodFornecedor: TEdit;
    btnConsultaFornecedor: TSpeedButton;
    edtRazaoSocial: TEdit;
    btnPesquisar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure rbMesClick(Sender: TObject);
    procedure rbPeriodoClick(Sender: TObject);
    procedure pesquisarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dbgrdDuplicataTitleClick(Column: TColumn);
    procedure btnLimparPesquisaClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure edtCodFornecedorExit(Sender: TObject);
    procedure btnConsultaFornecedorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure consultaFornecedor(var AEdtCod:TEdit; var AEdtDes:TEdit);
    procedure TotalizarGrade;
  public
    { Public declarations }
  end;

var
  FrmDuplicatas: TFrmDuplicatas;

implementation

uses U_FrmRelDuplicata;

{$R *.dfm}

procedure TFrmDuplicatas.btnConsultaFornecedorClick(Sender: TObject);
begin
  inherited;
  consultaFornecedor(edtCodFornecedor, edtRazaoSocial);
end;

procedure TFrmDuplicatas.btnLimparPesquisaClick(Sender: TObject);
begin
  inherited;
  lblTotal.Caption := 'Total: 0,00';
  DtmDadosDuplicatas.cdsPesquisa.Close;
end;

procedure TFrmDuplicatas.btnRelatorioClick(Sender: TObject);
begin
  inherited;
  try
    FrmRelDuplicata := TFrmRelDuplicata.Create(nil);
    FrmRelDuplicata.RLReport1.PreviewModal;
  finally
    FreeAndNil(FrmRelDuplicata);
  end;
end;

procedure TFrmDuplicatas.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmDuplicatas.consultaFornecedor(var AEdtCod, AEdtDes: TEdit);
begin
  try
    FrmSelecaoPadrao := TFrmSelecaoPadrao.Create(nil, DtmDadosFornecedor.cdsPesquisacodigo, DtmDadosFornecedor.cdsPesquisarazao_social);

    DtmDadosFornecedor.listar;
    FrmSelecaoPadrao.dbgrdConsulta.DataSource := DtmDadosFornecedor.dsPesquisa;
    FrmSelecaoPadrao.ShowModal;
    if FrmSelecaoPadrao.ModalResult = mrOk then
    begin
      AEdtCod.Text := FormatFloat('000', DtmDadosFornecedor.cdsPesquisacodigo.AsInteger);
      AEdtDes.Text := DtmDadosFornecedor.cdsPesquisarazao_social.AsString;
    end;

  finally
    FreeAndNil(FrmSelecaoPadrao);
  end;
end;

procedure TFrmDuplicatas.dbgrdDuplicataTitleClick(Column: TColumn);
var
  indexOf:integer;
begin
  inherited;
  DtmDadosDuplicatas.cdsPesquisa.IndexFieldNames := Column.FieldName;
  for indexOf := 0 to dbgrdDuplicata.Columns.Count -1 do
    dbgrdDuplicata.Columns[indexOf].Title.Color := clWindowText;

  Column.Title.Color := clNavy;
end;

procedure TFrmDuplicatas.edtCodFornecedorExit(Sender: TObject);
begin
  inherited;
  if Trim(edtCodFornecedor.Text) = '' then
    edtRazaoSocial.Clear
  else
  try
   // DtmDadosFornecedor := TDtmDadosFornecedor.Create(nil);
    edtRazaoSocial.Text := DtmDadosFornecedor.getRazaoSocial(StrToInt(edtCodFornecedor.Text));
    if Trim(edtRazaoSocial.Text) = '' then
      exibeMensagem('Fornecedor não encontrado!',tmAviso, edtCodFornecedor)
    else
      edtCodFornecedor.Text := FormatFloat('00', StrToInt(edtCodFornecedor.text));

  finally
   // FreeAndNil(DtmDadosFornecedor);
  end;
end;

procedure TFrmDuplicatas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;
  Action := caFree;
  FrmDuplicatas := nil;
end;

procedure TFrmDuplicatas.FormCreate(Sender: TObject);
begin
  inherited;
  DtmDadosDuplicatas := TDtmDadosDuplicatas.Create(nil);

  carregaCombo('loja', cbbLoja);
end;

procedure TFrmDuplicatas.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(DtmDadosDuplicatas);
end;

procedure TFrmDuplicatas.pesquisarClick(Sender: TObject);
var
  strFiltro:string;
  dValorTotal:Double;
begin
  inherited;

  if rbMes.Checked then
  begin
    if trim( StringReplace(medtMesAno.Text,'/','',[rfReplaceAll])) = '' then
      exibeMensagem('Mês/ano não informado!',tmAviso,medtMesAno,True);
    strFiltro := ' AND TO_CHAR(par.data_vencimento,''MM/YYYY'') = ' + QuotedStr(FormatDateTime('MM/YYYY' , StrToDate( '01/'+medtMesAno.Text)))
  end
  else
    strFiltro := ' AND par.data_vencimento between  to_date(' + QuotedStr(FormatDateTime('DD/MM/YYYY',dtpPeriodoIni.Date)) + ',''DD/MM/YYYY'') and TO_DATE(' + QuotedStr(FormatDateTime('DD/MM/YYYY',dtpPeriodoFim.Date)) + ',''DD/MM/YYYY'' ) ';
  if ( cbbLoja.ItemIndex = 0 ) then
     exibeMensagem('Loja não informada!',tmAviso,cbbLoja,True);
  if ( cbbLoja.ItemIndex > 0 ) then
   strFiltro := strFiltro + ' AND ped.cod_loja = ' + IntToStr( TCodDesc(cbbLoja.Items.Objects[cbbLoja.ItemIndex]).codigo);

  if Trim(edtCodFornecedor.Text) <> '' then
   strFiltro := strFiltro + ' AND forn.codigo = ' + edtCodFornecedor.Text;

  DtmDadosDuplicatas.listar(strFiltro);
  TotalizarGrade;
end;

procedure TFrmDuplicatas.rbMesClick(Sender: TObject);
begin
  inherited;
  medtMesAno.Enabled := True;
  dtpPeriodoIni.Enabled := False;
  dtpPeriodoFim.Enabled := False;
end;

procedure TFrmDuplicatas.rbPeriodoClick(Sender: TObject);
begin
  inherited;
  medtMesAno.Enabled := False;
  dtpPeriodoIni.Enabled := True;
  dtpPeriodoFim.Enabled := True;
end;

procedure TFrmDuplicatas.TotalizarGrade;
var
  dValorTotal:Double;
begin
  dValorTotal := 0;
  try
  if not ( DtmDadosDuplicatas.cdsPesquisa.IsEmpty) then
  begin
    DtmDadosDuplicatas.cdsPesquisa.DisableControls;
    DtmDadosDuplicatas.cdsPesquisa.First;
    while not ( DtmDadosDuplicatas.cdsPesquisa.Eof) do
    begin
      dValorTotal := dValorTotal +   DtmDadosDuplicatas.cdsPesquisavalor_parcela.AsFloat;
      DtmDadosDuplicatas.cdsPesquisa.Next;
    end;
  end;
  finally
    DtmDadosDuplicatas.cdsPesquisa.First;
    DtmDadosDuplicatas.cdsPesquisa.EnableControls;
  end;
  lblTotal.Caption :=
  'Total: ' + FormatFloat('###,###,##0.00',dValorTotal);
end;

end.
