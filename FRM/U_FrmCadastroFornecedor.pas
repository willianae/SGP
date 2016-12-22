unit U_FrmCadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmCadastroPadrao, Data.DB,U_BibliotecaFuncoes,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,U_TFornecedor,
  Vcl.Mask, U_DtmDadosFornecedor;

type
  TFrmCadastroFornecedor = class(TFrmCadastroPadrao)
    edtCodigo: TEdit;
    edtRazaoSocial: TEdit;
    Label1: TLabel;
    lbl1: TLabel;
    lblCPFCNPJ: TLabel;
    lbl3: TLabel;
    edtInscricaoEstadual: TEdit;
    lbl4: TLabel;
    lbl6: TLabel;
    edtLogradouro: TEdit;
    lbl7: TLabel;
    edtCidade: TEdit;
    lbl8: TLabel;
    edtBairro: TEdit;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    medtTelefoneFixo: TMaskEdit;
    lbl13: TLabel;
    edtEmail: TEdit;
    lbl14: TLabel;
    edtNumero: TEdit;
    rgTipoFornecedor: TRadioGroup;
    medtCPFCNPJ: TMaskEdit;
    medtCEP: TMaskEdit;
    cbbUF: TComboBox;
    Label2: TLabel;
    edtComplemento: TEdit;
    grpRepresentante: TGroupBox;
    Label3: TLabel;
    edtEmailRepresentante: TEdit;
    Label4: TLabel;
    edtFoneRepresentante: TMaskEdit;
    Label5: TLabel;
    edtNomeRepresentante: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure dbgrdConsultaTitleClick(Column: TColumn);
    procedure dbgrdConsultaDblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure rgTipoFornecedorClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TipoOperacao: TTipoOperacao;
    procedure limpar;
    function validaCampos: boolean;
    procedure configuraTamanhoCampo;
    procedure setTipoFornecedor();
    procedure Listar;
    procedure ConfiguraColunaPesquisa;
  public
    { Public declarations }
    procedure SetTipoOperacao(oTipoOperacao:TTipoOperacao);
  end;

var
  FrmCadastroFornecedor: TFrmCadastroFornecedor;

implementation

{$R *.dfm}

uses U_TEndereco;

{ TFrmCadastroFornecedor }

procedure TFrmCadastroFornecedor.btnAlterarClick(Sender: TObject);
begin
  inherited;
  if not dsConsulta.DataSet.IsEmpty then
  begin
    edtCodigo.Text           := FormatFloat('000', DtmDadosFornecedor.cdsPesquisacodigo.AsInteger);
    edtRazaoSocial.Text      := DtmDadosFornecedor.cdsPesquisarazao_social.AsString;

    if ( Length(Trim(DtmDadosFornecedor.cdsPesquisacpf_cnpj.AsString)) = 11) then
      rgTipoFornecedor.ItemIndex := 0
    else
    if ( Length(trim(DtmDadosFornecedor.cdsPesquisacpf_cnpj.AsString)) = 14) then
      rgTipoFornecedor.ItemIndex := 1;
    setTipoFornecedor;

    medtCpfCnpj.Text          := DtmDadosFornecedor.cdsPesquisaCPF_CNPJ.AsString;
    edtInscricaoEstadual.Text := DtmDadosFornecedor.cdsPesquisainscricao_estadual.AsString;
    edtLogradouro.Text        := DtmDadosFornecedor.cdsPesquisarua.AsString;
    edtNumero.Text            := DtmDadosFornecedor.cdsPesquisaNUMERO.AsString;
    edtComplemento.Text       := DtmDadosFornecedor.cdsPesquisacomplemento.AsString;
    edtCidade.Text            := DtmDadosFornecedor.cdsPesquisaCIDADE.AsString;
    edtBairro.Text            := DtmDadosFornecedor.cdsPesquisaBAIRRO.AsString;

    cbbUF.ItemIndex           := cbbUF.Items.IndexOf(DtmDadosFornecedor.cdsPesquisaestado.Text);

    medtCEP.Text              := DtmDadosFornecedor.cdsPesquisaCEP.AsString;
    medtTelefoneFixo.Text     := DtmDadosFornecedor.cdsPesquisafone.AsString;
    edtEmail.Text             := DtmDadosFornecedor.cdsPesquisaemail.AsString;

    edtNomeRepresentante.Text := DtmDadosFornecedor.cdsPesquisanome_representante.AsString;
    edtFoneRepresentante.Text := DtmDadosFornecedor.cdsPesquisafone_representante.AsString;
    edtEmailRepresentante.Text := DtmDadosFornecedor.cdsPesquisaemail_representante.AsString;


    TipoOperacao := toAlterar;
    pgctrlPrincipal.ActivePage := tbsCadastro;
  end;
