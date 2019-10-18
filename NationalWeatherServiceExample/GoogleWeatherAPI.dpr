program GoogleWeatherAPI;

uses
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain},
  uFlixKeys in 'D:\demo\GlobalClasses\uFlixKeys.pas',
  uRestWeather in 'uRestWeather.pas' {APIController: TDataModule},
  uFrmForecast in 'uFrmForecast.pas' {FrmForecast};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TAPIController, APIController);
  Application.Run;
end.
