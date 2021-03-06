unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ComCtrls, DBCtrls;

type
  TTeams = class(TObject)
    private
      sTeamName : string;
      sCoach : string;
      iNumberOfGamesPlayed : integer;
      iNumberOfGamesWon : integer;
    public
      constructor create(teamname:string;coach:string;gamesplayed:integer;gameswon:integer);
      function tostring: string;
      function getNumberOfGamesPlayed : integer;
      function getNUmberOfGamesWon : integer;
      function getTeamsName : string;
      function getCoach : string;
  end;

  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    Button1: TButton;
    RichEdit1: TRichEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  arrTeams : array[1..50] of TTeams;
  iCount : integer; // keep track of the items in our array

implementation

constructor TTeams.create(teamname: string; coach: string; gamesplayed: Integer; gameswon: Integer);
begin
  sTeamName := teamname;
  sCoach := coach;
  iNumberOfGamesPlayed := gamesplayed;
  iNumberOfGamesWon := gameswon;
end;

function TTeams.tostring;
begin
  Result := sTeamName + #9 + sCoach + #9 + inttostr(iNumberOfGamesPlayed) + #9 + inttostr(iNumberOfGamesWon);
end;

function TTeams.getCoach;
begin
  Result := sCoach;
end;

function TTeams.getTeamsName;
begin
  Result := sTeamName;
end;

function TTeams.getNUmberOfGamesWon;
begin
  Result := iNumberOfGamesWon;
end;

function TTeams.getNumberOfGamesPlayed;
begin
  Result := iNumberOfGamesPlayed;
end;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 var sTeamName,sCoach : string;
     iGamesWon,iGamesPlayed,i: integer;
begin
    ADOtable1.First; // point to the first record in tbltTeams
    iCount := 0;
    while not ADOtable1.Eof do  // while not tblTeams of EndOfFile
    begin
      inc(iCount);
      sTeamName := ADOtable1['TeamName'];
      sCoach := ADOtable1['Coach'];
      iGamesWon := ADOtable1['NumberOfGamesWon'];
      iGamesPlayed := ADOtable1['NumberOfGamesPlayed'];

      arrTeams[iCount] := TTeams.create(sTeamName,sCoach,iGamesPlayed,iGamesWon);
      ADOtable1.Next; // point to the next entry in tblTeams
    end;

    // Print all the data from the array
    RichEdit1.Clear;
    RichEdit1.Paragraph.TabCount := 5;

    RichEdit1.Paragraph.Tab[0] := 100;
    RichEdit1.Paragraph.Tab[1] := 200;
    RichEdit1.Paragraph.Tab[2] := 300;
    RichEdit1.Paragraph.Tab[3] := 400;

    for i := 1 to iCount do
      begin
        RichEdit1.Lines.Add(arrTeams[i].tostring);
      end;


end;

end.
