unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    redOutput: TRichEdit;
    edtOutput: TEdit;
    lblOutput: TLabel;
    edtName: TEdit;
    cmbGrade: TComboBox;
    Grade: TLabel;
    lstSubject: TListBox;
    Label1: TLabel;
    rgpStudent: TRadioGroup;
    lblTEdIt: TLabel;
    grbInput: TGroupBox;
    chkLibrary: TCheckBox;
    lblCheckBox: TLabel;
    btnEnroll: TButton;
    grbOutput: TGroupBox;
    lblOutputTEdit: TLabel;
    lblRichEdit: TLabel;
    procedure btnEnrollClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
  // set default options at the start of the program.
  cmbGrade.ItemIndex := 0;
  lstSubject.ItemIndex := 0;
  rgpStudent.ItemIndex := 0;
end;

procedure TForm1.btnEnrollClick(Sender: TObject);
var sGrade, sSubject, sLibrary, sStudent, sName : String;
begin

  // clear the richEdit
  redOutput.Clear;

  // input
  sGrade := cmbGrade.Items[cmbGrade.ItemIndex]; // gets the selected item combobox
  sSubject := lstSubject.Items[lstSubject.ItemIndex]; // gets the selected item listbox
  sStudent := rgpStudent.Items[rgpStudent.ItemIndex]; // get the selected item radiogroup
  sName := edtName.Text; // get the text from tEdit
  if chkLibrary.Checked then
    redOutput.Lines.Add('Library Access Granted'); // determine if checkbox is checked

  // output to the richEdit
  redOutput.Lines.Add(sGrade);
  redOutput.Lines.Add(sSubject);
  redOutput.Lines.Add(sStudent);
  redOutput.Lines.Add(sName);

  // output the users name to the TEdit and Output Label
  edtOutput.Text := sName;
  lblOutput.Caption := sName;

end;

end.
