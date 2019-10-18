unit uRestWeather;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Contnrs,
  REST.Types,
  REST.Response.Adapter,
  REST.Client,
  Data.Bind.Components,
  Data.Bind.ObjectScope,
  System.Generics.Collections;

type

  // point of polygon for weather station area
  TForecastPoint = class
  private
    FLatitude: Double;
    FLongitude: Double;
  public
    property Latitude: Double read FLatitude write FLatitude;
    property Longitude: Double read FLongitude write FLongitude;
  end;

  // one period item that is part of weather forecast
  TForecastPeriod = class
  private
    FName: String;
    FStartTime: TDateTime;
    FEndTime: TDateTime;
    FIsDaytime: Boolean;
    FTemperature: Integer;
    FTemperatureUnit: String;
    FWindSpeed: String;
    FWindDirection: String;
    FIconURL: String;
    FDetailedForecast: String;
    FNumber: Integer;
    FShortForecast: String;

  public
    property Number: Integer read FNumber write FNumber;
    property Name: String read FName write FName;
    property StartTime: TDateTime read FStartTime write FStartTime;
    property EndTime: TDateTime read FEndTime write FEndTime;
    property IsDaytime: Boolean read FIsDaytime write FIsDaytime;
    property Temperature: Integer read FTemperature write FTemperature;
    property TemperatureUnit: String read FTemperatureUnit write FTemperatureUnit;
    property WindSpeed: String read FWindSpeed write FWindSpeed;
    property WindDirection: String read FWindDirection write FWindDirection;
    property IconURL: String read FIconURL write FIconURL;
    property ShortForecast: String read FShortForecast write FShortForecast;
    property DetailedForecast: String read FDetailedForecast write FDetailedForecast;
  end;


  // forecast encapsulates the webservice result
  // for a forecast inquiry
  TForecast = class
  private
    FPeriods: TObjectList<TForecastPeriod>;
    FPoints: TObjectList<TForecastPoint>;
  public
    constructor Create;
    destructor Destroy; override;

    // list of forecast items
    property Periods: TObjectList<TForecastPeriod> read FPeriods write FPeriods;

    // list of points for the polygon
    property Points: TObjectList<TForecastPoint> read FPoints write FPoints;
  end;

type
  TAPIController = class(TDataModule)
    Client: TRESTClient;
    ReqPoints: TRESTRequest;
    ResPoints: TRESTResponse;
    ReqForecast: TRESTRequest;
    ResForecast: TRESTResponse;
  private
    { Private declarations }
    function JSONDateTime( ADateTime: String ): TDateTime;
  public
    { Public declarations }
    procedure GetXYFor(Lat, Lon: Double; var X, Y: Integer; var AStation : String);
    procedure GetForecast( X, Y: Integer; Station: String; var AForecast: TForecast );
  end;

var
  APIController: TAPIController;


implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}


uses
  Dialogs,
  System.JSON,
  DateUtils
  ;

procedure TAPIController.GetForecast(X, Y: Integer; Station: String; var AForecast: TForecast);
var
  LPeriod: TForecastPeriod;
  LPoint: TForecastPoint;
  j,
  i: Integer;
  LJRoot : TJsonObject;
  LJGeometry: TJsonObject;
  LJGeometries : TJsonArray;
  LJGeometryItem: TJsonObject;

  LJCoordinatesSub,
  LJCoordinates: TJsonArray;
  LJCoordinate: TJsonArray;

  LJProperties: TJsonObject;
  LJPeriod : TJsonObject;
  LJPeriods : TJsonArray;


