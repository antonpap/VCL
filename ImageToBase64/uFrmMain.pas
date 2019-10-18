unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, AdvMemo;

type
  TFrmMain = class(TForm)
    dlgOpen: TFileOpenDialog;
    Panel1: TPanel;
    Image: TImage;
    Panel2: TPanel;
    btnLoadFile: TButton;
    Splitter1: TSplitter;
    Memo: TAdvMemo;
    btLoadText: TButton;
    procedure btLoadTextClick(Sender: TObject);
    procedure btnLoadFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation
uses
  System.NetEncoding;

{$R *.dfm}

procedure TFrmMain.btLoadTextClick(Sender: TObject);
var
  LInput: TMemoryStream;
  LOutput: TMemoryStream;


begin
  if dlgOpen.Execute then
  begin
    Memo.Lines.LoadFromFile(dlgOpen.FileName);

    LInput := TMemoryStream.Create;
    LOutput := TMemoryStream.Create;
    try
      Memo.Lines.SaveToStream(LInput);

      LInput.Position := 0;
      TNetEncoding.Base64.Decode( LInput, LOutput );

      LOutput.Position := 0;
      Image.Picture.LoadFromStream(LOutput);
    finally
      LInput.Free;
      LOutput.Free;
    end;
  end;
end;

procedure TFrmMain.btnLoadFileClick(Sender: TObject);
var
  LInput : TMemoryStream;
  LOutput: TMemoryStream;
begin
  if dlgOpen.Execute then
  begin
    Image.Picture.LoadFromFile(dlgOpen.FileName);

    LInput := TMemoryStream.Create;
    LOutput := TMemoryStream.Create;

    try
      Image.Picture.SaveToStream(LInput);

      LInput.Position := 0;
      TNetEncoding.Base64.Encode( LInput, LOutput );

      LOutput.Position := 0;
      Memo.Lines.LoadFromStream( LOutput );
    finally
      LInput.Free;
      LOutput.Free;
    end;
  end;
end;

end.
