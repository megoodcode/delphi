// Type in your examination number here

unit Question3_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TfrmQuestion3 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    btnTerminal1: TBitBtn;
    btnTerminal2: TBitBtn;
    btnTerminal3: TBitBtn;
    GroupBox2: TGroupBox;
    btnNorth: TBitBtn;
    btnEast: TBitBtn;
    btnSouth: TBitBtn;
    btnWest: TBitBtn;
    GroupBox3: TGroupBox;
    btnQues31: TButton;
    btnQues32: TButton;
    btnQues33: TButton;
    btnQues34: TButton;
    redQ3: TRichEdit;
    cmbQues3: TComboBox;
    GroupBox4: TGroupBox;
    procedure btnQues31Click(Sender: TObject);
    procedure btnQues32Click(Sender: TObject);
    procedure btnTerminal1Click(Sender: TObject);
    procedure btnTerminal2Click(Sender: TObject);
    procedure btnTerminal3Click(Sender: TObject);
    procedure btnNorthClick(Sender: TObject);
    procedure btnSouthClick(Sender: TObject);
    procedure btnEastClick(Sender: TObject);
    procedure btnWestClick(Sender: TObject);
    procedure btnQues33Click(Sender: TObject);
    procedure btnQues34Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


  // Given code

var
  frmQuestion3: TfrmQuestion3;
  arrCodes: array [1 .. 10] of char = (
    'W',
    'A',
    'S',
    'R',
    'X',
    'D',
    'H',
    'P',
    'T',
    'L'
  );
  arrActivities: array [1 .. 10] of String = (
    'Water park',
    'Aquarium',
    'Sea',
    'Restaurants',
    'Shopping',
    'Diving',
    'Help desk',
    'Penguin park',
    'Shark tank',
    'Dolphin shows'
  );

  arrActCodes: array [1 .. 3, 1 .. 4] of String = (('DXWAT', 'HRDST', 'STWLP',
      'RDT'), ('SWA', 'SRXD', 'LWXH', 'SHA'), ('WLSR', 'AT', 'DATX', 'HW'));

  iTerminal: integer  = 1;
  iDirection: integer = 1;

implementation

{$R *.dfm}

procedure TfrmQuestion3.btnTerminal1Click(Sender: TObject);
begin
  iTerminal := 1;
end;

procedure TfrmQuestion3.btnTerminal2Click(Sender: TObject);
begin
  iTerminal := 2;
end;

procedure TfrmQuestion3.btnTerminal3Click(Sender: TObject);
begin
  iTerminal := 3;
end;

procedure TfrmQuestion3.btnNorthClick(Sender: TObject);
begin
  iDirection := 1;
end;

procedure TfrmQuestion3.btnSouthClick(Sender: TObject);
begin
  iDirection := 2;
end;

procedure TfrmQuestion3.btnEastClick(Sender: TObject);
begin
  iDirection := 3;
end;


procedure TfrmQuestion3.btnWestClick(Sender: TObject);
begin
  iDirection := 4;
end;

procedure TfrmQuestion3.btnQues31Click(Sender: TObject);
begin
  // Quetion 3.1
end;

procedure TfrmQuestion3.btnQues32Click(Sender: TObject);
begin
  // Quetion 3.2
end;

procedure TfrmQuestion3.btnQues33Click(Sender: TObject);
begin
  // Question 3.3
end;

procedure TfrmQuestion3.btnQues34Click(Sender: TObject);
begin
  // Question 3.4
end;

end.