begin
  if Assigned( AForecast ) then
  begin
    // set request parameters
    ReqForecast.Params.ParameterByName('station').Value := Station;
    ReqForecast.Params.ParameterByName('X').Value := X.ToString;
    ReqForecast.Params.ParameterByName('Y').Value := Y.ToString;

    // execute
    ReqForecast.Execute;

    // in case result is positive, read JSON result
    if ResForecast.StatusCode = 200 then
    begin
      LJRoot := ResForecast.JSONValue as TJsonObject;

      // start with geometry of polygon
      LJGeometry := LJRoot.GetValue('geometry') as TJsonObject;
      LJGeometries := LJGeometry.Values['geometries'] as TJsonArray;

      // gemetries have different types
      for i := 0 to LJGeometries.Count -1 do
      begin
          LJGeometryItem := LJGeometries.Items[i] as TJsonObject;
          // we only look at Polygon
          if (LJGeometryItem.Values['type'] as TJsonString).Value = 'Polygon' then
          begin
            // every Polygon has coordinates given as an array
            LJCoordinates := LJGeometryItem.Values['coordinates'] as TJsonArray;
            LJCoordinatesSub := LJCoordinates.Items[0] as TJsonArray;
            for j := 0 to LJCoordinatesSub.Count - 1 do
            begin
              LJCoordinate := LJCoordinatesSub.Items[j] as TJsonArray;

              LPoint := TForecastPoint.Create;
              LPoint.Longitude := (LJCoordinate.Items[0] as TJsonNumber).AsDouble;
              LPoint.Latitude := (LJCoordinate.Items[1] as TJsonNumber).AsDouble;
              AForecast.Points.Add( LPoint );
            end;
          end;

      end;

      // now the forecasts
      LJProperties := LJRoot.Values['properties'] as TJsonObject;
      LJPeriods := LJProperties.Values['periods'] as TJsonArray;

      // iterate all the items
      for i := 0 to LJPeriods.Count - 1 do
      begin
        LPeriod := TForecastPeriod.Create;
        LJPeriod := LJPeriods.Items[i] as TJsonObject;

        LPeriod.Number := ( LJPeriod.Values['number'] as TJsonNumber ).AsInt;
        LPeriod.Name := ( LJPeriod.Values['name'] as TJsonString ).Value;

        // date is given in a special format and thus needs to be converted.
        // The method JSONDateTime does just that.
        LPeriod.StartTime := JSONDateTime ( ( LJPeriod.Values['startTime'] as TJSONString ).Value );
        LPeriod.EndTime := JSONDateTime ( ( LJPeriod.Values['endTime'] as TJSONString ).Value );
        LPeriod.IsDaytime := ( LJPeriod.Values['isDaytime'] as TJSONBool ).AsBoolean;
        LPeriod.Temperature := ( LJPeriod.Values['temperature'] as TJSONNumber ).AsInt;
        LPeriod.TemperatureUnit := ( LJPeriod.Values['temperatureUnit'] as TJsonString ).Value;
        LPeriod.WindSpeed := ( LJPeriod.Values['windSpeed'] as TJsonString ).Value;
        LPeriod.WindDirection := ( LJPeriod.Values['windDirection'] as TJsonString ).Value;
        LPeriod.IconURL := ( LJPeriod.Values['icon'] as TJsonString ).Value;
        LPeriod.ShortForecast := ( LJPeriod.Values['shortForecast'] as TJsonString ).Value;
        LPeriod.DetailedForecast := ( LJPeriod.Values['detailedForecast'] as TJsonString ).Value;

        AForecast.Periods.Add(LPeriod);
      end;
    end
    else
    begin
      raise Exception.CreateFmt('Server Error. %d', [ResForecast.StatusCode]);
    end;
  end;
end;

procedure TAPIController.GetXYFor(Lat, Lon: Double; var X, Y: Integer; var AStation: String);
var
  LRoot: TJsonObject;
  LProperties : TJsonObject;

begin
  // set request parameters
  ReqPoints.Params.ParameterByName('Lat').Value  := Lat.ToString;
  ReqPoints.Params.ParameterByName('Lon').Value := Lon.ToString;

  // execute request
  ReqPoints.Execute;

  // read data
  if ResPoints.StatusCode = 200 then
  begin
    LRoot := ResPoints.JSONValue as TJsonObject;

    LProperties := LRoot.GetValue('properties') as TJsonObject;

    AStation := ( LProperties.GetValue('cwa') as TJSONString).Value;

    X := (LProperties.GetValue( 'gridX' ) as TJSONNumber).AsInt;
    Y := (LProperties.GetValue( 'gridY' ) as TJSONNumber).AsInt;
  end
  else
  begin
    if ResPoints.StatusCode= 404 then
    begin
      raise Exception.Create('Location must be part of the United States of America.');
    end
    else
    begin
      raise Exception.CreateFmt('Server error. %d', [ResPoints.StatusCode]);
    end;
  end;
end;


function TAPIController.JSONDateTime(ADateTime: String): TDateTime;
var
  LYear,
  LMonth,
  LDay,
  LHour,
  LMinute,
  LSecond: Integer;
  LSign: Integer;
  LDeltaHours,
  LDeltaMinutes: Integer;

begin
  // convert the date time given in the JSON to TDateTime
  LYear := StrToInt( COPY( ADateTime, 1, 4 ) );
  LMonth := StrToInt( COPY( ADateTime, 6, 2 ) );
  LDay := StrToInt( COPY( ADateTime, 9, 2 ) );
  LHour := StrToInt( COPY( ADateTime, 12, 2 ) );
  LMinute := StrToInt( COPY( ADateTime, 15, 2 ) );
  LSecond := StrToInt( COPY( ADateTime, 18, 2 ) );
  if COPY( ADateTime, 20, 1 ) = '+' then
  begin
    LSign := 1;
  end
  else
  begin
    LSign := -1;
  end;

  LDeltaHours := StrToInt( COPY( ADateTime, 21, 2 ) ) * LSign;
  LDeltaMinutes := StrToInt( COPY( ADateTime, 24, 2 ) ) * LSign;

  Result := EncodeDateTime( LYear, LMonth, LDay, LHour, LMinute, LSecond, 0 );
  IncHour( Result, LDeltaHours );
  IncMinute( Result, LDeltaMinutes );
end;

{ TForecast }

constructor TForecast.Create;
begin
  self.FPeriods := TObjectList<TForecastPeriod>.Create(true);
  self.FPoints := TObjectList<TForecastPoint>.Create(true);
end;

destructor TForecast.Destroy;
begin
  FPoints.Free;
  FPeriods.Free;

  inherited;
end;

end.
