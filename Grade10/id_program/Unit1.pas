unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtID: TEdit;
    edtDay: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtMonth: TEdit;
    Year: TLabel;
    edtYear: TEdit;
    chkCitizen: TCheckBox;
    rgpGender: TRadioGroup;
    btnValidate: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnValidateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnValidateClick(Sender: TObject);
var sid,day,month,year,gender,citizen : string;
i: integer;
myDate : tdatetime;
begin

sid := edtid.Text;

// check if 13 digits, else exit function
if length(sid) <> 13 then
  begin
    ShowMessage('Invalid Length. 13 Digits Only');
    edtID.Clear;
    edtID.SetFocus;
    exit;
  end;

// validate if input contains only numbers
for i := 1 to length(sid) do
 if not (sid[i] in ['0'..'9']) then
 begin
  ShowMessage(sid[i] + ' Invalid Input. Numbers only');
  edtID.Clear;
  edtID.SetFocus;
  Exit;
 end;

year := (copy(sid,1,2));
month := (copy(sid,3,2));
day := (copy(sid,5,2));

edtYear.Text := '19'+(year);
edtMonth.Text := (month);
edtDay.Text := (day);
// Determine if 7 digit is male or female
case strtoint(copy(sid,7,1)) of
  0..4 : rgpGender.ItemIndex := 1;
  5..9 : rgpGender.ItemIndex := 0;
end;
// Determine if 11 Digit is Citizen
case strtoint(copy(sid,11,1)) of
  0 : chkCitizen.Checked := true;
  1 : chkCitizen.Checked := false;
end;

// Set the controls to active
edtDay.Enabled := true;
edtMonth.Enabled := true;
edtYear.Enabled := true;
chkCitizen.Enabled := true;
rgpGender.Enabled := true;

end;



procedure TForm1.FormCreate(Sender: TObject);
begin
edtDay.Enabled := false;
edtMonth.Enabled := false;
edtYear.Enabled := false;
chkCitizen.Enabled := false;
rgpGender.Enabled := false;
end;

end.
