unit U_TPedido;

interface

uses U_TFornecedor, U_TLoja;

type TPedido = class
  private
    Fcodigo: integer;
    Fvalor_pedido: double;
    Fqtd_parcelas: integer;
    Fstatus: string;
    Floja: TLoja;
    Ffornecedor: TFornecedor;
    Fparcelas_txt: string;
    Fdata: TDateTime;
    FdataPrevFaturamento: TDateTime;
    Fdesconto2: double;
    Fdesconto1: double;
    Fobservacoes: string;
    Fnome_representante: String;
    Ffone_representante: String;
    Femail_representante: String;
    procedure Setcodigo(const Value: integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setfornecedor(const Value: TFornecedor);
    procedure Setloja(const Value: TLoja);
    procedure Setparcelas_txt(const Value: string);
    procedure Setqtd_parcelas(const Value: integer);
    procedure Setstatus(const Value: string);
    procedure Setvalor_pedido(const Value: double);
    procedure SetdataPrevFaturamento(const Value: TDateTime);
    procedure Setdesconto1(const Value: double);
    procedure Setdesconto2(const Value: double);
    procedure Setobservacoes(const Value: string);
    procedure Setemail_representante(const Value: String);
    procedure Setfone_representante(const Value: String);
    procedure Setnome_representante(const Value: String);


  public
    property codigo:integer read Fcodigo write Setcodigo;
    property fornecedor: TFornecedor read Ffornecedor write Setfornecedor;
    property loja:TLoja read Floja write Setloja;
    property data: TDateTime read Fdata write Setdata;
    property status:string read Fstatus write Setstatus;
    property qtd_parcelas:integer read Fqtd_parcelas write Setqtd_parcelas;
    property parcelas_txt:string read Fparcelas_txt write Setparcelas_txt;
    property valor_pedido :double read Fvalor_pedido write Setvalor_pedido;
    property dataPrevFaturamento: TDateTime read FdataPrevFaturamento write SetdataPrevFaturamento;
    property desconto1:double read Fdesconto1 write Setdesconto1;
    property desconto2:double read Fdesconto2 write Setdesconto2;
    property observacoes:string read Fobservacoes write Setobservacoes;
    property nome_representante:String read Fnome_representante write Setnome_representante;
    property email_representante:String read Femail_representante write Setemail_representante;
    property fone_representante:String read Ffone_representante write Setfone_representante;



    constructor Create;
    destructor Destroy; override;
end;

implementation

{ TPedido }

constructor TPedido.Create;
begin
  fornecedor  := TFornecedor.Create;
  loja        := TLoja.Create;
end;

destructor TPedido.Destroy;
begin
  fornecedor.Free;
  fornecedor := nil;

  loja.Free;
  loja := nil;
end;

procedure TPedido.Setcodigo(const Value: integer);
begin
  Fcodigo := Value;
end;

procedure TPedido.Setdata(const Value: TDateTime);
begin
  Fdata := Value;
end;

procedure TPedido.SetdataPrevFaturamento(const Value: TDateTime);
begin
  FdataPrevFaturamento := Value;
end;

procedure TPedido.Setdesconto1(const Value: double);
begin
  Fdesconto1 := Value;
end;

procedure TPedido.Setdesconto2(const Value: double);
begin
  Fdesconto2 := Value;
end;

procedure TPedido.Setemail_representante(const Value: String);
begin
  Femail_representante := Value;
end;

procedure TPedido.Setfone_representante(const Value: String);
begin
  Ffone_representante := Value;
end;

procedure TPedido.Setfornecedor(const Value: TFornecedor);
begin
  Ffornecedor := Value;
end;

procedure TPedido.Setloja(const Value: TLoja);
begin
  Floja := Value;
end;

procedure TPedido.Setnome_representante(const Value: String);
begin
  Fnome_representante := Value;
end;

procedure TPedido.Setobservacoes(const Value: string);
begin
  Fobservacoes := Value;
end;

procedure TPedido.Setparcelas_txt(const Value: string);
begin
  Fparcelas_txt := Value;
end;

procedure TPedido.Setqtd_parcelas(const Value: integer);
begin
  Fqtd_parcelas := Value;
end;

procedure TPedido.Setstatus(const Value: string);
begin
  Fstatus := Value;
end;

procedure TPedido.Setvalor_pedido(const Value: double);
begin
  Fvalor_pedido := Value;
end;

end.
