unit U_TProduto;

interface

type TProduto = class
  private
    Fdescricao: string;
    Fcodigo: integer;
    Fvalor_unitario: double;
    Fflg_recebido: string;
    Fvalor_total: double;
    Fquantidade: integer;
    Freferencia: string;
    Fvalor_pdu: double;
    Fcod_pedido: integer;
    Fqtd_recebido: integer;
    procedure Setcodigo(const Value: integer);
    procedure Setdescricao(const Value: string);
    procedure Setflg_recebido(const Value: string);
    procedure Setquantidade(const Value: integer);
    procedure Setreferencia(const Value: string);
    procedure Setvalor_pdu(const Value: double);
    procedure Setvalor_total(const Value: double);
    procedure Setvalor_unitario(const Value: double);
    procedure Setcod_pedido(const Value: integer);
    procedure Setqtd_recebido(const Value: integer);

  public
    property codigo:integer read Fcodigo write Setcodigo;
    property descricao:string read Fdescricao write Setdescricao;
    property cod_pedido:integer read Fcod_pedido write Setcod_pedido;
    property referencia:string read Freferencia write Setreferencia;
    property valor_unitario: double read Fvalor_unitario write Setvalor_unitario;
    property valor_pdu: double read Fvalor_pdu write Setvalor_pdu;
    property quantidade: integer read Fquantidade write Setquantidade;
    property valor_total: double read Fvalor_total write Setvalor_total;
    property flg_recebido:string read Fflg_recebido write Setflg_recebido;
    property qtd_recebido:integer read Fqtd_recebido write Setqtd_recebido;
end;

type TListaProdutos = array of TProduto;

implementation

{ TProduto }

procedure TProduto.Setcodigo(const Value: integer);
begin
  Fcodigo := Value;
end;

procedure TProduto.Setcod_pedido(const Value: integer);
begin
  Fcod_pedido := Value;
end;

procedure TProduto.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
end;

procedure TProduto.Setflg_recebido(const Value: string);
begin
  Fflg_recebido := Value;
end;


procedure TProduto.Setqtd_recebido(const Value: integer);
begin
  Fqtd_recebido := Value;
end;

procedure TProduto.Setquantidade(const Value: integer);
begin
  Fquantidade := Value;
end;

procedure TProduto.Setreferencia(const Value: string);
begin
  Freferencia := Value;
end;

procedure TProduto.Setvalor_pdu(const Value: double);
begin
  Fvalor_pdu := Value;
end;

procedure TProduto.Setvalor_total(const Value: double);
begin
  Fvalor_total := Value;
end;

procedure TProduto.Setvalor_unitario(const Value: double);
begin
  Fvalor_unitario := Value;
end;

end.
