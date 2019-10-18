unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TaskDialog, Vcl.StdCtrls;

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
uses System.UITypes;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  LReturn: Integer;

begin
  LReturn := TaskDialog.Execute;

  if LReturn <> System.UITypes.idCancel then
  begin
    if LReturn = 100 then
    begin
      AdvShowmessage( 'Saving...' );
    end;
    if LReturn = 101 then
    begin
      AdvShowmessage( 'Not saving...' );
    end;
  end;
end;

end.
