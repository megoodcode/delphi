unit Bookings_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ComCtrls, Spin, Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    cmbFlightNo: TComboBox;
    listClass: TListBox;
    edtName: TEdit;
    edtCost: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    spinAge: TSpinEdit;
    GroupBox1: TGroupBox;
    Button1: TButton;
    redOutput: TRichEdit;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    sName : string;
    rCost : real;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var sFlight,sClass : string;
iAge : integer;
begin
  sName := edtName.Text;
  rCost := StrToFloat(edtCost.Text);
  sFlight := cmbFlightNo.Items[cmbFlightNo.ItemIndex];
  sClass := listClass.Items[listClass.ItemIndex];
  iAge := spinAge.Value;

  redOutput.Lines.Add('Name: ' + sName);
  redOutput.Lines.Add('Cost : ' + FloatToStr(rCost));
  redOutput.Lines.Add('Flight: ' + sFlight);
  redOutput.Lines.Add('Class: ' + sClass);
  redOutput.Lines.Add('Age: ' + IntToStr(iAge));


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  sName := 'Jacklyn';
  rCost := 2500;
  edtName.Text := sName;
  edtCost.Text := FloatToStr(rCost);
  redOutput.Clear;
end;

end.
