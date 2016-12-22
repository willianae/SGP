unit U_TBaixa;

interface

uses
  U_TProduto;

type TBaixa = class

  private
    Fdata_baixa: TDateTime;
    Fcodigo: Integer;
    Fcod_pedido: integer;
    Ftipo: string;
    Fnota_fiscal: string;
    Flista_produtos: TListaProdutos;
    Fdata_emissao_nf: TDateTime;
    procedure Setcod_pedido(const Value: integer);
    procedure Setcodigo(const Value: Integer);
    procedure Setdata_baixa(const Value: TDateTime);
    procedure Setnota_fiscal(const Value: string);
    procedure Settipo(const Value: string);
    procedure Setlista_produtos(const Value: TListaProdutos);
    procedure Setdata_emissao_nf(const Value: TDateTime);

  public
    property codigo:Integer read Fcodigo write Setcodigo;
    property cod_pedido:integer read Fcod_pedido write Setcod_pedido;
    property tipo:string read Ftipo write Settipo;
    property data_baixa:TDateTime read Fdata_baixa write Setdata_baixa;
    property nota_fiscal:string read Fnota_fiscal write Setnota_fiscal;
    property lista_produtos: TListaProdutos read Flista_produtos write Setlista_produtos;
    property data_emissao_nf:TDateTime read Fdata_emissao_nf write Setdata_emissao_nf;



end;

implementation

{ Baixa }



{ TBaixa }


{ TBaixa }

procedure TBaixa.Setcodigo(const Value: Integer);
begin
  Fcodigo := Value;
end;

procedure TBaixa.Setcod_pedido(const Value: integer);
begin
  Fcod_pedido := Value;
end;

procedure TBaixa.Setdata_baixa(const Value: TDateTime);
begin
  Fdata_baixa := Value;
end;

procedure TBaixa.Setdata_emissao_nf(const Value: TDateTime);
begin
  Fdata_emissao_nf := Value;
end;

procedure TBaixa.Setlista_produtos(const Value: TListaProdutos);
begin
  Flista_produtos := Value;
end;

procedure TBaixa.Setnota_fiscal(const Value: string);
begin
  Fnota_fiscal := Value;
end;


procedure TBaixa.Settipo(const Value: string);
begin
  Ftipo := Value;
end;

end.
