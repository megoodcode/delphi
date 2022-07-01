unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons;

type
  TInvestment = class(TForm)
    edtBalance: TEdit;
    edtRate: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnGrow: TButton;
    redOutput: TRichEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    procedure btnGrowClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Investment: TInvestment;

implementation

{$R *.dfm}

procedure TInvestment.BitBtn1Click(Sender: TObject);
begin
edtBalance.Clear;
edtRate.Clear;
redOutput.Clear;
edtBalance.SetFocus;
end;

procedure TInvestment.btnGrowClick(Sender: TObject);
var iCounter : integer;
rBalance,rRate,rInterest : real;
begin

rBalance := strToFloat(edtBalance.Text);
rRate := StrToFloat(edtRate.Text)/100;

for iCounter := 1 to 4 do
begin
  rInterest := rBalance * rRate;
  rBalance := rBalance + rInterest;
  redOutput.Lines.Add('Year: ' + IntToStr(iCounter) + ': '
  + floatToStrF(rBalance,ffCurrency,10,2));
end;

end;

end.
