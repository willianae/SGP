unit U_FrmBaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmCadastroPadrao, Data.DB,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  U_DtmDadosBaixa, U_FrmSelecaoPadrao, U_DtmDadosLoja, U_DtmDadosFornecedor,
  U_BibliotecaFuncoes, Datasnap.DBClient, U_DtmDadosProduto, U_TProduto, U_TBaixa;

type
  TFrmBaixa = class(TFrmCadastroPadrao)
    Label2: TLabel;
    Label3: TLabel;
    btnConsultaLoja: TSpeedButton;
    btnPesquisar: TBitBtn;
    cmbStatus: TComboBox;
    edtCodLoja: TEdit;
    edtDesLoja: TEdit;
    Label1: TLabel;
    btnConsultaFornecedor: TSpeedButton;
    edtCodFornecedor: TEdit;
    edtDesFornecedor: TEdit;
    grpDataPrevFaturamento: TGroupBox;
    chkDataPrevFaturamento: TCheckBox;
    dtpDataPrevFaturamentoAte: TDateTimePicker;
    dtpDataPrevFaturamentoDe: TDateTimePicker;
    Label4: TLabel;
    dsProduto: TDataSource;
    cdsProduto: TClientDataSet;
    cdsProdutoreferencia: TStringField;
    cdsProdutodescricao: TStringField;
    cdsProdutovalor_unitario: TFloatField;
    cdsProdutovalor_pdu: TFloatField;
    cdsProdutoquantidade: TIntegerField;
    cdsProdutovalor_total: TFloatField;
    grpProduto: TGroupBox;
    dbgrdProduto: TDBGrid;
    Label5: TLabel;
    edtCodPedido: TEdit;
    cdsProdutoqtd_recebido: TIntegerField;
    Label8: TLabel;
    edtQtdRecebido: TEdit;
    btnAdd: TBitBtn;
    btnReceberTodos: TBitBtn;
    cdsProdutobaixa: TIntegerField;
    btnLimparPesquisa: TBitBtn;
    grpNota: TGroupBox;
    chkNota: TCheckBox;
    Label7: TLabel;
    edtNotaFiscal: TEdit;
    Label6: TLabel;
    dtpDataEmissao: TDateTimePicker;
    cdsProdutocodigo: TIntegerField;
    cdsProdutonota_fiscal: TStringField;
    cdsProdutodata_emissao_nf: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure chkDataPrevFaturamentoClick(Sender: TObject);
    procedure btnConsultaLojaClick(Sender: TObject);
    procedure btnConsultaFornecedorClick(Sender: TObject);
    procedure edtCodLojaExit(Sender: TObject);
    procedure edtCodFornecedorExit(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure dtpDataPrevFaturamentoDeChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure dbgrdProdutoDblClick(Sender: TObject);
    procedure cdsProdutoAfterScroll(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure edtQtdRecebidoKeyPress(Sender: TObject; var Key: Char);
    procedure btnReceberTodosClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure chkNotaClick(Sender: TObject);
    procedure dbgrdConsultaDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure consultaLoja(var AEdtCod:TEdit; var AEdtDes:TEdit);
    procedure consultaFornecedor(var AEdtCod:TEdit; var AEdtDes:TEdit);
  public
    { Public declarations }
  end;

var
  FrmBaixa: TFrmBaixa;

implementation

{$R *.dfm}

procedure TFrmBaixa.btnAddClick(Sender: TObject);
begin
  inherited;
  if not cdsProduto.IsEmpty then
  begin
    if StrToInt(edtQtdRecebido.Text) > cdsProdutoquantidade.AsInteger - cdsProdutoqtd_recebido.AsInteger then
      exibeMensagem('A quantidade excede o número de produtos restantes!',tmAviso, edtQtdRecebido)
    else
    begin
      cdsProduto.Edit;
      cdsProdutobaixa.AsString := edtQtdRecebido.Text;
      cdsProduto.Post;
      cdsProduto.Next;
      edtQtdRecebido.SetFocus;
    end;
  end;
end;

procedure TFrmBaixa.btnAlterarClick(Sender: TObject);
begin
  //inherited;
  if not dbgrdConsulta.DataSource.DataSet.IsEmpty then
  try
    edtCodPedido.Text := FormatFloat('00', DtmDadosBaixa.cdsPesquisacod_pedido.AsInteger);

    DtmDadosProduto := TDtmDadosProduto.Create(nil);
    DtmDadosProduto.listar(DtmDadosBaixa.cdsPesquisacod_pedido.AsInteger);
    cdsProduto.Close;
    cdsProduto.CreateDataSet;
    while not DtmDadosProduto.cdsPesquisa.Eof do
    begin
      cdsProduto.Append;
      cdsProdutocodigo.Value         := DtmDadosProduto.cdsPesquisacodigo.Value;
      cdsProdutoreferencia.Value     := DtmDadosProduto.cdsPesquisareferencia.Value;
      cdsProdutodescricao.Value      := DtmDadosProduto.cdsPesquisadescricao.Value;
      cdsProdutovalor_unitario.Value := DtmDadosProduto.cdsPesquisavalor_unitario.Value;
      cdsProdutovalor_pdu.Value      := DtmDadosProduto.cdsPesquisavalor_pdu.Value;
      cdsProdutoquantidade.Value     := DtmDadosProduto.cdsPesquisaquantidade.Value;
      cdsProdutovalor_total.Value    := DtmDadosProduto.cdsPesquisavalor_total.Value;
      cdsProdutoqtd_recebido.Value   := DtmDadosProduto.cdsPesquisaqtd_recebido.Value;
      if DtmDadosProduto.cdsPesquisadata_emissao_nf.Value = 0 then
        cdsProdutodata_emissao_nf.AsString := ''
      else
        cdsProdutodata_emissao_nf.AsString := DtmDadosProduto.cdsPesquisadata_emissao_nf.AsString;
      cdsProdutonota_fiscal.Value    := DtmDadosProduto.cdsPesquisanota_fiscal.Value;
      cdsProduto.Post;
      DtmDadosProduto.cdsPesquisa.Next;
    end;
    cdsProduto.First;
    stbResumo.Panels[0].Text := FormatFloat('###,000', cdsProduto.RecordCount) + ' registro(s) encontrado(s).';

    tbsCadastro.TabVisible := True;
    tbsConsulta.TabVisible := False;
    //pgctrlPrincipal.ActivePage := tbsCadastro;

  finally

    FreeAndNil(DtmDadosProduto);
  end;
end;

procedure TFrmBaixa.btnCancelarClick(Sender: TObject);
begin
  inherited;
  edtCodPedido.Clear;
  edtNotaFiscal.Clear;
  dtpDataEmissao.DateTime := DataDB;
  edtQtdRecebido.Clear;
  cdsProduto.Close;
  tbsCadastro.TabVisible := False;
  tbsConsulta.TabVisible := True;
  btnPesquisarClick(Sender);

end;

procedure TFrmBaixa.btnConsultaFornecedorClick(Sender: TObject);
begin
  inherited;
   consultaFornecedor(edtCodFornecedor, edtDesFornecedor);
end;

procedure TFrmBaixa.btnConsultaLojaClick(Sender: TObject);
begin
  inherited;
  consultaLoja(edtCodLoja, edtDesLoja);
end;

procedure TFrmBaixa.btnExcluirClick(Sender: TObject);
begin
  //inherited;
  edtPesquisa.Clear;
  edtCodLoja.Clear;
  edtDesLoja.Clear;
  edtCodFornecedor.Clear;
  edtDesFornecedor.Clear;
  chkDataPrevFaturamento.Checked := False;
  cmbStatus.ItemIndex := 0;
  dbgrdConsulta.DataSource.DataSet.Close;
  stbResumo.Panels[0].Text := '000 Registros Encontrados';
end;

procedure TFrmBaixa.btnPesquisarClick(Sender: TObject);
var
  strCondicao:string;
begin
  inherited;
  if Trim(edtPesquisa.Text) <> '' then
    strCondicao := ' AND V.COD_PEDIDO = ' + edtPesquisa.Text;

  if Trim(edtCodLoja.Text) <> '' then
    strCondicao := strCondicao + ' AND V.COD_LOJA = ' + edtCodLoja.Text;

  if Trim(edtCodFornecedor.Text) <> '' then
    strCondicao := strCondicao + ' AND V.COD_FORNECEDOR = ' + edtCodFornecedor.Text;

  if chkDataPrevFaturamento.Checked then
    strCondicao := strCondicao + ' AND V.DATA_PREV_FATURAMENTO BETWEEN ' +
                   QuotedStr(FormatDateTime('dd/mm/yyyy', dtpDataPrevFaturamentoDe.DateTime )) + ' AND '+
                   QuotedStr(FormatDateTime('dd/mm/yyyy', dtpDataPrevFaturamentoAte.DateTime));

  if cmbStatus.ItemIndex >0 then
    strCondicao := strCondicao + ' AND V.STATUS = ' + QuotedStr(Copy(cmbStatus.Text,1,1));

  DtmDadosBaixa.listar(strCondicao);
  stbResumo.Panels[0].Text := FormatFloat('###,000', dbgrdConsulta.DataSource.DataSet.RecordCount) + ' registro(s) encontrado(s).';

end;

procedure TFrmBaixa.btnReceberTodosClick(Sender: TObject);
begin
  inherited;
  if not cdsProduto.IsEmpty then
  begin
    cdsProduto.First;
    while not cdsProduto.Eof do
    begin
      cdsProduto.Edit;
      cdsProdutobaixa.AsInteger := cdsProdutoquantidade.AsInteger - cdsProdutoqtd_recebido.AsInteger;
      cdsProduto.Post;
      cdsProduto.Next;
    end;
    cdsProduto.First;
  end;
end;

procedure TFrmBaixa.btnSalvarClick(Sender: TObject);
var
  booAux:boolean;
  vBaixa: TBaixa;
  vListaProduto: TListaProdutos;

begin
  inherited;
  vBaixa := TBaixa.Create;
  try
    vBaixa.cod_pedido := StrToInt(edtCodPedido.Text);
    vBaixa.tipo := 'P';
    vBaixa.data_baixa := DataDB;
    if chkNota.Checked then
    begin
      vBaixa.nota_fiscal := edtNotaFiscal.Text;
      vBaixa.data_emissao_nf := dtpDataEmissao.DateTime;
    end;

    SetLength(vListaProduto, cdsProduto.RecordCount);

    booAux := False;
    cdsProduto.DisableControls;
    cdsProduto.First;
    while not cdsProduto.Eof do
    begin
      vListaProduto[cdsProduto.RecNo-1] := TProduto.Create;
      vListaProduto[cdsProduto.RecNo-1].codigo := cdsProdutocodigo.AsInteger;
      vListaProduto[cdsProduto.RecNo-1].valor_unitario := cdsProdutovalor_unitario.AsFloat;
      if cdsProdutobaixa.AsString <> '' then
      begin
        vListaProduto[cdsProduto.RecNo-1].qtd_recebido := cdsProdutobaixa.Value;

        booAux := True;
      end;
      cdsProduto.Next;
    end;
    if not booAux then
      exibeMensagem('Não foi efetuada nenhuma baixa!',tmAviso)
    else
    begin
      vBaixa.lista_produtos := vListaProduto;
      DtmDadosBaixa.salvar(vBaixa);
    end;

    exibeMensagem('Baixa salva com sucesso!',tmInformacao);
    btnCancelarClick(Sender);


  finally
    FreeAndNil(vBaixa);
    cdsProduto.EnableControls;

  end;
end;

procedure TFrmBaixa.cdsProdutoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  edtQtdRecebido.Text := cdsProdutobaixa.AsString;
end;

procedure TFrmBaixa.chkDataPrevFaturamentoClick(Sender: TObject);
begin
  inherited;
  if chkDataPrevFaturamento.Checked then
    grpDataPrevFaturamento.Enabled := True
  else
    grpDataPrevFaturamento.Enabled := False;

end;

procedure TFrmBaixa.chkNotaClick(Sender: TObject);
begin
  inherited;
  if chkNota.Checked then
    grpNota.Enabled := True
  else
  begin
    edtNotaFiscal.Clear;
    dtpDataEmissao.DateTime := DataDB;
    grpNota.Enabled := False;
  end;
end;

procedure TFrmBaixa.consultaFornecedor(var AEdtCod, AEdtDes: TEdit);
begin
  try
    AEdtDes.Clear;
    //DtmDadosFornecedor := TDtmDadosFornecedor.Create(nil);

    FrmSelecaoPadrao := TFrmSelecaoPadrao.Create(nil, DtmDadosFornecedor.cdsPesquisacodigo, DtmDadosFornecedor.cdsPesquisarazao_social );
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
    //FreeAndNil(DtmDadosFornecedor);
  end;
end;

procedure TFrmBaixa.consultaLoja(var AEdtCod, AEdtDes: TEdit);
begin
  try
    AEdtDes.Clear;
    //DtmDadosLoja := TDtmDadosLoja.Create(nil);

    FrmSelecaoPadrao := TFrmSelecaoPadrao.Create(nil, DtmDadosLoja.cdsPesquisacodigo, DtmDadosLoja.cdsPesquisadescricao);
    DtmDadosLoja.listar;
    FrmSelecaoPadrao.dbgrdConsulta.DataSource := DtmDadosLoja.dsPesquisa;
    FrmSelecaoPadrao.ShowModal;
    if FrmSelecaoPadrao.ModalResult = mrOk then
    begin
      AEdtCod.Text := FormatFloat('000', DtmDadosLoja.cdsPesquisacodigo.AsInteger);
      AEdtDes.Text := DtmDadosLoja.cdsPesquisadescricao.AsString;
    end;
  finally
    FreeAndNil(FrmSelecaoPadrao);
    //FreeAndNil(DtmDadosLoja);
  end;
end;

procedure TFrmBaixa.dbgrdConsultaDblClick(Sender: TObject);
begin
  inherited;
  btnAlterarClick(Sender);
end;

procedure TFrmBaixa.dbgrdProdutoDblClick(Sender: TObject);
begin
  inherited;
  edtQtdRecebido.SetFocus;

end;

procedure TFrmBaixa.dtpDataPrevFaturamentoDeChange(Sender: TObject);
begin
  inherited;
  dtpDataPrevFaturamentoAte.DateTime := dtpDataPrevFaturamentoDe.DateTime;
end;

procedure TFrmBaixa.edtCodFornecedorExit(Sender: TObject);
begin
  inherited;
  if Trim(edtCodFornecedor.Text) = '' then
    edtDesFornecedor.Clear
  else
  begin
    edtDesFornecedor.Text := getDescricao('fornecedor', StrToInt(edtCodFornecedor.Text), 'razao_social');
    if Trim(edtDesFornecedor.Text) = '' then
      exibeMensagem('Fornecedor não encontrado!',tmAviso, edtCodFornecedor);
  end;
end;

procedure TFrmBaixa.edtCodLojaExit(Sender: TObject);
begin
  inherited;
  if Trim(edtCodLoja.Text) = '' then
    edtDesLoja.Clear
  else
  begin
    edtDesLoja.Text := getDescricao('loja', StrToInt(edtCodLoja.Text));
    if Trim(edtDesLoja.Text) = '' then
      exibeMensagem('Loja não encontrada!',tmAviso, edtCodLoja);
  end;
end;

procedure TFrmBaixa.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmBaixa.edtQtdRecebidoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btnAddClick(Sender);
end;

procedure TFrmBaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;
  Action := caFree;
  FrmBaixa := nil;
end;

procedure TFrmBaixa.FormCreate(Sender: TObject);
begin
  inherited;
  DtmDadosBaixa := TDtmDadosBaixa.Create(nil);
  DtmDadosLoja := TDtmDadosLoja.Create(Nil);
  DtmDadosFornecedor := TDtmDadosFornecedor.Create(nil);
  dtpDataPrevFaturamentoDe.DateTime  := DataDB;
  dtpDataPrevFaturamentoAte.DateTime := DataDB;
  dtpDataEmissao.DateTime := DataDB;
end;

procedure TFrmBaixa.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(DtmDadosBaixa);
  FreeAndNil(DtmDadosLoja);
  FreeAndNil(DtmDadosFornecedor);
end;

end.
