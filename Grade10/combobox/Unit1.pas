unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    cmbDays: TComboBox;
    redOutput: TRichEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbDaysChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var iCount : integer;
sOption : string;
begin
if cmbDays.ItemIndex = -1 then  // ItemIndex will Return -1 if no option is selected
  ShowMessage('Make A Choice')
else
begin
  sOption := cmbDays.Items[cmbDays.ItemIndex];
  ShowMessage(sOption);
end;

end;


procedure TForm1.cmbDaysChange(Sender: TObject);
var iOption : Integer;
begin
   iOption := cmbDays.ItemIndex;
   redOutput.Lines.Clear;
   case iOption of
   0 : redOutput.Lines.Add('Work starts 07:00 - finish at 17:00');
   1 : redOutput.Lines.Add('Work starts at 08:00 - finish at 16:00');
   2 : redOutput.Lines.Add('Day Of');
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
cmbDays.Items.Add('Monday');
cmbDays.Items.Add('Tuesday');
cmbDays.Items.Add('Wednesday');
cmbDays.Text := 'Days of the Week';
end;

end.
