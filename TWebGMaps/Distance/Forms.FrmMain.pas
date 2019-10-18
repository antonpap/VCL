unit Forms.FrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, UWebGMapsCommon, UWebGMaps, Vcl.StdCtrls,
  UWebGMapsReverseGeocoding;

type
  TFrmMain = class(TForm)
    Map: TWebGMaps;
    Panel1: TPanel;
    txtCurLon: TLabeledEdit;
    txtCurLat: TLabeledEdit;
    txtALon: TLabeledEdit;
    txtALat: TLabeledEdit;
    txtBLon: TLabeledEdit;
    txtBLat: TLabeledEdit;
    btnSetA: TButton;
    btnSetB: TButton;
    btnDistance: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSetAClick(Sender: TObject);
    procedure btnSetBClick(Sender: TObject);
    procedure btnDistanceClick(Sender: TObject);
    procedure MapMapClick(Sender: TObject; Latitude, Longitude: Double; X, Y: Integer;
      Button: TMouseButton);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation
uses uFlixKeys;

{$R *.dfm}

procedure TFrmMain.btnDistanceClick(Sender: TObject);
var
  LDistance: String;
  LDistanceMeter: Double;


begin
  // compute the distance in meters
  LDistance := Map.ComputeDistanceBetween(
    StrToFloat( txtALat.Text),
    StrToFloat( txtALon.Text),
    StrToFloat( txtBLat.Text),
    StrToFloat( txtBLon.Text) );

  LDistanceMeter := StrToFloat( LDistance );

  // display distance in kilometers and miles
  MessageDlg(
    Format( 'The distance between A and B is %.1f km (%.1f miles)',
     [ LDistanceMeter / 1000, LDistanceMeter / 1609.344] ),
    mtInformation,
    [mbOK],
    0 );
end;

procedure TFrmMain.btnSetAClick(Sender: TObject);
begin
  txtALon.Text := txtCurLon.Text;
  txtALat.Text := txtCurLat.Text;
end;

procedure TFrmMain.btnSetBClick(Sender: TObject);
begin
  txtBLon.Text := txtCurLon.Text;
  txtBLat.Text := txtCurLat.Text;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  Map.APIKey :=  TFlixKeys.GetGoogleKey;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  Map.Launch;
end;

procedure TFrmMain.MapMapClick(Sender: TObject; Latitude, Longitude: Double; X, Y: Integer;
  Button: TMouseButton);
begin
  txtCurLat.Text := FloatToStr( Latitude );
  txtCurLon.Text := FloatToStr( Longitude );
end;

end.
