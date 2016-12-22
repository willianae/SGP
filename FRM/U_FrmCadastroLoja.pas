unit U_FrmCadastroLoja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmCadastroPadrao, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  U_DtmDadosLoja, U_BibliotecaFuncoes, U_TLoja;

type
  TFrmCadastroLoja = class(TFrmCadastroPadrao)
    Label2: TLabel;
    edtCodigo: TEdit;
    Label3: TLabel;
    edtDescricao: TEdit;
    chkPrincipal: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dbgrdConsultaTitleClick(Column: TColumn);
    procedure edtPesquisaChange(Sender: TObject);
    procedure tbsCadastroShow(Sender: TObject);
    procedure dbgrdConsultaDblClick(Sender: TObject);
    procedure edtDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TipoOperacao: TTipoOperacao;
    procedure limpar;
    function validaCampos: boolean;
  public
    { Public declarations }
  end;

var
  FrmCadastroLoja: TFrmCadastroLoja;

implementation

{$R *.dfm}

procedure TFrmCadastroLoja.btnAlterarClick(Sender: TObject);
begin
  inherited;
  if not dsConsulta.DataSet.IsEmpty then
  begin
    edtCodigo.Text := FormatFloat('00', DtmDadosLoja.cdsPesquisacodigo.AsInteger);
    edtDescricao.Text := DtmDadosLoja.cdsPesquisadescricao.AsString;
    chkPrincipal.Checked := DtmDadosLoja.cdsPesquisaflg_principal.AsString  = 'S';
    TipoOperacao := toAlterar;
    pgctrlPrincipal.ActivePage := tbsCadastro;
  end;
end;

procedure TFrmCadastroLoja.btnCancelarClick(Sender: TObject);
begin
  inherited;
  limpar;
end;

procedure TFrmCadastroLoja.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if (not dsConsulta.DataSet.IsEmpty) and (exibeMensagem('Deseja excluir o registro?',tmPergunta) = mrYes) then
  begin
    DtmDadosLoja.excluir(DtmDadosLoja.cdsPesquisacodigo.AsInteger);
    DtmDadosLoja.listar;
  end;
end;

procedure TFrmCadastroLoja.btnSalvarClick(Sender: TObject);
var
  vLoja: TLoja;
begin
  inherited;
  if not validaCampos then
    Exit;

  vLoja := TLoja.Create;
  try
    if TipoOperacao = toAlterar then
      vLoja.codigo := StrToInt(edtCodigo.Text);
    vLoja.descricao := edtDescricao.Text;
    vLoja.flg_principal := chkPrincipal.Checked;
    DtmDadosLoja.salvar(vLoja);
    DtmDadosLoja.listar;

    limpar;
  finally
    FreeAndNil(vLoja);
  end;

end;

procedure TFrmCadastroLoja.dbgrdConsultaDblClick(Sender: TObject);
begin
  inherited;
  btnAlterarClick(Sender);
end;

procedure TFrmCadastroLoja.dbgrdConsultaTitleClick(Column: TColumn);
begin
  inherited;
  DtmDadosLoja.cdsPesquisa.IndexFieldNames := Column.FieldName;
  DtmDadosLoja.cdsPesquisa.First;

  edtPesquisa.NumbersOnly := Column.Field.DataType <> ftString;
  edtPesquisa.Clear;

  lblPesquisa.Caption := Column.Title.Caption;
end;

procedure TFrmCadastroLoja.edtDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmCadastroLoja.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if Trim(edtPesquisa.Text) <> '' then
    DtmDadosLoja.cdsPesquisa.Locate(DtmDadosLoja.cdsPesquisa.IndexFieldNames, edtPesquisa.Text, [loPartialKey])
  else
    DtmDadosLoja.cdsPesquisa.First;
end;

procedure TFrmCadastroLoja.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if DtmDadosLoja.cdsPesquisa.IndexFieldNames = 'CODIGO' then
    KeyPressCampoValor(Key);
end;

procedure TFrmCadastroLoja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // inherited;
  Action := caFree;
  FrmCadastroLoja := nil;
end;

procedure TFrmCadastroLoja.FormCreate(Sender: TObject);
begin
  inherited;
  DtmDadosLoja := TDtmDadosLoja.Create(nil);
  TipoOperacao := toInserir;
end;

procedure TFrmCadastroLoja.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(DtmDadosLoja);
end;

procedure TFrmCadastroLoja.limpar;
begin
  edtCodigo.Clear;
  edtDescricao.Clear;
  chkPrincipal.Checked := False;
  TipoOperacao := toInserir;
  pgctrlPrincipal.ActivePage := tbsConsulta;
end;

procedure TFrmCadastroLoja.tbsCadastroShow(Sender: TObject);
begin
  inherited;
  edtDescricao.SetFocus;
end;

function TFrmCadastroLoja.validaCampos: boolean;
begin
  Result := False;
  if Trim(edtDescricao.Text) = '' then
    exibeMensagem('Informe a descrição!',tmAviso)
  else
    Result := True;
end;

end.
