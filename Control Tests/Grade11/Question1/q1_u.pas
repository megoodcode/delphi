unit q1_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Spin, Math;

type
  TForm1 = class(TForm)
    pnlQ1_1: TPanel;
    Label1: TLabel;
    cmbBuyerType: TComboBox;
    Label2: TLabel;
    edtBuyerName: TEdit;
    Label3: TLabel;
    btnQ1_1: TButton;
    edtGenCode: TEdit;
    Label4: TLabel;
    pnlQ1_2: TPanel;
    sedCredit: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    lstProductsQ1_2: TListBox;
    Label7: TLabel;
    Label8: TLabel;
    edtItemsQualify: TEdit;
    Label9: TLabel;
    edtCredRemaining: TEdit;
    pnlQ1_3: TPanel;
    Label10: TLabel;
    rgpDiscQ1_3: TRadioGroup;
    sedTransAmount: TSpinEdit;
    Label11: TLabel;
    edtDiscount: TEdit;
    edtFinalPrice: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    pnlQ1_4: TPanel;
    Label14: TLabel;
    cmbIngredQ1_4: TComboBox;
    memOutput: TMemo;
    Label15: TLabel;
    procedure btnQ1_1Click(Sender: TObject);
    procedure lstProductsQ1_2Click(Sender: TObject);
    procedure rgpDiscQ1_3Click(Sender: TObject);
    procedure cmbIngredQ1_4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


//Type your name here:
var
  Form1: TForm1;
  arrPrices:Array[0..3] of real=(101.25, 35.88, 45.25, 53.81);

implementation

{$R *.dfm}

//Question 1.1
procedure TForm1.btnQ1_1Click(Sender: TObject);

begin


end;

//Question 1.2
procedure TForm1.lstProductsQ1_2Click(Sender: TObject);

begin

end;

//Question 1.3
procedure TForm1.rgpDiscQ1_3Click(Sender: TObject);
 var iselect :integer;
 itrans,rdis, imath,rfinal:real;

begin
   {TODO Write code for Question 1.3 here}

end;

//Question 1.4
procedure TForm1.cmbIngredQ1_4Change(Sender: TObject);

begin
  {TODO Write code for Question 1.4 here}

end;




end.
