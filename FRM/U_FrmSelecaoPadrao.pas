unit U_FrmSelecaoPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_FrmPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.DB;

type
  TFrmSelecaoPadrao = class(TFrmPadrao)
    pnlConsulta: TPanel;
    dbgrdConsulta: TDBGrid;
    pnlBotoesAcoes: TPanel;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    pnlTop: TPanel;
    Label1: TLabel;
    edtPesquisa: TEdit;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dbgrdConsultaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
  private
    { Private declarations }
    FCampoCodigo: TField;
    FCampoDescricao: TField;

  public
    { Public declarations }
    constructor Create(AOwner: TComponent; ACampoCodigo, ACampoDescricao: TField);
  end;

var
  FrmSelecaoPadrao: TFrmSelecaoPadrao;

implementation

{$R *.dfm}

procedure TFrmSelecaoPadrao.btnCancelarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TFrmSelecaoPadrao.btnOkClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;



constructor TFrmSelecaoPadrao.Create(AOwner: TComponent; ACampoCodigo, ACampoDescricao: TField);
begin
  inherited Create(AOwner);
  FCampoCodigo := ACampoCodigo;
  FCampoDescricao := ACampoDescricao;
end;

procedure TFrmSelecaoPadrao.dbgrdConsultaDblClick(Sender: TObject);
begin
  inherited;
  btnOkClick(Sender);
end;

procedure TFrmSelecaoPadrao.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  try
    if Trim(edtPesquisa.Text) <> '' then
      dbgrdConsulta.DataSource.DataSet.Locate(FCampoDescricao.FieldName, edtPesquisa.Text, [loPartialKey])
    else
      dbgrdConsulta.DataSource.DataSet.First;
  except

  end;

end;

procedure TFrmSelecaoPadrao.FormShow(Sender: TObject);
begin
  inherited;
  dbgrdConsulta.Columns[0].Field := FCampoCodigo;
  dbgrdConsulta.Columns[1].Field := FCampoDescricao;
end;

end.
