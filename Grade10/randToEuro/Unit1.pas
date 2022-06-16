unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TCurrency_Converter = class(TForm)
    lblRand: TLabel;
    lblEuro: TLabel;
    edtRand: TEdit;
    edtEuro: TEdit;
    btnConvertToEuro: TButton;
    btnConvertToRand: TButton;
    BitBtn1: TBitBtn;
    procedure btnConvertToEuroClick(Sender: TObject);
    procedure btnConvertToRandClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Currency_Converter: TCurrency_Converter;

implementation

{$R *.dfm}

procedure TCurrency_Converter.BitBtn1Click(Sender: TObject);
begin
edtRand.Clear;
edtEuro.Clear;
end;

procedure TCurrency_Converter.btnConvertToEuroClick(Sender: TObject);
const exchangeRate = 0.1236;
var rEuro, rRand : real;
begin
rRand := StrToFloat(edtRand.Text);
rEuro := rRand * exchangeRate;
edtEuro.Text := FloatToStrf(rEuro,ffCurrency,10,2);
end;

procedure TCurrency_Converter.btnConvertToRandClick(Sender: TObject);
const exchangeRate = 12.36;
var rEuro, rRand : real;
begin
rEuro := StrToFloat(edtEuro.Text);
rRand := rEuro * exchangeRate;
edtRand.Text := FloatToStrf(rRand,ffcurrency,10,2);

end;

end.
