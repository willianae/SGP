unit U_DtmDadosFornecedor;

interface

uses
  System.SysUtils, System.Classes, U_DtmPadrao, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, Data.Win.ADODB,U_TFornecedor;

type
  TDtmDadosFornecedor = class(TDtmPadrao)
    cdsPesquisacpf_cnpj_formatado: TStringField;
    cdsPesquisacodigo: TLargeintField;
    cdsPesquisarazao_social: TStringField;
    cdsPesquisacpf_cnpj: TStringField;
    cdsPesquisainscricao_estadual: TStringField;
    cdsPesquisarua: TStringField;
    cdsPesquisabairro: TStringField;
    cdsPesquisacidade: TStringField;
    cdsPesquisaestado: TStringField;
    cdsPesquisacep: TStringField;
    cdsPesquisafone: TStringField;
    cdsPesquisaemail: TStringField;
    cdsPesquisanumero: TStringField;
    cdsPesquisacomplemento: TStringField;
    cdsPesquisanome_representante: TStringField;
    cdsPesquisaemail_representante: TStringField;
    cdsPesquisafone_representante: TStringField;
    procedure cdsPesquisaCalcFields(DataSet: TDataSet);
    { Private declarations }
  public
    { Public declarations }
    procedure excluir(ICodigo:Integer);
    procedure salvar(Fornecedor:TFornecedor);
    procedure listar;
    function CPFCNPJExiste(sCPFCNPJ: string; iCodigo:integer): Boolean;
    function getRazaoSocial(ACodigo:Integer):string;
  end;

var
  DtmDadosFornecedor: TDtmDadosFornecedor;

const
  // SCRIPTS

  SQL_DELETE_Fornecedor_PARAM_CODIGO =
  ' DELETE FROM Fornecedor WHERE CODIGO = :CODIGO ';

  SQL_SELECT_FornecedorS =
  ' SELECT * FROM Fornecedor ORDER BY razao_social ';


 SQL_UPDATE_Fornecedor =
  ' UPDATE fornecedor                                               '#13+
  '   SET razao_social=:razao_social, cpf_cnpj=:cpf_cnpj,           '#13+
  '       inscricao_estadual=:inscricao_estadual, rua=:rua,         '#13+
  '       bairro=:bairro, cidade=:cidade, estado=:estado, cep=:cep, '#13+
  '       fone=:fone, email=:email, numero=:numero,                 '#13+
  '       complemento=:complemento,                                 '#13+
  '       nome_representante=:nome_representante,                   '#13+
  '       fone_representante=:fone_representante,                   '#13+
  '       email_representante=:email_representante                  '#13+
  ' WHERE CODIGO = :CODIGO                                          ';

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_BibliotecaFuncoes;

{$R *.dfm}

{ TDtmDadosFornecedor }

procedure TDtmDadosFornecedor.cdsPesquisaCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsPesquisacpf_cnpj_formatado.AsString := FormataMascaraCPForCNPJ(cdsPesquisacpf_cnpj.AsString);
end;

procedure TDtmDadosFornecedor.excluir(ICodigo: Integer);
begin
  try
    QryAux.Close;
    QryAux.SQL.Text := SQL_DELETE_Fornecedor_PARAM_CODIGO;
    QryAux.Parameters.ParamByName('CODIGO').Value := ICodigo;
    QryAux.ExecSQL;
  except
    raise;
  end;
end;

function TDtmDadosFornecedor.getRazaoSocial(ACodigo: Integer): string;
begin
  QryAux.Close;
  QryAux.SQL.Text := ' SELECT RAZAO_SOCIAL FROM FORNECEDOR '#13+
                     ' WHERE CODIGO = :CODIGO             ';
  QryAux.Parameters.ParamByName('CODIGO').Value := ACodigo;
  QryAux.Open;
  if QryAux.IsEmpty then
    Result := ''
  else
    Result := QryAux.FieldByName('RAZAO_SOCIAL').AsString;
end;

procedure TDtmDadosFornecedor.listar;
begin
  cdsPesquisa.Close;
  QryPesquisa.SQL.Text := SQL_SELECT_FornecedorS;
  cdsPesquisa.Open;
end;

procedure TDtmDadosFornecedor.salvar(Fornecedor: TFornecedor);
begin
  try
    QryAux.Close;
    if Fornecedor.id > 0 then
    begin
      QryAux.SQL.Text := SQL_UPDATE_Fornecedor;
      QryAux.Parameters.ParamByName('CODIGO').Value := Fornecedor.id;
    end
    else
      QryAux.SQL.Text :=
     ' INSERT INTO fornecedor(                                                '#13+
     '         razao_social, cpf_cnpj, inscricao_estadual, rua, bairro,       '#13+
     '         cidade, estado, cep, fone, email, numero, complemento,         '#13+
     '         nome_representante, fone_representante, email_representante )  '#13+
     ' VALUES (:razao_social, :cpf_cnpj, :inscricao_estadual, :rua, :bairro,  '#13+
     '         :cidade, :estado, :cep, :fone, :email, :numero, :complemento,  '#13+
     '         :nome_representante, :fone_representante, :email_representante)';


    QryAux.Parameters.ParamByName('razao_social').Value     := Fornecedor.razao_social;
    QryAux.Parameters.ParamByName('cpf_cnpj').Value         := Fornecedor.cpf;
    QryAux.Parameters.ParamByName('inscricao_estadual').Value := Fornecedor.inscricao_estadual;
    QryAux.Parameters.ParamByName('rua').Value              := Fornecedor.endereco.rua;
    QryAux.Parameters.ParamByName('numero').Value           := Fornecedor.endereco.numero;
    QryAux.Parameters.ParamByName('complemento').Value      := Fornecedor.endereco.complemento;
    QryAux.Parameters.ParamByName('cidade').Value           := Fornecedor.endereco.cidade;
    QryAux.Parameters.ParamByName('bairro').Value           := Fornecedor.endereco.bairro;
    QryAux.Parameters.ParamByName('estado').Value           := Fornecedor.endereco.uf;
    QryAux.Parameters.ParamByName('cep').Value              := Fornecedor.endereco.cep;
    QryAux.Parameters.ParamByName('fone').Value             := Fornecedor.telefoneFixo;
    QryAux.Parameters.ParamByName('email').Value            := Fornecedor.email;
    QryAux.Parameters.ParamByName('nome_representante').Value   := Fornecedor.nome_representante;
    QryAux.Parameters.ParamByName('fone_representante').Value   := Fornecedor.fone_representante;
    QryAux.Parameters.ParamByName('email_representante').Value   := Fornecedor.email_representante;
    QryAux.ExecSQL;
  except
    raise;
  end;
end;


function TDtmDadosFornecedor.CPFCNPJExiste(sCPFCNPJ: string; iCodigo:integer): Boolean;
begin
   Result := False;
   try
      QryAux.Close;
      QryAux.SQL.Text :=
      ' SELECT CPF_CNPJ FROM Fornecedor WHERE CPF_CNPJ = :CPF_CNPJ AND CODIGO <> :CODIGO ' ;
      QryAux.Parameters.ParamByName('CPF_CNPJ').Value := sCPFCNPJ;
      QryAux.Parameters.ParamByName('CODIGO').Value  := iCodigo;
      QryAux.Open;
      Result := not QryAux.IsEmpty;
   except
      raise;
   end;
end;

end.
