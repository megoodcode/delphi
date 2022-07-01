unit q2_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Spin, ComCtrls;

type
  TForm1 = class(TForm)
    pnlLoad: TPanel;
    btnDisplay2_1_2: TButton;
    redOutput: TRichEdit;
    Label1: TLabel;
    pnlProcess: TPanel;
    Label2: TLabel;
    btnMaxSales2_2_1: TButton;
    edtHighest: TEdit;
    btnSearch2_2_2: TButton;
    edtSearch: TEdit;
    btnAveSales2_2_3: TButton;
    btnAboveAve2_2_4: TButton;
    edtAverage: TEdit;
    memAbvAve: TMemo;
    btnGenerate2_1_1: TButton;
    procedure btnDisplay2_1_2Click(Sender: TObject);
    procedure btnMaxSales2_2_1Click(Sender: TObject);
    procedure btnSearch2_2_2Click(Sender: TObject);
    procedure btnAveSales2_2_3Click(Sender: TObject);
    procedure btnAboveAve2_2_4Click(Sender: TObject);
    procedure btnGenerate2_1_1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  arrProducts : Array [1..7] of String [20] = ('Cooler Cola', 'Santa', 'Frite', 'Cool Zero', 'Frite Zero', 'Steel Brew', 'Santa Apple');

// Type your name here:
var
  Form1: TForm1;

  arrSales : Array [1..7] of Integer;

implementation

{$R *.dfm}

//Question 2.1.1
procedure TForm1.btnGenerate2_1_1Click(Sender: TObject);

begin
  {TODO Write code for 2.1.1 here}

end;

//Question 2.1.2
procedure TForm1.btnDisplay2_1_2Click(Sender: TObject);

begin
  {TODO Write code for Question 2.1.2 here}

end;

//Question 2.2.1
procedure TForm1.btnMaxSales2_2_1Click(Sender: TObject);

begin
  {TODO Write code for Question 2.2.1 here}

end;

//Question 2.2.2
procedure TForm1.btnSearch2_2_2Click(Sender: TObject);

begin
  {TODO Write code for Question 2.2.2 here}

end;

//Question 2.2.3
procedure TForm1.btnAveSales2_2_3Click(Sender: TObject);

begin
  {TODO Write code for Question 2.2.3 here}

end;

//Question 2.2.4
procedure TForm1.btnAboveAve2_2_4Click(Sender: TObject);

begin
  {TODO Write code for Question 2.2.4 here}

end;



end.
