program frmQ1_p;

uses
  Forms,
  frmQ1_u in 'frmQ1_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
