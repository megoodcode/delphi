unit uQuest2;
 {*** Add your examination number here ***}
interface

TYPE
   TQuest2 = class(TObject)
     private
       fAType    : String;
       fNumber   : Integer;
       fSize     : Real;
       fCat      : Char;

     public
       procedure setAType(sAType : String);
       procedure setNumber(iNumber : Integer);
       procedure setSize(rSize : Real);
       procedure setCat(cCat : Char);
       function getAType:String;
       function getNumber:integer;
       function getSize:real;
       function getCat:Char;
       
   end;

implementation

uses SysUtils;

{ TQuest2 }

procedure TQuest2.setAType(sAType: String);
begin
   fAType := sAType;
end;

procedure TQuest2.setSize(rSize: Real);
begin
   fSize := rSize;
end;

procedure TQuest2.setCat(cCat: Char);
begin
   fCat := cCat;
end;

procedure TQuest2.setNumber(iNumber: Integer);
begin
   fNumber := iNumber;
end;

function TQuest2.getAType:String;
begin
   Result := fAType;
end;

function TQuest2.getNumber:integer;
begin
   Result := fNumber;
end;

function TQuest2.getSize:real;
begin
   Result := fSize;
end;

function TQuest2.getCat:Char;
begin
   Result := fCat;
end;


end.