end;

procedure TFrmCadastroFornecedor.btnCancelarClick(Sender: TObject);
begin
  inherited;
  limpar();
end;

procedure TFrmCadastroFornecedor.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if (not dsConsulta.DataSet.IsEmpty) and (exibeMensagem('Deseja excluir o registro?',tmPergunta) = mrYes) then
  begin
    DtmDadosFornecedor.excluir(DtmDadosFornecedor.cdsPesquisaCODIGO.AsInteger);
    Listar();
    limpar;
  end;
end;

procedure TFrmCadastroFornecedor.btnSalvarClick(Sender: TObject);
var
  Fornecedor: TFornecedor;
  intAux:integer;
begin
  inherited;
  if not validaCampos then
    Exit;

  Fornecedor := TFornecedor.Create;
  try
    if TipoOperacao = toAlterar then
      Fornecedor.id := StrToInt(edtCodigo.Text);

    Fornecedor.razao_social       := Trim(edtRazaoSocial.Text);
    Fornecedor.cpf                := Trim(medtCPFCNPJ.Text);
    Fornecedor.inscricao_estadual := Trim(edtInscricaoEstadual.Text);

    Fornecedor.endereco           := TEndereco.Create;

    Fornecedor.endereco.rua       := Trim(edtLogradouro.Text);
    Fornecedor.endereco.numero    := Trim(edtNumero.Text);
    Fornecedor.endereco.complemento := Trim(edtComplemento.Text);
    Fornecedor.endereco.cidade    := Trim(edtCidade.Text);
    Fornecedor.endereco.bairro    := Trim(edtBairro.Text);
    Fornecedor.endereco.cep       := Trim(medtCEP.Text);
    if ( cbbUF.ItemIndex > 0) then
      Fornecedor.endereco.uf        := cbbUF.Text;
    Fornecedor.telefoneFixo       := Trim(medtTelefoneFixo.Text);
    Fornecedor.email              := Trim(edtEmail.Text);

    Fornecedor.nome_representante := edtNomeRepresentante.Text;
    Fornecedor.fone_representante := edtFoneRepresentante.Text;
    Fornecedor.email_representante := edtEmailRepresentante.Text;

    DtmDadosFornecedor.salvar(Fornecedor);
    DtmDadosFornecedor.listar;

    limpar;
  finally
    FreeAndNil(Fornecedor);
  end;

end;

procedure TFrmCadastroFornecedor.ConfiguraColunaPesquisa;
begin

end;

procedure TFrmCadastroFornecedor.configuraTamanhoCampo;
begin
    edtRazaoSocial.MaxLength       := DtmDadosFornecedor.cdsPesquisarazao_social.Size;
    medtCpfCnpj.MaxLength          := DtmDadosFornecedor.cdsPesquisaCPF_CNPJ.Size;
    edtInscricaoEstadual.MaxLength := DtmDadosFornecedor.cdsPesquisainscricao_estadual.Size;
    edtLogradouro.MaxLength        := DtmDadosFornecedor.cdsPesquisarua.Size;
    edtNumero.MaxLength            := DtmDadosFornecedor.cdsPesquisaNUMERO.Size;
    edtComplemento.MaxLength       := DtmDadosFornecedor.cdsPesquisacomplemento.Size;

    edtCidade.MaxLength            := DtmDadosFornecedor.cdsPesquisaCIDADE.Size;
    edtBairro.MaxLength            := DtmDadosFornecedor.cdsPesquisaBAIRRO.Size;
    medtCEP.MaxLength              := DtmDadosFornecedor.cdsPesquisaCEP.Size;
    medtTelefoneFixo.MaxLength     := DtmDadosFornecedor.cdsPesquisafone.Size;
    edtEmail.MaxLength             := DtmDadosFornecedor.cdsPesquisaemail.Size;

    edtNomeRepresentante.MaxLength  := DtmDadosFornecedor.cdsPesquisanome_representante.Size;
    edtFoneRepresentante.MaxLength  := DtmDadosFornecedor.cdsPesquisafone_representante.Size;
    edtEmailRepresentante.MaxLength := DtmDadosFornecedor.cdsPesquisaemail_representante.Size;
end;

procedure TFrmCadastroFornecedor.dbgrdConsultaDblClick(Sender: TObject);
begin
  inherited;
  if( TipoOperacao <> toConsultar) then
     btnAlterarClick(Sender)
  else
  begin
    ModalResult :=  mrOk;
  end;
end;

