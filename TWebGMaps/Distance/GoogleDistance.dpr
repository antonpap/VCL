program GoogleDistance;

uses
  Vcl.Forms,
  Forms.FrmMain in 'Forms.FrmMain.pas' {FrmMain},
  uFlixKeys in '..\GlobalClasses\uFlixKeys.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
