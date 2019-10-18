unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvEdit;

type
  TForm1 = class(TForm)
    AdvEdit1: TAdvEdit;
    AdvEdit2: TAdvEdit;
    edtValidate: TAdvEdit;
    procedure edtValidateValueValidate(Sender: TObject; Value: string; var IsValid: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edtValidateValueValidate(
  Sender: TObject; Value: string; var IsValid: Boolean);

var
  LValue: Integer;

begin
  IsValid := False;
  if Value <> '' then
  begin
    LValue := StrToInt( Value );

    IsValid := LValue MOD 2 = 0;
  end;
end;

end.
