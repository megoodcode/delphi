unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    redOutput: TRichEdit;
    btnWrite: TButton;
    Label1: TLabel;
    edtInput: TEdit;
    procedure btnWriteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.btnWriteClick(Sender: TObject);
var myFile : textFile;
sLine : string;
begin
  AssignFile(myFile, 'output.txt');
  Append(myFile);

  sLine := edtInput.Text;
  Writeln(myFile,sLine);
  redOutput.Lines.Add(sLine);

  CloseFile(myFile);

end;



end.
