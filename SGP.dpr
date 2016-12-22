program SGP;

uses
  Vcl.Forms,
  MidasLib,
  U_FrmCadastroEmpresa in 'FRM\U_FrmCadastroEmpresa.pas',
  U_FrmLogin in 'FRM\U_FrmLogin.pas' {FrmLogin},
  U_FrmPadrao in 'FRM\U_FrmPadrao.pas' {FrmPadrao},
  U_FrmPrincipal in 'FRM\U_FrmPrincipal.pas' {FrmPrincipal},
  U_FrmSelecaoPadrao in 'FRM\U_FrmSelecaoPadrao.pas' {FrmSelecaoPadrao},
  U_DtmConexao in 'DTM\U_DtmConexao.pas' {DtmConexao: TDataModule},
  U_DtmDadosEmpresa in 'DTM\U_DtmDadosEmpresa.pas',
  U_DtmDadosUsuario in 'DTM\U_DtmDadosUsuario.pas',
  U_DtmPadrao in 'DTM\U_DtmPadrao.pas' {DtmPadrao: TDataModule},
  U_FrmRelPadrao in 'REL\U_FrmRelPadrao.pas' {FrmRelPadrao},
  U_BibliotecaFuncoes in 'UNIT\U_BibliotecaFuncoes.pas',
  U_TEmpresa in 'CLASSES\U_TEmpresa.pas',
  U_TEndereco in 'CLASSES\U_TEndereco.pas',
  U_TUsuario in 'CLASSES\U_TUsuario.pas',
  U_TCodDesc in 'CLASSES\U_TCodDesc.pas',
  U_FrmCadastroLoja in 'FRM\U_FrmCadastroLoja.pas',
  U_TLoja in 'CLASSES\U_TLoja.pas',
  U_FrmCadastroUsuario in 'FRM\U_FrmCadastroUsuario.pas' {FrmCadastroUsuario},
  U_FrmCadastroPadrao in 'FRM\U_FrmCadastroPadrao.pas' {FrmCadastroPadrao},
  U_DtmDadosLoja in 'DTM\U_DtmDadosLoja.pas' {DtmDadosLoja: TDataModule},
  U_FrmCadastroFornecedor in 'FRM\U_FrmCadastroFornecedor.pas' {FrmCadastroFornecedor},
  U_TFornecedor in 'CLASSES\U_TFornecedor.pas',
  U_DtmDadosFornecedor in 'DTM\U_DtmDadosFornecedor.pas' {DtmDadosFornecedor: TDataModule},
  U_FrmCadastroPedido in 'FRM\U_FrmCadastroPedido.pas' {FrmCadastroPedido},
  U_TPedido in 'CLASSES\U_TPedido.pas',
  U_TProduto in 'CLASSES\U_TProduto.pas',
  U_DtmDadosPedido in 'DTM\U_DtmDadosPedido.pas' {DtmDadosPedido: TDataModule},
  U_DtmDadosProduto in 'DTM\U_DtmDadosProduto.pas' {DtmDadosProduto: TDataModule},
  U_FrmFiltroRelPedido in 'FRM\U_FrmFiltroRelPedido.pas' {FrmFiltroRelPedido},
  U_FrmRelatorioPedido in 'REL\U_FrmRelatorioPedido.pas' {FrmRelatorioPedido},
  U_TParcela in 'CLASSES\U_TParcela.pas',
  U_DtmDadosParcela in 'DTM\U_DtmDadosParcela.pas' {DtmDadosParcela: TDataModule},
  U_FrmDuplicatas in 'FRM\U_FrmDuplicatas.pas' {FrmDuplicatas},
  U_DtmDadosDuplicatas in 'DTM\U_DtmDadosDuplicatas.pas' {DtmDadosDuplicatas: TDataModule},
  U_DtmDadosRelatorioPedido in 'DTM\U_DtmDadosRelatorioPedido.pas' {DtmDadosRelatorioPedido: TDataModule},
  U_TBaixa in 'CLASSES\U_TBaixa.pas',
  U_FrmBaixa in 'FRM\U_FrmBaixa.pas' {FrmBaixa},
  U_DtmDadosBaixa in 'DTM\U_DtmDadosBaixa.pas' {DtmDadosBaixa: TDataModule},
  U_FrmRelDuplicata in 'REL\U_FrmRelDuplicata.pas' {FrmRelDuplicata};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SGP - Sistema de Gestão de Pedido';
  Application.CreateForm(TDtmConexao, DtmConexao);
  Application.Run;
end.
