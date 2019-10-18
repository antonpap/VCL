unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, TaskDialog;

type
  TForm1 = class(TForm)
    TaskDialog: TAdvTaskDialog;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses System.UITypes;

procedure TForm1.Button1Click(Sender: TObject);
var
  LResult : Integer;

begin
  if TaskDialog.Execute = System.UITypes.idOK then
  begin
    LResult := TaskDialog.RadioButtonResult;
    if LResult = 200 then
    begin
      AdvShowmessage( 'Store in registry');
    end;

    if LResult = 201 then
    begin
      AdvShowmessage( 'Store in XML');
    end;
  end;
end;

end.
