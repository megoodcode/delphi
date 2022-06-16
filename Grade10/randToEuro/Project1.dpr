program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Currency_Converter};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCurrency_Converter, Currency_Converter);
  Application.Run;
end.
