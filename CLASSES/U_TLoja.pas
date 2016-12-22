unit U_TLoja;

interface

type TLoja = class
  private
    Fdescricao: string;
    Fcodigo: integer;
    Fflg_principal: boolean;
    procedure Setcodigo(const Value: integer);
    procedure Setdescricao(const Value: string);
    procedure Setflg_principal(const Value: boolean);

  public
    property codigo:integer read Fcodigo write Setcodigo;
    property descricao:string read Fdescricao write Setdescricao;
    property flg_principal:boolean read Fflg_principal write Setflg_principal;
end;

implementation

{ TLoja }

procedure TLoja.Setcodigo(const Value: integer);
begin
  Fcodigo := Value;
end;

procedure TLoja.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
end;

procedure TLoja.Setflg_principal(const Value: boolean);
begin
  Fflg_principal := Value;
end;

end.
