unit U_FrmCadastroPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmCadastroPadrao, Data.DB,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  U_DtmDadosFornecedor, U_BibliotecaFuncoes, Datasnap.DBClient,
  U_TCodDesc, U_TPedido, U_DtmDadosPedido, U_DtmDadosProduto, U_TProduto, U_TParcela,
  U_DtmDadosParcela, U_FrmCadastroFornecedor, Vcl.Mask;
type
  TFrmCadastroPedido = class(TFrmCadastroPadrao)
    Label1: TLabel;
    edtCodFornecedor: TEdit;
    btnConsultaFornecedor: TSpeedButton;
    edtRazaoSocial: TEdit;
    Label5: TLabel;
    edtCodigo: TEdit;
    Label2: TLabel;
    dtpData: TDateTimePicker;
    grpProduto: TGroupBox;
    Label3: TLabel;
    edtReferencia: TEdit;
    edtProduto: TEdit;
    Label4: TLabel;
    Label12: TLabel;
    edtValorUnitario: TEdit;
    Label6: TLabel;
    edtValorPdu: TEdit;
    Label7: TLabel;
    edtValorTotal: TEdit;
    Label8: TLabel;
    edtQtd: TEdit;
    dbgrdProduto: TDBGrid;
    btnAdd: TBitBtn;
    btnRemove: TBitBtn;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    cdsProdutoreferencia: TStringField;
    cdsProdutodescricao: TStringField;
    cdsProdutovalor_unitario: TFloatField;
    cdsProdutovalor_pdu: TFloatField;
    cdsProdutoquantidade: TIntegerField;
    cdsProdutovalor_total: TFloatField;
    edtParcelas: TEdit;
    Label9: TLabel;
    btnCalculaParcelas: TBitBtn;
    dbgrdParcelas: TDBGrid;
    dsParcelas: TDataSource;
    cdsParcelas: TClientDataSet;
    cdsParcelasdata_vencimento: TDateField;
    cdsParcelasvalor_parcela: TFloatField;
    btnLimpar: TBitBtn;
    lblLojas: TLabel;
    lstbxLojas: TListBox;
    cmbLojas: TComboBox;
    btnAddLoja: TBitBtn;
    btnRemoveLoja: TBitBtn;
    btnAddTodas: TBitBtn;
    grpValores: TGroupBox;
    Label11: TLabel;
    edtDesconto1: TEdit;
    Label13: TLabel;
    edtDesconto2: TEdit;
    Label14: TLabel;
    lblValorTotal: TLabel;
    Label15: TLabel;
    dtpDataPrevFaturamento: TDateTimePicker;
    cdsProdutocheck_nao_vai: TBooleanField;
    btnCadFornecedor: TSpeedButton;
    btnCalculaDesconto: TBitBtn;
    Label16: TLabel;
    cmbLojaPedido: TComboBox;
    Label10: TLabel;
    memoObs: TMemo;
    grpRepresentante: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtEmailRepresentante: TEdit;
    edtFoneRepresentante: TMaskEdit;
    edtNomeRepresentante: TEdit;
    lblLoja: TLabel;
    cbbLoja: TComboBox;
    Label20: TLabel;
    edtCodForConsulta: TEdit;
    btnConsultaForConsulta: TSpeedButton;
    edtRazaoSocialConsulta: TEdit;
    dtpPeriodoIni: TDateTimePicker;
    Label21: TLabel;
    dtpPeriodoFim: TDateTimePicker;
    btnPesquisar: TBitBtn;
    Label22: TLabel;
    Panel1: TPanel;
    dbgrdProdutoConsulta: TDBGrid;
    Panel2: TPanel;
    btnExcluirProdutoConsulta: TBitBtn;
    dsProdutoConsulta: TDataSource;
    dtpDataPrevFaturamentoDe: TDateTimePicker;
    Label23: TLabel;
    dtpDataPrevFaturamentoAte: TDateTimePicker;
    Label24: TLabel;
    stbResumoProd: TStatusBar;
    stbResumoPed: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConsultaFornecedorClick(Sender: TObject);
    procedure edtCodFornecedorExit(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnCalculaParcelasClick(Sender: TObject);
    procedure btnLimparLojasClick(Sender: TObject);
    procedure btnRemoveLojaClick(Sender: TObject);
    procedure btnAddTodasClick(Sender: TObject);
    procedure btnAddLojaClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtQtdExit(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorUnitarioChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtDesconto1Exit(Sender: TObject);
    procedure dbgrdProdutoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdProdutoCellClick(Column: TColumn);
    procedure dbgrdConsultaDblClick(Sender: TObject);
    procedure btnCadFornecedorClick(Sender: TObject);
    procedure btnCalculaDescontoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtReferenciaKeyPress(Sender: TObject; var Key: Char);
    procedure cmbLojaPedidoSelect(Sender: TObject);
    procedure edtDesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnConsultaForConsultaClick(Sender: TObject);
    procedure edtCodForConsultaExit(Sender: TObject);
    procedure btnExcluirProdutoConsultaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsProdutoConsultaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    TipoOperacao: TTipoOperacao;
    FValorTotal: double;
    procedure gerarParcelas(AFilial:boolean=false);
    procedure inserirPedido(ACodLoja:Integer; AFilial:Boolean = false);
    procedure limpar;
    function validaCampos: boolean;
    function validaCamposProduto: boolean;
    function getValorTotal(AFilial:boolean=false):Double;
    procedure calculaValorTotal;
  public
    { Public declarations }
    procedure consultaFornecedor(var AEdtCod:TEdit; var AEdtDes:TEdit);

  end;

var
  FrmCadastroPedido: TFrmCadastroPedido;

implementation

{$R *.dfm}

uses U_FrmSelecaoPadrao;

{ TFrmCadastroPedido }

procedure TFrmCadastroPedido.btnAddClick(Sender: TObject);
begin
  inherited;
  if validaCamposProduto then
  begin
    cdsProduto.Append;
    cdsProdutoreferencia.AsString     := edtReferencia.Text;
    cdsProdutodescricao.AsString      := edtProduto.Text;
    cdsProdutovalor_unitario.AsFloat  := StrToFloat(edtValorUnitario.Text);
    cdsProdutovalor_pdu.AsFloat       := StrToFloat(edtValorPdu.Text);
    cdsProdutoquantidade.AsInteger    :=  StrToInt(edtQtd.Text);
    cdsProdutovalor_total.AsFloat     := StrToFloat(StringReplace(edtValorTotal.Text, '.','',[rfReplaceAll]));

    FValorTotal := FValorTotal + cdsProdutovalor_total.AsFloat;

    cdsProduto.Post;

    lblValorTotal.Caption := FormatFloat('###,##0.00', FValorTotal);



    edtReferencia.Clear;
    edtProduto.Clear;
    edtValorUnitario.Text := '0,00';
    edtValorPdu.Text := '0,00';
    edtQtd.Text := '00';
    edtValorTotal.Text := '0,00';
    edtReferencia.SetFocus;
    btnRemove.Enabled := True;
  end;
end;

procedure TFrmCadastroPedido.btnAddLojaClick(Sender: TObject);
begin
  inherited;
  if cmbLojaPedido.ItemIndex = 0 then
    exibeMensagem('Escolha primeiro a loja do pedido!',tmAviso,cmbLojaPedido)
  else
  if (lstbxLojas.Items.IndexOf(cmbLojas.Text) < 0) and (cmbLojas.ItemIndex > 0) and (cmbLojas.Text <> cmbLojaPedido.Text) then
    lstbxLojas.Items.AddObject(cmbLojas.Items[cmbLojas.ItemIndex] , cmbLojas.Items.Objects[cmbLojas.ItemIndex]);
end;

procedure TFrmCadastroPedido.btnAddTodasClick(Sender: TObject);
var
  indexOf:integer;
begin
  inherited;
  lstbxLojas.Items.Clear;
  for indexOf := 1 to cmbLojas.Items.Count - 1 do
    if ( cmbLojas.Items[indexOf] <> cmbLojaPedido.Text) then
      lstbxLojas.Items.AddObject(cmbLojas.Items[indexOf] , cmbLojas.Items.Objects[indexOf]);

end;

procedure TFrmCadastroPedido.btnAlterarClick(Sender: TObject);
begin
  if not dsConsulta.DataSet.IsEmpty then
  begin
    //CodVeiculo         := DtmDadosPedido.cdsPesquisacod_veiculo.AsInteger;
    edtCodigo.Text     := DtmDadosPedido.cdsPesquisacodigo.AsString;
    edtCodFornecedor.Text  := FormatFloat('00',DtmDadosPedido.cdsPesquisacod_fornecedor.AsFloat);
    edtCodFornecedorExit(Sender);
    dtpData.DateTime   := DtmDadosPedido.cdsPesquisadata_pedido.AsDateTime;
    dtpDataPrevFaturamento.DateTime := DtmDadosPedido.cdsPesquisadata_prev_faturamento.AsDateTime;
    edtDesconto1.Text := FormatFLoat('##0.00', DtmDadosPedido.cdsPesquisavalor_desconto1.AsFloat);
    edtDesconto2.Text := FormatFLoat('##0.00', DtmDadosPedido.cdsPesquisavalor_desconto2.AsFloat);

    edtNomeRepresentante.Text := DtmDadosPedido.cdsPesquisanome_representante.AsString;
    edtFoneRepresentante.Text := DtmDadosPedido.cdsPesquisafone_representante.AsString;
    edtEmailRepresentante.Text := DtmDadosPedido.cdsPesquisaemail_representante.AsString;


    memoObs.Text := DtmDadosPedido.cdsPesquisaobservacoes.AsString;
    FValorTotal := DtmDadosPedido.cdsPesquisavalor_pedido.AsFloat;
    lblValorTotal.Caption := FormatFloat('###,##0.00', FValorTotal);

    lstbxLojas.Visible := False;
    btnAddLoja.Visible := False;
    btnRemoveLoja.Visible := False;
    btnAddTodas.Visible := False;
    selecionarCombo(DtmDadosPedido.cdsPesquisacod_loja.AsInteger, cmbLojaPedido);
    cmbLojaPedido.Enabled := False;
    cmbLojas.Visible := False;
    lblLojas.Visible := False;



    edtParcelas.Text := DtmDadosPedido.cdsPesquisaparcelas_txt.AsString;
    edtParcelas.Enabled := False;

    DtmDadosParcela.listar(DtmDadosPedido.cdsPesquisacodigo.AsInteger);
    cdsParcelas.Data := DtmDadosParcela.cdsPesquisa.Data;
    //dbgrdParcelas.Visible := False;
    btnLimpar.Visible := False;
    btnCalculaParcelas.Visible := False;

    DtmDadosProduto.listar(DtmDadosPedido.cdsPesquisacodigo.AsInteger);

    cdsProduto.Close;
    cdsProduto.CreateDataSet;

    while not DtmDadosProduto.cdsPesquisa.Eof do
    begin
      cdsProduto.Append;
      cdsProdutoreferencia.AsString     := DtmDadosProduto.cdsPesquisareferencia.AsString;
      cdsProdutodescricao.AsString      := DtmDadosProduto.cdsPesquisadescricao.AsString;
      cdsProdutovalor_unitario.AsFloat  := DtmDadosProduto.cdsPesquisavalor_unitario.AsFloat;
      cdsProdutovalor_pdu.AsFloat       := DtmDadosProduto.cdsPesquisavalor_pdu.AsFloat;
      cdsProdutoquantidade.AsInteger    := DtmDadosProduto.cdsPesquisaquantidade.AsInteger;
      cdsProdutovalor_total.AsFloat     := DtmDadosProduto.cdsPesquisavalor_total.AsFloat;
      cdsProduto.Post;
      DtmDadosProduto.cdsPesquisa.Next;
    end;
    cdsProduto.First;

    TipoOperacao := toAlterar;

    btnSalvar.Enabled := False;
    grpProduto.Enabled := False;
    grpValores.Enabled := False;
    pgctrlPrincipal.ActivePage := tbsCadastro;
  end;

end;

procedure TFrmCadastroPedido.btnCadFornecedorClick(Sender: TObject);
begin
  inherited;
  {try
    FrmCadastroFornecedor := TFrmCadastroFornecedor.Create(nil);
    FrmCadastroFornecedor.ShowModal;
  finally
    FreeAndNil(FrmCadastroFornecedor);
  end;
  }

  try
    FrmCadastroFornecedor := TFrmCadastroFornecedor.Create(application);
    FrmCadastroFornecedor.SetTipoOperacao(toCadastroRapido);
    FrmCadastroFornecedor.FormStyle := fsNormal;
    FrmCadastroFornecedor.Visible := False;
    FrmCadastroFornecedor.ShowModal;
  finally
    FreeAndNil(FrmCadastroFornecedor);
  end;
end;

procedure TFrmCadastroPedido.btnCalculaDescontoClick(Sender: TObject);
begin
  inherited;
  lblValorTotal.Caption := FormatFloat('###,##0.00',getValorTotal);
end;

procedure TFrmCadastroPedido.btnCalculaParcelasClick(Sender: TObject);
begin
  gerarParcelas(false);
end;

procedure TFrmCadastroPedido.btnCancelarClick(Sender: TObject);
begin
  inherited;
  limpar;
end;

procedure TFrmCadastroPedido.btnConsultaForConsultaClick(Sender: TObject);
begin
  inherited;
  consultaFornecedor(edtCodForConsulta, edtRazaoSocialConsulta);
end;

procedure TFrmCadastroPedido.btnConsultaFornecedorClick(Sender: TObject);
begin
  inherited;
  consultaFornecedor(edtCodFornecedor, edtRazaoSocial);
end;

procedure TFrmCadastroPedido.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if not DtmDadosPedido.cdsPesquisa.IsEmpty then
    if exibeMensagem('Deseja realmente excluir o pedido, incluindo parcelas e baixa?', tmPergunta) = mrYes then
    begin
      DtmDadosPedido.excluir(DtmDadosPedido.cdsPesquisacodigo.AsInteger);
    end;

  btnPesquisarClick(Sender);
end;

procedure TFrmCadastroPedido.btnExcluirProdutoConsultaClick(Sender: TObject);
begin
  inherited;
  if not DtmDadosPedido.cdsProduto.IsEmpty then
  begin
    if DtmDadosPedido.cdsProdutoflg_recebido.AsString = 'S' then
      exibeMensagem('Esse produto já foi recebido, portanto não poderá ser excluído.',tmAviso)
    else
    if exibeMensagem('Deseja realmente excluir o produto?'#13+
                     'Lembrando que o valor do pedido será alterado', tmPergunta) = mrYes then
    begin
      DtmDadosPedido.excluirProduto(DtmDadosPedido.cdsProdutocod_pedido.AsInteger, DtmDadosPedido.cdsProdutocodigo.AsInteger);
      btnPesquisarClick(Sender);
    end;
  end;
end;

procedure TFrmCadastroPedido.btnLimparClick(Sender: TObject);
begin
  inherited;
  cdsParcelas.Close;
  edtParcelas.Enabled := True;
end;

procedure TFrmCadastroPedido.btnLimparLojasClick(Sender: TObject);
begin
  inherited;
  lstbxLojas.Items.Clear;
end;

procedure TFrmCadastroPedido.btnPesquisarClick(Sender: TObject);
var
  strFiltro:string;
  dValorTotal:Double;
begin
  inherited;
  Screen.cursor := crSQLWait;
  try
    if dtpPeriodoIni.Checked then
      strFiltro := strFiltro + ' AND ped.data_pedido >= to_date(' + QuotedStr(FormatDateTime('DD/MM/YYYY',dtpPeriodoIni.Date)) + ',''DD/MM/YYYY'') ';

    if dtpPeriodoFim.Checked then
      strFiltro := strFiltro + ' AND ped.data_pedido <= to_date(' + QuotedStr(FormatDateTime('DD/MM/YYYY',dtpPeriodoFim.Date)) + ',''DD/MM/YYYY'') ';

    if dtpDataPrevFaturamentoDe.Checked then
      strFiltro := strFiltro + ' AND ped.data_prev_faturamento >= to_date(' + QuotedStr(FormatDateTime('DD/MM/YYYY',dtpDataPrevFaturamentoDe.Date)) + ',''DD/MM/YYYY'') ';

    if dtpDataPrevFaturamentoAte.Checked then
      strFiltro := strFiltro + ' AND ped.data_prev_faturamento <= to_date(' + QuotedStr(FormatDateTime('DD/MM/YYYY',dtpDataPrevFaturamentoAte.Date)) + ',''DD/MM/YYYY'') ';

    if ( cbbLoja.ItemIndex > 0 ) then
     strFiltro := strFiltro + ' AND ped.cod_loja = ' + IntToStr( TCodDesc(cbbLoja.Items.Objects[cbbLoja.ItemIndex]).codigo);

    if Trim(edtCodForConsulta.Text) <> '' then
     strFiltro := strFiltro + ' AND forn.codigo = ' + edtCodForConsulta.Text;

    DtmDadosPedido.listar(strFiltro);

    if not( dbgrdConsulta.DataSource.DataSet.IsEmpty) then
       stbResumoPed.Panels[0].Text := 'Qtd. Registros: ' + FormatFloat('000', dbgrdConsulta.DataSource.DataSet.RecordCount)
    else
      stbResumoPed.Panels[0].Text := 'Qtd. Registros: 000';
  finally
    Screen.cursor := crDefault;
  end;
end;

procedure TFrmCadastroPedido.btnRemoveClick(Sender: TObject);
begin
  inherited;
  if not cdsProduto.IsEmpty then
  begin
    FValorTotal := FValorTotal - cdsProdutovalor_total.AsFloat;
    lblValorTotal.Caption := FormatFloat('###,##0.00', FValorTotal);
    cdsProduto.Delete;
    btnRemove.Enabled := not cdsProduto.IsEmpty;
  end;
end;

procedure TFrmCadastroPedido.btnRemoveLojaClick(Sender: TObject);
begin
  inherited;
  if lstbxLojas.Items.Count > 0 then
   lstbxLojas.Items.Delete(lstbxLojas.ItemIndex);
end;

procedure TFrmCadastroPedido.btnSalvarClick(Sender: TObject);
var
  indexOf :integer;
begin
  inherited;
  if (TipoOperacao = toAlterar) or (not validaCampos) then
    Exit;

  if TipoOperacao = toInserir then
  begin
    inserirPedido(TCodDesc(cmbLojaPedido.Items.Objects[cmbLojaPedido.ItemIndex]).codigo);

    for indexOf := 0 to lstbxLojas.Items.Count -1  do
    begin
      inserirPedido(TCodDesc(lstbxLojas.Items.Objects[indexOf]).codigo, True);
    end;
  end;

  limpar;

  btnPesquisarClick(Sender);
end;

procedure TFrmCadastroPedido.calculaValorTotal;
var
  douAux:double;
  intAux:integer;
begin
  if TryStrToFloat(edtValorUnitario.Text, douAux) and
     TryStrToInt(edtQtd.Text, intAux) then
    edtValorTotal.Text := FormatFloat('###,###,##0.00',intAux * douAux);
end;

procedure TFrmCadastroPedido.cmbLojaPedidoSelect(Sender: TObject);
begin
  inherited;
  if lstbxLojas.Items.IndexOf(cmbLojaPedido.Text) > -1 then
    lstbxLojas.Items.Delete(lstbxLojas.Items.IndexOf(cmbLojaPedido.Text));
end;

procedure TFrmCadastroPedido.consultaFornecedor(var AEdtCod, AEdtDes: TEdit);
begin
  try
    if DtmDadosFornecedor = nil then
      DtmDadosFornecedor := TDtmDadosFornecedor.Create(nil);

    FrmSelecaoPadrao := TFrmSelecaoPadrao.Create(nil, DtmDadosFornecedor.cdsPesquisacodigo, DtmDadosFornecedor.cdsPesquisarazao_social);
    //DtmDadosFornecedor := TDtmDadosFornecedor.Create(nil);
    //if FrmSelecaoPadrao.Visible then   FrmSelecaoPadrao.Hide;

    DtmDadosFornecedor.listar;
    FrmSelecaoPadrao.dbgrdConsulta.DataSource := DtmDadosFornecedor.dsPesquisa;
    //FrmSelecaoPadrao.FEdtCod := AEdtCod;
    //FrmSelecaoPadrao.FEdtDes := AEdtDes;
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


procedure TFrmCadastroPedido.dbgrdConsultaDblClick(Sender: TObject);
begin
  inherited;
  if not dsConsulta.DataSet.IsEmpty then
    btnAlterarClick(Sender);

end;

procedure TFrmCadastroPedido.dbgrdProdutoCellClick(Column: TColumn);
begin
  inherited;
  if Column.Index = 0 then
  begin
    cdsProduto.Edit;
    cdsProdutocheck_nao_vai.AsBoolean := not cdsProdutocheck_nao_vai.AsBoolean;
    cdsProduto.Post;
  end;
end;

procedure TFrmCadastroPedido.dbgrdProdutoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: integer;
  R: TRect;
begin
  inherited;
  if Column.Index = 0 then
  begin
    if cdsProdutocheck_nao_vai.AsBoolean then
      Check := DFCS_BUTTONCHECK or DFCS_CHECKED
    else
      Check := DFCS_BUTTONCHECK;

    dbgrdProduto.Canvas.FillRect(Rect);

    R:=Rect;
    InflateRect(R,-2,-2);

    DrawFrameControl(dbgrdProduto.Canvas.Handle, R,DFC_BUTTON, Check);
  end
  else
    dbgrdProduto.DefaultDrawColumnCell(Rect, DataCol,Column, State);
end;

procedure TFrmCadastroPedido.dsProdutoConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if not( dsProdutoConsulta.DataSet.IsEmpty) then
       stbResumoProd.Panels[0].Text := 'Qtd. Registros: ' + FormatFloat('000', dsProdutoConsulta.DataSet.RecordCount)
    else
      stbResumoProd.Panels[0].Text := 'Qtd. Registros: 000';
end;

procedure TFrmCadastroPedido.edtCodForConsultaExit(Sender: TObject);
begin
  inherited;
  if Trim(edtCodForConsulta.Text) = '' then
    edtRazaoSocialConsulta.Clear
  else
  try
   // DtmDadosFornecedor := TDtmDadosFornecedor.Create(nil);
    edtRazaoSocialConsulta.Text := DtmDadosFornecedor.getRazaoSocial(StrToInt(edtCodForConsulta.Text));
    if Trim(edtRazaoSocialConsulta.Text) = '' then
      exibeMensagem('Fornecedor não encontrado!',tmAviso, edtCodForConsulta)
    else
      edtCodForConsulta.Text := FormatFloat('00', StrToInt(edtCodForConsulta.text));

  finally
   // FreeAndNil(DtmDadosFornecedor);
  end;
end;

procedure TFrmCadastroPedido.edtCodFornecedorExit(Sender: TObject);
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

procedure TFrmCadastroPedido.edtDesconto1Exit(Sender: TObject);
var
  dAux:double;
begin
  inherited;
  if Trim(TEdit(Sender).Text)='' then
    TEdit(Sender).Text := '0'
  else
  if not TryStrToFloat(TEdit(Sender).Text, dAux) then
    exibeMensagem('Informe o desconto corretamente!',tmAviso,TEdit(Sender));
end;

procedure TFrmCadastroPedido.edtDesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#27,#8]) then
    Key := #0;
end;

procedure TFrmCadastroPedido.edtQtdExit(Sender: TObject);
begin
  inherited;
  if Trim(edtQtd.Text) = '' then
    edtQtd.Text := '00';
end;

procedure TFrmCadastroPedido.edtQtdKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btnAddClick(Sender);
end;

procedure TFrmCadastroPedido.edtReferenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmCadastroPedido.edtValorUnitarioChange(Sender: TObject);
begin
  inherited;
  calculaValorTotal;
end;

procedure TFrmCadastroPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 // inherited;
  Action := caFree;
  FrmCadastroPedido := nil;
end;

procedure TFrmCadastroPedido.FormCreate(Sender: TObject);
begin
  inherited;
  FValorTotal := 0;
  dtpData.DateTime := DataDB;
  dtpDataPrevFaturamento.DateTime := DataDB;


  DtmDadosPedido := TDtmDadosPedido.Create(nil);
  DtmDadosProduto := TDtmDadosProduto.Create(nil);
  DtmDadosParcela := TDtmDadosParcela.Create(nil);
  DtmDadosFornecedor := TDtmDadosFornecedor.Create(nil);
//  FrmSelecaoPadrao := TFrmSelecaoPadrao.Create(nil);

  cdsProduto.Close;
  cdsProduto.CreateDataSet;

  cdsParcelas.Close;
  cdsParcelas.CreateDataSet;

  TipoOperacao := toInserir;

  dtpPeriodoIni.DateTime := DataDB;
  dtpPeriodoFim.DateTime := DataDB;

  dtpDataPrevFaturamentoDe.DateTime := DataDB;
  dtpDataPrevFaturamentoAte.DateTime := DataDB;

  dtpDataPrevFaturamentoDe.Checked := false;
  dtpDataPrevFaturamentoAte.Checked := false;


  dtpPeriodoIni.Checked := false;
  dtpPeriodoFim.Checked := false;

  carregaCombo('loja', cbbLoja);
end;

procedure TFrmCadastroPedido.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(DtmDadosPedido);
  FreeAndNil(DtmDadosProduto);
  FreeAndNil(DtmDadosParcela);
  FreeAndNil(DtmDadosFornecedor);
//  FreeAndNil(FrmSelecaoPadrao);
end;

procedure TFrmCadastroPedido.FormShow(Sender: TObject);
begin
  inherited;
  //DtmDadosPedido.listar;

  carregaCombo('loja', cmbLojas);
  carregaCombo('loja', cmbLojaPedido);
end;

procedure TFrmCadastroPedido.gerarParcelas(AFilial: boolean);
var
  strAux:String;
  indexAte, indexOf:integer;
  valorTotal, valorParcela:Double;
  strList:TStringList;
begin
  valorTotal := getValorTotal(AFilial);

  cdsParcelas.Close;
  cdsParcelas.CreateDataSet;

  if Trim(edtParcelas.Text) <> '' then
  begin
    strAux := Trim(edtParcelas.Text);
    if Pos('/', edtParcelas.Text) <= 0 then
    begin
      cdsParcelas.Append;
      cdsParcelasdata_vencimento.AsDateTime := dtpDataPrevFaturamento.DateTime + StrToInt(Trim(edtParcelas.Text));
      cdsParcelasvalor_parcela.AsFloat := valorTotal;
      cdsParcelas.Post;
    end
    else
    begin
      strList := TStringList.Create;
      repeat
        indexAte := Pos('/', strAux);
        strList.Add(Copy(strAux, 1, indexAte-1));
        strAux := Copy(strAux, indexAte+1, Length(strAux));

        if Pos('/', strAux) <= 0 then
          strList.Add(strAux);
      until Pos('/', strAux) <= 0 ;
      valorParcela := valorTotal / strList.Count;
      for indexOf := 0 to strList.Count -1 do
      begin
        cdsParcelas.Append;
        cdsParcelasdata_vencimento.AsDateTime := dtpDataPrevFaturamento.DateTime + StrToInt(strList[indexOf]);
        cdsParcelasvalor_parcela.AsFloat := valorParcela;
        cdsParcelas.Post;
      end;
    end;
    edtParcelas.Enabled := False;
  end;
end;

function TFrmCadastroPedido.getValorTotal(AFilial:boolean=false): Double;
var
  realValor:Real;
begin
  cdsProduto.DisableControls;
  cdsProduto.First;
  realValor := 0;
  while not cdsProduto.Eof do
  begin
    if AFilial then
    begin
      if not cdsProdutocheck_nao_vai.AsBoolean then
        realValor := realValor + cdsProdutovalor_total.AsFloat;
    end
    else
      realValor := realValor + cdsProdutovalor_total.AsFloat;
    cdsProduto.Next;
  end;
  cdsProduto.First;
  cdsProduto.EnableControls;

  FValorTotal := realValor;

  FValorTotal := FValorTotal - (StrToFloat(edtDesconto1.Text)*FValorTotal/100);
  FValorTotal := FValorTotal - (StrToFloat(edtDesconto2.Text)*FValorTotal/100);
  Result := FValorTotal;

end;

procedure TFrmCadastroPedido.inserirPedido(ACodLoja: Integer; AFilial:Boolean = false);
var
  vPedido: TPedido;
  vProduto:TProduto;
  vParcela:TParcela;
  intCodPedido:integer;
begin
  vPedido := TPedido.Create;
  try
    //vPedido.codigo := StrToInt(edtCodigo.Text);
    gerarParcelas(AFilial);
    
    vPedido.data   := dtpData.DateTime;
    vPedido.dataPrevFaturamento := dtpDataPrevFaturamento.DateTime;
    vPedido.fornecedor.id := StrToInt(edtCodFornecedor.Text);
    vPedido.loja.codigo := ACodLoja;
    vPedido.parcelas_txt := edtParcelas.Text;
    vPedido.qtd_parcelas := cdsParcelas.RecordCount;
    vPedido.status := 'A';
    vPedido.valor_pedido := getValorTotal(AFilial);
    vPedido.desconto1 := StrToFloat(edtDesconto1.Text);
    vPedido.desconto2 := StrToFloat(edtDesconto2.Text);

    vPedido.nome_representante := edtNomeRepresentante.Text;
    vPedido.fone_representante := edtFoneRepresentante.Text;
    vPedido.email_representante := edtEmailRepresentante.Text;


    vPedido.observacoes := memoObs.Text;

    DtmDadosPedido.salvar(vPedido);

    intCodPedido := DtmDadosPedido.getCodigoAtual;
    cdsProduto.First;
    while not cdsProduto.Eof do
    begin
      if not ( (AFilial) and (cdsProdutocheck_nao_vai.AsBoolean) )then
      begin
        vProduto := TProduto.Create;
        try
          vProduto.descricao := cdsProdutodescricao.AsString;
          vProduto.cod_pedido:= intCodPedido;
          vProduto.referencia:= cdsProdutoreferencia.AsString;
          vProduto.valor_unitario:= cdsProdutovalor_unitario.AsFloat;
          vProduto.valor_pdu:=cdsProdutovalor_pdu.AsFloat;
          vProduto.quantidade:=cdsProdutoquantidade.AsInteger;
          vProduto.valor_total:= cdsProdutovalor_total.AsFloat;
          vProduto.flg_recebido:= 'N';
          vProduto.qtd_recebido:=0;
          DtmDadosProduto.salvar(vProduto);
        finally
          FreeAndNil(vProduto);
        end;
      end;

      cdsProduto.Next;
    end;

    cdsParcelas.First;
    while not cdsParcelas.Eof do
    begin
      vParcela := TParcela.Create;
      try
        vParcela.cod_pedido:=intCodPedido;
        vParcela.data:=cdsParcelasdata_vencimento.AsDateTime;
        vParcela.valor:= cdsParcelasvalor_parcela.AsFloat;
        DtmDadosParcela.salvar(vParcela);
      finally
        FreeAndNil(vParcela);
      end;

      cdsParcelas.Next;
    end;

  finally
    FreeAndNil(vPedido);
  end;
end;

procedure TFrmCadastroPedido.limpar;
begin
  FValorTotal := 0;
  edtCodigo.Clear;
  edtCodFornecedor.Clear;
  edtRazaoSocial.Clear;
  dtpData.DateTime := DataDB;
  dtpDataPrevFaturamento.DateTime := DataDB;
  cdsProduto.Close;
  edtParcelas.Clear;
  cdsParcelas.Close;

  lstbxLojas.Items.Clear;
  lstbxLojas.Visible := True;
  btnAddLoja.Visible := True;
  btnRemoveLoja.Visible := True;
  btnAddTodas.Visible := True;
  cmbLojas.ItemIndex := 0;
  cmbLojas.Enabled := True;
  lblLojas.Visible := True;

  cmbLojaPedido.ItemIndex := 0;
  cmbLojaPedido.Enabled := True;

  cmbLojas.Visible := True;

  edtParcelas.Enabled := True;
  dbgrdParcelas.Visible := True;
  btnLimpar.Visible := True;
  btnCalculaParcelas.Visible := True;

  edtNomeRepresentante.Clear;
  edtFoneRepresentante.Clear;
  edtEmailRepresentante.Clear;

  edtDesconto1.Text := '0';
  edtDesconto2.Text := '0';
  lblValorTotal.Caption := '0,00';
  memoObs.Lines.Clear;

  cdsProduto.Close;
  cdsProduto.CreateDataSet;

  cdsParcelas.Close;
  cdsParcelas.CreateDataSet;

  btnSalvar.Enabled := True;
  grpProduto.Enabled := True;
  grpValores.Enabled := True;

  TipoOperacao := toInserir;
  pgctrlPrincipal.ActivePage := tbsConsulta;
end;

function TFrmCadastroPedido.validaCampos: boolean;
begin
  Result := False;
  if Trim(edtCodFornecedor.Text) = '' then
    exibeMensagem('Informe o FORNECEDOR!',tmAviso)
  else
  if cmbLojaPedido.ItemIndex = 0 then
    exibeMensagem('Informe a LOJA!',tmAviso)
  else
  if cdsProduto.IsEmpty then
    exibeMensagem('Informe ao menos um PRODUTO!',tmAviso)
  else
  if cdsParcelas.IsEmpty then
    exibeMensagem('Informe ao menos uma PARCELA!',tmAviso)
  else
    Result := True;
end;

function TFrmCadastroPedido.validaCamposProduto: boolean;
var
  dAux:Double;
begin
  Result := False;
  if Trim(edtReferencia.Text) = '' then
    exibeMensagem('Informe a REFERÊNCIA!',tmAviso)
  else
  if Trim(edtProduto.Text) = '' then
    exibeMensagem('Informe o PRODUTO!',tmAviso)
  else
  if not TryStrToFloat(edtValorUnitario.Text,dAux) then
    exibeMensagem('Informe corretamente o VALOR UNITÁRIO!',tmAviso)
  else
  if dAux = 0 then
    exibeMensagem('Informe corretamente o VALOR UNITÁRIO!',tmAviso)
  else
  if not TryStrToFloat(edtValorPdu.Text,dAux) then
    exibeMensagem('Informe corretamente o VALOR PDU!',tmAviso)
  else
  if not TryStrToFloat(edtQtd.Text,dAux) then
    exibeMensagem('Informe corretamente a QUANTIDADE!',tmAviso)
  else
  if dAux = 0 then
    exibeMensagem('A QUANTIDADE deverá ser maior que zero!',tmAviso)
  else
    Result := True;
end;

end.
