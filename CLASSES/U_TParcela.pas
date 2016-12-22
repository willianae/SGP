unit U_TParcela;

interface

type TParcela = class
  private
    Fcodigo: integer;
    Fvalor: Double;
    Fcod_pedido: integer;
    Fdata: TDateTime;
    procedure Setcodigo(const Value: integer);
    procedure Setcod_pedido(const Value: integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setvalor(const Value: Double);
  public
    property codigo:integer read Fcodigo write Setcodigo;
    property cod_pedido:integer read Fcod_pedido write Setcod_pedido;
    property data:TDateTime read Fdata write Setdata;
    property valor:Double read Fvalor write Setvalor;
end;

implementation

{ TParcela }

procedure TParcela.Setcodigo(const Value: integer);
begin
  Fcodigo := Value;
end;


procedure TParcela.Setcod_pedido(const Value: integer);
begin
  Fcod_pedido := Value;
end;

procedure TParcela.Setdata(const Value: TDateTime);
begin
  Fdata := Value;
end;

procedure TParcela.Setvalor(const Value: Double);
begin
  Fvalor := Value;
end;

end.
