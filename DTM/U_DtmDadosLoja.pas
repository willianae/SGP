unit U_DtmDadosLoja;

interface

uses
  System.SysUtils, System.Classes, U_DtmPadrao, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Data.Win.ADODB, U_TLoja;

type
  TDtmDadosLoja = class(TDtmPadrao)
    cdsPesquisacodigo: TLargeintField;
    cdsPesquisadescricao: TStringField;
    cdsPesquisaflg_principal: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure excluir(ACodigo:Integer);
    procedure salvar(ALoja: TLoja);
    procedure listar;


  end;

var
  DtmDadosLoja: TDtmDadosLoja;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDtmDadosLoja }


{ TDtmDadosLoja }

procedure TDtmDadosLoja.DataModuleCreate(Sender: TObject);
begin
  inherited;
  listar;
end;

procedure TDtmDadosLoja.excluir(ACodigo: Integer);
begin
  try
    QryAux.Close;
    QryAux.SQL.Text := ' DELETE FROM Loja WHERE CODIGO = :CODIGO ';
    QryAux.Parameters.ParamByName('CODIGO').Value := ACodigo;
    QryAux.ExecSQL;
  except
    raise;
  end;
end;

procedure TDtmDadosLoja.listar;
begin
  cdsPesquisa.Close;
  QryPesquisa.SQL.Text := ' SELECT * FROM Loja ORDER BY CODIGO ';
  cdsPesquisa.Open;
end;

procedure TDtmDadosLoja.salvar(ALoja: TLoja);
begin
  try

    if ALoja.flg_principal then
    begin
      QryAux.Close;
      QryAux.SQL.Text := ' UPDATE LOJA SET FLG_PRINCIPAL = ''N'' ';
      QryAux.ExecSQL;
    end;



    QryAux.Close;
    if ALoja.codigo > 0 then
    begin
      QryAux.SQL.Text := ' UPDATE Loja            '#13+
                         ' SET DESCRICAO = :DESC, '#13+
                         ' FLG_PRINCIPAL = :FLG   '#13+
                         ' WHERE CODIGO = :COD    ';
      QryAux.Parameters.ParamByName('COD').Value := ALoja.codigo;
    end
    else
      QryAux.SQL.Text := ' INSERT INTO LOJA(DESCRICAO, FLG_PRINCIPAL) '#13+
                         ' VALUES(:DESC, :FLG)                        ';

    QryAux.Parameters.ParamByName('DESC').Value := ALoja.descricao;
    if ALoja.flg_principal then
      QryAux.Parameters.ParamByName('FLG').Value := 'S'
    else
      QryAux.Parameters.ParamByName('FLG').Value := 'N';
    QryAux.ExecSQL;
  except
    raise;
  end;
end;

end.
