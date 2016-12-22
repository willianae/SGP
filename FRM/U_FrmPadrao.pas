unit U_FrmPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmPadrao = class(TForm)
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    FMenu: TMenuitem;
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

{$R *.dfm}

procedure TFrmPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FMenu) then
    FMenu.Enabled := True;
end;

procedure TFrmPadrao.FormShow(Sender: TObject);
begin
  if Assigned(FMenu) then
    FMenu.Enabled := False;
end;

end.
