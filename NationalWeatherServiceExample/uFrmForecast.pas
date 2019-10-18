unit uFrmForecast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, CloudImage,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCBitmapContainer, VCL.TMSFNCURLBitmapContainer, AdvChartView,
  AdvChartViewGDIP, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl, VCL.TMSFNCImage, AdvChartLink, Vcl.ExtCtrls, AdvSplitter, uRestWeather,
  AdvMemo;

type
  TFrmForecast = class(TForm)
    Grid: TAdvStringGrid;
    Chart: TAdvGDIPChartView;
    ChartLink: TAdvChartLink;
    AdvSplitter1: TAdvSplitter;
    Cloud: TAdvCloudImage;
    Panel1: TPanel;
    txtForecast: TAdvMemo;
    AdvSplitter2: TAdvSplitter;
    procedure GridSelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);

  private
    FForecast: TForecast;
    procedure SetForecast(const Value: TForecast);
    { Private declarations }

    procedure UpdateGui;
    procedure ShowForecast( ARow: Integer );

  public
    { Public declarations }
    procedure Show( AForecast: TForecast ); overload;

    property Forecast: TForecast read FForecast write SetForecast;
  end;

var
  FrmForecast: TFrmForecast;

implementation

{$R *.dfm}


{ TFrmForecast }

procedure TFrmForecast.GridSelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
  ShowForecast( ARow );
end;

procedure TFrmForecast.SetForecast(const Value: TForecast);
begin
  FForecast := Value;

  UpdateGui;
end;

procedure TFrmForecast.Show(AForecast: TForecast);
begin
  Forecast := AForecast;

  inherited Show;
end;

procedure TFrmForecast.ShowForecast(ARow: Integer);
var
  LPeriod: TForecastPeriod;

begin
  if Assigned( Grid.Objects[ 0, ARow ] ) then
  begin
    LPeriod := Grid.Objects[ 0, ARow ] as TForecastPeriod;

    txtForecast.BeginUpdate;
    txtForecast.Lines.Clear;
    txtForecast.Lines.Add( LPeriod.Name + ': '
      + LPeriod.ShortForecast );
    txtForecast.Lines.Add('');
    txtForecast.Lines.Add( LPeriod.DetailedForecast );
    txtForecast.EndUpdate;
  end;
end;

procedure TFrmForecast.UpdateGui;
var
  LPeriod: TForecastPeriod;
  LRow : Integer;

  LBitmap: TBitmap;

begin
  LRow := 0;
  Grid.Cells[1, 0] := 'Period';
  Grid.Cells[2, 0] := 'Temp. F';
  Grid.Cells[3, 0] := 'Icon';
  Grid.Cells[4, 0] := 'Wind Dir.';
  Grid.Cells[5, 0] := 'Wind Speed';

  Grid.Cells[6, 0] := 'URL';

  Grid.RowCount := Forecast.Periods.Count+1;
  Grid.ColCount := 7;

  for LPeriod in Forecast.Periods do
  begin
    Inc( LRow );
    Grid.Objects[ 0, LRow ] := LPeriod;
    Grid.Ints[ 0, LRow] := LPeriod.Number;
    Grid.Cells[ 1, LRow ] := LPeriod.Name;
    Grid.Ints[ 2, LRow ] := LPeriod.Temperature;
    Grid.Cells[ 4, LRow ] := LPeriod.WindDirection;
    Grid.Cells[ 5, LRow ] := LPeriod.WindSpeed;
    Grid.Cells[ 6, LRow ] := LPeriod.IconURL;

    Cloud.URL := LPeriod.IconURL;

    LBitmap := Grid.CreateBitmap(3, LRow, true, haCenter, vaCenter );
    LBitmap.Height := Cloud.WebPicture.Height;
    LBitmap.Width := Cloud.WebPicture.Width;

    LBitmap.Canvas.Draw(0,0,Cloud.WebPicture);

  end;

  Grid.AutoGrowColumns(true);
  Grid.AutoSizeRows(true, 1);

  ChartLink.Synchronize;

  ShowForecast( 1 );
end;

end.
