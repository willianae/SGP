unit U_TFornecedor;

interface

uses
  U_TEndereco;

type TFornecedor = class

  private
    Fid: Integer;
    Femail: string;
    Frazao_social: string;
    Fendereco: TEndereco;
    FtelefoneFixo: string;
    Fcpf: string;
    Finscricao_estadual: string;
    FtelefoneCelular: string;
    Fnome_representante: String;
    Ffone_representante: String;
    Femail_representante: String;
    procedure Setid(const Value: Integer);
    procedure Setemail(const Value: string);
    procedure Setrazao_social(const Value: string);
    procedure Setendereco(const Value: TEndereco);
    procedure Setinscricao_estadual(const Value: string);
    procedure Setcpf(const Value: string);
    procedure SettelefoneCelular(const Value: string);
    procedure SettelefoneFixo(const Value: string);
    procedure Setemail_representante(const Value: String);
    procedure Setfone_representante(const Value: String);
    procedure Setnome_representante(const Value: String);
  public
    property id:Integer read Fid write Setid;
    property razao_social:string read Frazao_social write Setrazao_social;
    property endereco:TEndereco read Fendereco write Setendereco;
    property inscricao_estadual:string read Finscricao_estadual write Setinscricao_estadual;
    property cpf:string read Fcpf write Setcpf;
    property telefoneFixo:string read FtelefoneFixo write SettelefoneFixo;
    property telefoneCelular:string read FtelefoneCelular write SettelefoneCelular;
    property email:string read Femail write Setemail;
    property nome_representante:String read Fnome_representante write Setnome_representante;
    property email_representante:String read Femail_representante write Setemail_representante;
    property fone_representante:String read Ffone_representante write Setfone_representante;


end;

implementation

{ Fornecedor }



{ TFornecedor }

procedure TFornecedor.Setinscricao_estadual(const Value: string);
begin
  Finscricao_estadual := Value;
end;

procedure TFornecedor.Setnome_representante(const Value: String);
begin
  Fnome_representante := Value;
end;

procedure TFornecedor.Setcpf(const Value: string);
begin
  Fcpf := Value;
end;


procedure TFornecedor.Setemail(const Value: string);
begin
   FEmail := Value;
end;

procedure TFornecedor.Setemail_representante(const Value: String);
begin
  Femail_representante := Value;
end;

procedure TFornecedor.Setendereco(const Value: TEndereco);
begin
  FEndereco := Value;
end;

procedure TFornecedor.Setfone_representante(const Value: String);
begin
  Ffone_representante := Value;
end;

procedure TFornecedor.Setid(const Value: Integer);
begin
   Fid := Value;
end;

procedure TFornecedor.Setrazao_social(const Value: string);
begin
   Frazao_social := Value;
end;


procedure TFornecedor.SettelefoneCelular(const Value: string);
begin
  FtelefoneCelular := Value;
end;

procedure TFornecedor.SettelefoneFixo(const Value: string);
begin
  FtelefoneFixo := Value;
end;

end.
