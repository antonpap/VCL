unit uFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UWebGMapsCommon, UWebGMaps,
  Vcl.WinXPanels, uRestWeather;

type
  TFrmMain = class(TForm)
    Map: TWebGMaps;
    Panel1: TPanel;
    txtLon: TLabeledEdit;
    txtLat: TLabeledEdit;
    btnGetXY: TButton;
    txtX: TEdit;
    txtY: TEdit;
    btnGetWeather: TButton;
    txtStation: TEdit;
    procedure MapMapClick(Sender: TObject; Latitude, Longitude: Double; X, Y: Integer;
      Button: TMouseButton);
    procedure FormCreate(Sender: TObject);
    procedure btnGetXYClick(Sender: TObject);
    procedure btnGetWeatherClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private

    FLatitude: Double;
    FLongitude: Double;

    FGridX: Integer;
    FGridY: Integer;
    FStation: String;

    FForecast: TForecast;

    procedure SetLatitude(const Value: Double);
    procedure SetLongitude(const Value: Double);
    procedure SetGridX(const Value: Integer);
    procedure SetGridY(const Value: Integer);
    procedure SetStation(const Value: String);

    procedure AddPolygon( AForecast: TForecast );

    { Private declarations }
  public
    { Public declarations }
    property Latitude: Double read FLatitude write SetLatitude;
    property Longitude: Double read FLongitude write SetLongitude;

    property GridX: Integer read FGridX write SetGridX;
    property GridY: Integer read FGridY write SetGridY;
    property Station: String read FStation write SetStation;
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses uFlixKeys,  UWebGMapsPolygons, uFrmForecast;

procedure TFrmMain.AddPolygon(AForecast: TForecast);
var
  LItem: TPolygonItem;
begin
  LItem := Map.Polygons.Add;
  LItem.Polygon.PolygonType := ptPath;

  for var i := 0 to AForecast.Points.Count - 1 do
  begin
    LItem.Polygon.Path.Add(
      AForecast.Points[i].Latitude,
      AForecast.Points[i].Longitude
    );

  end;

  Map.CreateMapPolygon(LItem.Polygon);
end;

procedure TFrmMain.btnGetWeatherClick(Sender: TObject);
var
  LPeriod: TForecastPeriod;

  i: Integer;

  LFrm: TFrmForecast;

begin
  if Assigned( FForecast ) then
  begin
    FForecast.Free;
  end;

  FForecast := TForecast.Create;

  APIController.GetForecast( GridX, GridY, Station, FForecast);

  LFrm := TFrmForecast.Create(self);
  LFrm.Show(FForecast);

  // display polygon of weather station area
  AddPolygon(FForecast);

end;

procedure TFrmMain.btnGetXYClick(Sender: TObject);
var
  LStation: String;
  LX,
  LY : Integer;

begin
  // get x/y grid coordinates for weather query

  APIController.GetXYFor( Latitude, Longitude, LX, LY, LStation);

  GridY := LY;
  GridX := LX;
  Station:= LStation;
end;


procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned( FForecast ) then
  begin
    FForecast.Free;
  end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  Map.APIKey := TFlixKeys.GetGoogleKey;
  Map.Launch;

  FForecast := nil;
end;

procedure TFrmMain.MapMapClick(Sender: TObject;
  Latitude, Longitude: Double; X, Y: Integer;
  Button: TMouseButton);
begin
  // determine longitude and latitude using
  // Google Maps
  self.Latitude := Latitude;
  self.Longitude := Longitude;
end;

procedure TFrmMain.SetGridX(const Value: Integer);
begin
  FGridX := Value;

  txtX.Text := Value.ToString;
end;

procedure TFrmMain.SetGridY(const Value: Integer);
begin
  FGridY := Value;

  txtY.Text := Value.ToString;
end;

procedure TFrmMain.SetLatitude(const Value: Double);
begin
  FLatitude := Value;

  txtLat.Text := FloatToStr( Value );
end;

procedure TFrmMain.SetLongitude(const Value: Double);
begin
  FLongitude := Value;

  txtLon.Text := FloatToStr( Value );
end;

procedure TFrmMain.SetStation(const Value: String);
begin
  FStation := Value;

  txtStation.Text := Value;
end;

end.
