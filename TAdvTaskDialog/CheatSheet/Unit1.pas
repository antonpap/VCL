unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, TaskDialog, TaskDialogEx;

type
  TForm1 = class(TForm)
    TaskDialog: TAdvTaskDialogEx;
    btnInvoke: TButton;
    procedure btnInvokeClick(Sender: TObject);
  private
    { Private declarations }
    function ShowTaskDialog( ATaskDialog: TAdvTaskDialogEx ): Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnInvokeClick(Sender: TObject);
var
  LResult : Integer;
  LChecked: Boolean;
  LRadio  : Integer;
begin
  LResult := ShowTaskDialog(TaskDialog);

  // LResult contains the ID of the button pressed
  // - use System.UITypes to determine which one
  // - if value is > 100 it is a custom button
  //   101 = first, 102 = second, ...

  // check VerifyResult if VerificationText is checked
  LChecked := TaskDialog.VerifyResult;

  // check RadioButtonResult to get the index of
  // the selected radio button
  LRadio := TaskDialog.RadioButtonResult;
end;

function TForm1.ShowTaskDialog(ATaskDialog: TAdvTaskDialogEx): Integer;
begin
  ATaskDialog.Title :=
    'Test of AdvTaskDialog';
  ATaskDialog.Instruction :=
    'This is the bold, blue main instruction; it can be multiple lines';
  ATaskDialog.Icon := tiWarning;
  ATaskDialog.Content := 'This is the normal "content" of the dialog.' +#10 +
    'Notice it is in relatively small print.';

  ATaskDialog.RadioButtons.Add('Radio Button 1');
  ATaskDialog.RadioButtons.Add('Radio Button 2');

  ATaskDialog.ExpandControlText := 'Less Detail';
  ATaskDialog.ExpandedText := 'More Text that is only visible when dialog is expanded.';

  ATaskDialog.CollapsControlText := 'More Detail';

  ATaskDialog.VerificationText := 'Check this box if you can read 🤣';

  ATaskDialog.FooterIcon := tfiShield;
  ATaskDialog.Footer := 'Sample footer message.' + #10 +
    'For example: If you proceed, you will lose all unsaved changes!';

  ATaskDialog.CustomButtons.Add('Custom (100)');
  ATaskDialog.CommonButtons := ATaskDialog.CommonButtons + [cbOK, cbCancel];


  Result := ATaskDialog.Execute;
end;

end.
