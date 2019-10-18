program prjImageToBase64;

uses
  jpeg,
  pngimage,
  Vcl.Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