procedure TFrmCadastroFornecedor.dbgrdConsultaTitleClick(Column: TColumn);
begin
  inherited;
  if ( Column.Index = 1 )  then
     DtmDadosFornecedor.cdsPesquisa.IndexFieldNames :='CPF_CNPJ'
  else
     DtmDadosFornecedor.cdsPesquisa.IndexFieldNames := Column.FieldName;
  DtmDadosFornecedor.cdsPesquisa.First;

  edtPesquisa.NumbersOnly := Column.Field.DataType <> ftString;


  lblPesquisa.Caption := Column.Title.Caption+':';
end;

procedure TFrmCadastroFornecedor.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if Trim(edtPesquisa.Text) <> '' then
    DtmDadosFornecedor.cdsPesquisa.Locate(DtmDadosFornecedor.cdsPesquisa.IndexFieldNames, edtPesquisa.Text, [loPartialKey])
  else
    DtmDadosFornecedor.cdsPesquisa.First;
end;

procedure TFrmCadastroFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //inherited;
  if TipoOperacao <> toCadastroRapido then
  begin
    Action := caFree;
    FrmCadastroFornecedor := nil;
  end;
end;

procedure TFrmCadastroFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  DtmDadosFornecedor := TDtmDadosFornecedor.Create(nil);
  Listar;
  dsConsulta.DataSet := DtmDadosFornecedor.cdsPesquisa;
  DtmDadosFornecedor.cdsPesquisa.IndexFieldNames := 'RAZAO_SOCIAL';
  lblPesquisa.Caption := 'Razão Social:';

  TipoOperacao := toInserir;
  configuraTamanhoCampo;
end;

procedure TFrmCadastroFornecedor.FormDestroy(Sender: TObject);
begin
  inherited;
   FreeAndNil(DtmDadosFornecedor);
end;

procedure TFrmCadastroFornecedor.limpar;
begin
   edtCodigo.Clear;
   edtRazaoSocial.Clear;
   medtCPFCNPJ.Clear;
   edtInscricaoEstadual.Clear;
   edtLogradouro.Clear;
   edtNumero.Clear;
   edtComplemento.Clear;
   edtCidade.Clear;
   edtBairro.Clear;
   cbbUF.ItemIndex := 0;
   medtCEP.Clear;
   medtTelefoneFixo.Clear;
   edtEmail.Clear;

   edtNomeRepresentante.Clear;
   edtFoneRepresentante.Clear;
   edtEmailRepresentante.Clear;

   rgTipoFornecedor.ItemIndex := 0;
   setTipoFornecedor;
   TipoOperacao := toInserir;
   pgctrlPrincipal.ActivePage := tbsConsulta;
end;

procedure TFrmCadastroFornecedor.Listar;
begin
  DtmDadosFornecedor.listar;
//  stbResumo.Panels[0].Text := 'Qtd. Registros: ' + FormatFloat('000', DtmDadosFornecedor.cdsPesquisa.RecordCount);
end;

procedure TFrmCadastroFornecedor.rgTipoFornecedorClick(Sender: TObject);
begin
  inherited;
  setTipoFornecedor();
end;

procedure TFrmCadastroFornecedor.setTipoFornecedor;
begin
  medtCPFCNPJ.Clear;
  {if( rgTipoFornecedor.ItemIndex = 0 ) then
  begin
    lblCPFCNPJ.Caption := 'CPF:';
    medtCPFCNPJ.MaxLength := 11;
    medtCPFCNPJ.EditMask := '999\.999\.999\-99;0;_';
  end
  else
  begin
  }
    lblCPFCNPJ.Caption := 'CNPJ:';
    medtCPFCNPJ.MaxLength := 14;
    medtCPFCNPJ.EditMask := '99\.999\.999\/9999\-99;0;_';
  //end;
end;

procedure TFrmCadastroFornecedor.SetTipoOperacao(oTipoOperacao: TTipoOperacao);
begin
   TipoOperacao := oTipoOperacao;
end;

function TFrmCadastroFornecedor.validaCampos: boolean;
begin
  Result := False;
  if Trim(edtRazaoSocial.Text) = '' then
    exibeMensagem('Informe a Razão Social!',tmAviso)
  {else
  if Trim(medtCpfCnpj.Text) = '' then
    exibeMensagem('Informe o' + lblCPFCNPJ.Caption+'!',tmAviso)
  else
  if not( validaCPFCNPJ(medtCPFCNPJ.Text)) then
    exibeMensagem(lblCPFCNPJ.Caption + ' Inválido!',tmAviso)
  else
  if DtmDadosFornecedor.CPFCNPJExiste(Trim(medtCPFCNPJ.Text),StrToIntDef(edtCodigo.Text,0)) then
    exibeMensagem(lblCPFCNPJ.Caption + ' já cadastrado!',tmAviso)
  }
  else
    Result := True;
end;

end.
