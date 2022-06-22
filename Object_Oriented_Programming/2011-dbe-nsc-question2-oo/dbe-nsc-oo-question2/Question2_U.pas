unit Question2_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,  StdCtrls, ComCtrls;

type
  TfrmQuestion2 = class(TForm)
    MainMenu1: TMainMenu;
    mnuOptionB: TMenuItem;
    redOutput: TRichEdit;
    mnuOptionC: TMenuItem;
    mnuOptionA: TMenuItem;
    Quit1: TMenuItem;
    procedure Quit1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    



  private

  public
    { Public declarations }
  end;

var
  frmQuestion2: TfrmQuestion2;

implementation
uses
  uHousehold;

var
  sAccount    :string;
  iMembers    :integer;
  arrWaterUse :arrType = (481, 438, 454, 353, 421, 396, 432);

{$R *.dfm}

procedure TfrmQuestion2.Quit1Click(Sender: TObject);
begin
   Application.Terminate;
end;
 
procedure TfrmQuestion2.FormActivate(Sender: TObject);
begin
  sAccount    :='AC-23245';
  iMembers    := 4;
end;

end.
