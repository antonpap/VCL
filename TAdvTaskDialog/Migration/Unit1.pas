unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TaskDialog, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnOldMessageDlg: TButton;
    btnNewMessageDlg: TButton;
    btnOldShowmessage: TButton;
    btnNewShowmessage: TButton;
    btnInputQueryOld: TButton;
    btnInputQueryNew: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure btnOldMessageDlgClick(Sender: TObject);
    procedure btnNewMessageDlgClick(Sender: TObject);
    procedure btnOldShowmessageClick(Sender: TObject);
    procedure btnNewShowmessageClick(Sender: TObject);
    procedure btnInputQueryOldClick(Sender: TObject);
    procedure btnInputQueryNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnNewShowmessageClick(Sender: TObject);
begin
  //  AdvShowmessage( 'This is the fancy, new ShowMessage' );
  //  AdvShowmessage( 'Title', 'Instructions', 'Content', 'Do not show again',tiInformation);
end;

procedure TForm1.btnOldMessageDlgClick(Sender: TObject);

begin
  MessageDlg('This is what the old MessageDlg looks like in its confirmation configuration.',
    mtConfirmation, [mbYes,mbNo], 0 );
end;

procedure TForm1.btnOldShowmessageClick(Sender: TObject);
begin
  Showmessage( 'This is the old, plain ShowMessage' );
end;

procedure TForm1.btnInputQueryNewClick(Sender: TObject);
var
  LValue: String;

begin
  AdvInputQueryDlg( 'Caption' ,'Prompt', LValue );
end;


procedure TForm1.btnInputQueryOldClick(Sender: TObject);
var
  LValue: String;

begin
  InputQuery( 'Caption' ,'Prompt', LValue );
end;

procedure TForm1.btnNewMessageDlgClick(Sender: TObject);
begin
  AdvMessageDlg('This is what AdvMessageDlg looks like using the new Windows API in its confirmation configuration.',
    mtConfirmation, [mbYes,mbNo], 0 );
end;

end.
