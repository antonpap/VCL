unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UWebGMapsCommon, UWebGMaps, uFlixKeys;

type
  TFrmMain = class(TForm)
    Map: TWebGMaps;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  Map.APIKey := TFlixKeys.GetGoogleMapsKey;

end;

end.
