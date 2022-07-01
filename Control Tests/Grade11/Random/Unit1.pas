unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, System.Math;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    btnRandom: TButton;
    btnRandomRange: TButton;
    redOutput: TRichEdit;
    edtRandom: TEdit;
    lblRandom: TLabel;
    btnClear: TButton;
    btnRandomize: TButton;
    btnNoRandomize: TButton;
    Label1: TLabel;
    edtRandomRange1: TEdit;
    edtRandomRange2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnRandomClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnRandomizeClick(Sender: TObject);
    procedure btnNoRandomizeClick(Sender: TObject);
    procedure btnRandomRangeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnClearClick(Sender: TObject);
begin
redOutput.Clear;
end;

procedure TForm1.btnNoRandomizeClick(Sender: TObject);
var i,iRandom : integer;
begin

for i:=1 to 100 do
begin
  iRandom :=  Random(100);
  redOutput.Lines.Add(IntToStr(iRandom));
end;

end;

procedure TForm1.btnRandomClick(Sender: TObject);
var iNumber,iRandom,iBtn : integer;
begin

if edtRandom.Text <> '' then
begin
iNumber := StrToInt(edtRandom.Text);
iRandom := Random(iNumber);
redOutput.Lines.Add('Random Number: ' + #9 + Inttostr(iRandom));
end
else
begin
iBtn := messagedlg('Please Enter Random Number',mtError, mbOKCancel, 0);
edtRandom.SetFocus;
end;


end;

procedure TForm1.btnRandomizeClick(Sender: TObject);
var i,iRandom : integer;
begin
Randomize;     //call Randomize Function, Prior to Executing Random Function. Dosnt go inside for loop
for i:=1 to 100 do
begin
  iRandom :=  Random(100);
  redOutput.Lines.Add(IntToStr(iRandom));
end;

end;

procedure TForm1.btnRandomRangeClick(Sender: TObject);
var iNum1, iNum2, iBtn : integer;
begin

if (edtRandomRange1.Text <> '') AND (edtRandomRange2.Text <> '') then
begin
   iNum1 := StrToInt(edtRandomRange1.Text);
   iNum2 := StrToInt(edtRandomRange2.Text);
   Randomize;
   redOutput.Lines.Add('Random Range for ' + IntToStr(iNum1) + ' and ' +
   IntToStr(iNum2) +' = '+ IntToStr(RandomRange(iNum1,iNum2)));
end
else
begin
  iBtn := messagedlg('Please Enter Random Range Number',mtError, mbOKCancel, 0);
  edtRandomRange1.SetFocus;
end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
redOutput.Clear;
end;

end.
