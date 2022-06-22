unit Question3_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

const
  arrnames : array[1..23] of string = ('Jack','Sarah','Ben','Lily','Jocelyn','Adrian',
                                      'Anathi','Anita','Ashwin','Peter','Chloe','Jeff','Nathi',
                                      'Wandile','Kerry','Sethu','Caryn','Nicola','Phila',
                                      'Lindelwa','Kevin','Alex','Rebekka');
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  irow : integer;
begin

  for irow := 1 to 23 do
     stringgrid1.cells[0,irow-1] := arrnames[irow];
end;

end.
