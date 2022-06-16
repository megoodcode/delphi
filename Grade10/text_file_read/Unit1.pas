unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    btnRead: TButton;
    redOutput: TRichEdit;
    procedure btnReadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnReadClick(Sender: TObject);
var myFile : textfile;
sLine : string;
begin
AssignFile(myFile,'provinces.txt');
Reset(myfile);
while not eof(myFile) do
 begin
  Readln(myFile,sLine);
  redOutput.Lines.Add(sLine);
end;
Closefile(myfile);
end;

end.
