// Enter your examination number here
unit Question3_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Player_U, ComCtrls, ExtCtrls, Spin, DateUtils;

type
  TfrmQuestion3 = class(TForm)
    lblNameOfPlayer: TLabel;
    edtNameOfPlayer: TEdit;
    btnQ3_2_2: TButton;
    redQ3_2_2: TRichEdit;
    pnlQ3_2_3: TPanel;
    btnQ3_2_3: TButton;
    btnQ3_2_1: TButton;
    rgpQ3_2_3: TRadioGroup;
    btnQ3_2_4: TButton;
    lblQ3_2_4: TLabel;
    Label1: TLabel;
    edtWeightOfPlayer: TEdit;
    Label3: TLabel;
    grpQ3_2_1: TGroupBox;
    grpQ3_2_2: TGroupBox;
    grpQ3_2_3: TGroupBox;
    grpQ3_2_4: TGroupBox;
    procedure btnQ3_2_1Click(Sender: TObject);
    procedure btnQ3_2_2Click(Sender: TObject);
    procedure btnQ3_2_3Click(Sender: TObject);
    procedure btnQ3_2_4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuestion3: TfrmQuestion3;
  // Variable provided
  objPlayer: TPlayer;

implementation

{$R *.dfm}

// ------------------------------------------------------------------------------
// Question 3.2.1
// ------------------------------------------------------------------------------
procedure TfrmQuestion3.btnQ3_2_1Click(Sender: TObject);
begin
  // Question 3.2.1

end;

// ------------------------------------------------------------------------------
// Question 3.2.2
// ------------------------------------------------------------------------------
procedure TfrmQuestion3.btnQ3_2_2Click(Sender: TObject);
begin
  redQ3_2_2.Clear;
  // Question 3.2.2

end;

// ------------------------------------------------------------------------------
// Question 3.2.3
// ------------------------------------------------------------------------------
procedure TfrmQuestion3.btnQ3_2_3Click(Sender: TObject);
begin
  // Question 3.2.3

end;

// ------------------------------------------------------------------------------
// Question 3.2.4
// ------------------------------------------------------------------------------
procedure TfrmQuestion3.btnQ3_2_4Click(Sender: TObject);
begin
  // Question 3.2.4

end;

end.
