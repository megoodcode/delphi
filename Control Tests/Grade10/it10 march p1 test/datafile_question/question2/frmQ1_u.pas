unit frmQ1_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, pngimage, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    memQ1: TMemo;
    edtNameQ1: TEdit;
    sedChildrenQ1: TSpinEdit;
    sedAdultsQ1: TSpinEdit;
    btnQuote: TButton;
    chkDiscount: TCheckBox;
    procedure btnQuoteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnQuoteClick(Sender: TObject);
var iChildren, iAdults, iGuests, iCost : integer;
rVat, rDisc : real;
begin
  memQ1.Clear;
  memQ1.Lines.Add('Customer Name ' + edtNameQ1.Text);
  iChildren := sedChildrenQ1.Value;
  iAdults := sedAdultsQ1.Value;
  iGuests := iChildren + iAdults;
  memQ1.Lines.Add('Number of Guests: ' + IntToStr(iGuests));

  iCost := (iChildren*35) + (iAdults*50);
  memQ1.Lines.Add('Cost: R' + IntToStr(iCost));

  rVat := Round(iCost*0.14);
  memQ1.Lines.Add('VAT: R' + FloatToStr(rVat));

  memQ1.Lines.Add('Total: R'+FloatToStr(rVat+iCost));

  if chkDiscount.Checked then
  begin
    rDisc := Round((rVat+iCost)*0.1);
    memQ1.Lines.Add('Discount: R'+FloatToStr(rDisc));
    memQ1.Lines.Add('Final: R'+FloatToStr((rVat+iCost)-rDisc));
  end;
end;

end.
