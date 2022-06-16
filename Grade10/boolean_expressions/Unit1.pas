//A Boolean Expression is a Statement that can be either True or False
//=   : Equal To
//<>  : Not Equal To
// <  : Less Than
// > : Greater Than
// >= : Greater Than Equal
// <= : Less Than Equal

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Buttons;

type
  TBoolean_Expressions = class(TForm)
    Value1: TLabel;
    Label1: TLabel;
    sedValue1: TSpinEdit;
    sedValue2: TSpinEdit;
    btnEvaluate: TButton;
    GroupBox1: TGroupBox;
    lblEqual: TLabel;
    GroupBox2: TGroupBox;
    lblNotEqual: TLabel;
    GroupBox3: TGroupBox;
    lblGreater: TLabel;
    GroupBox4: TGroupBox;
    lblGreaterThanEqual: TLabel;
    GroupBox5: TGroupBox;
    lblLess: TLabel;
    GroupBox6: TGroupBox;
    lblLessThanEqual: TLabel;
    BitBtn1: TBitBtn;
    procedure btnEvaluateClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Boolean_Expressions: TBoolean_Expressions;

implementation

{$R *.dfm}

procedure TBoolean_Expressions.BitBtn1Click(Sender: TObject);
begin
sedValue1.Clear;
sedValue2.Clear;
lblEqual.Caption := 'Null';
lblNotEqual.Caption := 'Null';
lblGreater.Caption := 'Null';
lblGreaterThanEqual.Caption := 'Null';
lblLess.Caption := 'Null';
lblLessThanEqual.Caption := 'Null';
end;

procedure TBoolean_Expressions.btnEvaluateClick(Sender: TObject);
var iValue1, iValue2 : integer;
begin

iValue1 := sedValue1.Value;
iValue2 := sedValue2.Value;

if iValue1 = iValue2 then
  lblEqual.Caption := 'TRUE'
else
  lblEqual.Caption := 'FALSE';

if iValue1 <> iValue2 then
  lblNotEqual.Caption := 'TRUE'
else
  lblNotEqual.Caption := 'FALSE';

if iValue1 > iValue2 then
  lblGreater.Caption := 'TRUE'
else
  lblGreater.Caption := 'FALSE';

if iValue1 >= iValue2 then
  lblGreaterThanEqual.Caption := 'TRUE'
else
  lblGreaterThanEqual.Caption := 'FALSE';

if iValue1 < iValue2 then
  lblLess.Caption := 'TRUE'
else
  lblLess.Caption := 'FALSE';

if iValue1 <= iValue2 then
  lblLessThanEqual.Caption := 'TRUE'
else
  lblLessThanEqual.Caption := 'FALSE';

end;

end.
