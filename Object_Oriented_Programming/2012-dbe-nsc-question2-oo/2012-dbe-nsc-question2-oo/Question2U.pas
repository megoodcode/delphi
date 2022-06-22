unit Question2U;
  {*** Add your examination number here ***}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus,
  uQuest2;   

type
  TfrmQ2 = class(TForm)
    mnuMain: TMainMenu;
    mnuOptionA: TMenuItem;
    mnuQuit: TMenuItem;
    redQ2: TRichEdit;
    mnuOptionB: TMenuItem;
    procedure mnuQuitClick(Sender: TObject);
    procedure mnuOptionAClick(Sender: TObject);
    procedure mnuOptionBClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQ2: TfrmQ2;

implementation

{$R *.dfm}
{$R+}

procedure TfrmQ2.FormCreate(Sender: TObject);
begin
  //
end;

procedure TfrmQ2.mnuOptionAClick(Sender: TObject);
begin
 //menu Option A
end;

procedure TfrmQ2.mnuOptionBClick(Sender: TObject);
begin
 //menu Option B 
end;

procedure TfrmQ2.mnuQuitClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
