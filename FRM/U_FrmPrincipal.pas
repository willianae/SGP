unit U_FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_BibliotecaFuncoes, Vcl.Menus,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ImgList, U_DtmConexao, U_TUsuario,
  Vcl.Imaging.jpeg, U_FrmCadastroUsuario, U_FrmCadastroLoja, U_FrmCadastroFornecedor, U_FrmCadastroPedido,
  U_FrmDuplicatas, U_FrmBaixa, System.ImageList;

type
  TFrmPrincipal = class(TForm)
    mnuPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Relatrios1: TMenuItem;
    Sobre1: TMenuItem;
    N1: TMenuItem;
    stbResumo: TStatusBar;
    Servicos1: TMenuItem;
    ImageListPrincipal: TImageList;
    ToolBarPrincipal: TToolBar;
    btnFornecedor: TToolButton;
    ToolButton2: TToolButton;
    btnPedidos: TToolButton;
    timerPrincipal: TTimer;
    Acesso1: TMenuItem;
    Logoff1: TMenuItem;
    Sair1: TMenuItem;
    ToolButton3: TToolButton;
    CadastroUsuario1: TMenuItem;
    Loja1: TMenuItem;
    Fornecedor1: TMenuItem;
    Pedido1: TMenuItem;
    Baixa1: TMenuItem;
    imgPrincipal: TImage;
    Pedidos1: TMenuItem;
    RelDuplicatas1: TMenuItem;
    Duplicatas1: TMenuItem;
    btnBaixa: TToolButton;
    ToolButton4: TToolButton;
    Configuraes1: TMenuItem;
    Empresa1: TMenuItem;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Sair1Click(Sender: TObject);
    procedure Logoff1Click(Sender: TObject);
    procedure timerPrincipalTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure CadastroUsuario1Click(Sender: TObject);
    procedure Loja1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure RelDuplicatas1Click(Sender: TObject);
    procedure Duplicatas1Click(Sender: TObject);
    procedure Baixa1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure logar;
    function GetVersion: String;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  U_FrmLogin,U_FrmCadastroPadrao, U_FrmFiltroRelPedido, U_FrmCadastroEmpresa;

{$R *.dfm}

procedure TFrmPrincipal.Baixa1Click(Sender: TObject);
begin
  if FrmBaixa = nil then
    FrmBaixa := TFrmBaixa.Create(application)
  else
    FrmBaixa.Show;
end;

procedure TFrmPrincipal.CadastroUsuario1Click(Sender: TObject);
begin
  try
    FrmCadastroUsuario := TFrmCadastroUsuario.Create(nil);
    FrmCadastroUsuario.ShowModal;
  finally
    FreeAndnil(FrmCadastroUsuario);
  end;
end;

procedure TFrmPrincipal.RelDuplicatas1Click(Sender: TObject);
begin
//
end;

procedure TFrmPrincipal.Duplicatas1Click(Sender: TObject);
begin
  if FrmDuplicatas = nil then
    FrmDuplicatas := TFrmDuplicatas.Create(application)
  else
    FrmDuplicatas.Show;
end;

procedure TFrmPrincipal.Empresa1Click(Sender: TObject);
begin
  if FrmcadastroEmpresa = nil then
    FrmcadastroEmpresa := TFrmcadastroEmpresa.Create(application)
  else
    FrmcadastroEmpresa.Show;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := exibeMensagem('Deseja sair do sistema?',tmPergunta) = mrYes;
  if CanClose then
    Application.Terminate;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
var
  indexOf:integer;

begin
  if not DtmConexao.AdoConn.Connected then
  begin
    for indexOf := 0 to mnuPrincipal.Items.Count -1 do
    begin
      mnuPrincipal.Items[indexOf].Enabled := False;
    end;

    for indexOf := 0 to ToolBarPrincipal.ButtonCount -1 do
    begin
      ToolBarPrincipal.Buttons[indexOf].Enabled := False;
    end;
  end;

  {

  FrmBaixa := TFrmBaixa.Create(Self);


  FrmDuplicatas := TFrmDuplicatas.Create(Self);


  FrmCadastroFornecedor := TFrmCadastroFornecedor.Create(Self);


  FrmCadastroLoja := TFrmCadastroLoja.Create(Self);


  FrmCadastroPedido := TFrmCadastroPedido.Create(Self);


  //FrmFiltroRelPedido := TFrmFiltroRelPedido.Create(Self);


  FrmcadastroEmpresa := TfrmcadastroEmpresa.Create(Self);

  }

end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
begin
  logar;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  FrmPrincipal.Caption := FrmPrincipal.Caption + ' [ ' + VersaoExe + ' ] ';
end;

procedure TFrmPrincipal.Fornecedor1Click(Sender: TObject);
begin
  if FrmCadastroFornecedor = nil then
    FrmCadastroFornecedor := TFrmCadastroFornecedor.Create(application)
  else
    FrmCadastroFornecedor.Show;
end;

function TFrmPrincipal.GetVersion: String;
var
  nInfoSize, nDummy: longword; nVerLen: UINT;
  fnameptr: pchar;
  aData: array[1..2000] of char;
  i:integer;
  pInfo: pchar;
  cVerInfResult:string;
begin
  fnameptr := pchar( Application.ExeName );
  nInfoSize := GetFileVersionInfoSize(fnameptr,nDummy) ;
  GetFileVersionInfo(fnameptr, nDummy, nInfoSize, @aData);
  VerQueryValue(@aData,Pchar('\StringFileInfo\040904 E4\FileVersion'),pointer(pInfo), nVerLen);
  cVerInfResult:='';

  for i:=0 to nVerLen-2 do
    cVerInfResult:=cVerInfResult+char((pInfo+i)^);

  GetVersion := cVerInfResult;
end;


procedure TFrmPrincipal.logar;
begin
  if (DtmConexao.UsuarioLogado.nome = '') and (FrmLogin = nil) then
  try
    FrmLogin := TFrmLogin.Create(nil);
    FrmLogin.ShowModal;
    if FrmLogin.ModalResult = mrOk then
    begin
      stbResumo.Panels[0].Text := 'Usuário: ' + DtmConexao.UsuarioLogado.nome;
      CadastroUsuario1.Visible := DtmConexao.UsuarioLogado.nivel > 0;
    end
    else
      Application.Terminate;
  finally
    FreeAndnil(FrmLogin);
  end;
end;

procedure TFrmPrincipal.Logoff1Click(Sender: TObject);
begin
  FreeAndnil(DtmConexao.UsuarioLogado);
  DtmConexao.UsuarioLogado := TUsuario.Create;
  stbResumo.Panels[0].Text := '';
  logar;
end;

procedure TFrmPrincipal.Loja1Click(Sender: TObject);
begin
  if FrmCadastroLoja = nil then
    FrmCadastroLoja := TFrmCadastroLoja.Create(application)
  else
    FrmCadastroLoja.Show;
end;

procedure TFrmPrincipal.Pedido1Click(Sender: TObject);
begin
  if FrmCadastroPedido = nil then
    FrmCadastroPedido := TFrmCadastroPedido.Create(application)
  else
    FrmCadastroPedido.Show;
end;

procedure TFrmPrincipal.Pedidos1Click(Sender: TObject);
begin
   try
     FrmFiltroRelPedido := TFrmFiltroRelPedido.Create(nil);
     FrmFiltroRelPedido.ShowModal;
   finally
     FreeAndnil(FrmFiltroRelPedido);
   end;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.timerPrincipalTimer(Sender: TObject);
begin
  stbResumo.Panels[1].Text := FormatDateTime('hh:mm:ss',Now);
end;

end.
