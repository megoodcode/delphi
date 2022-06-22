unit uHousehold;

interface
uses SysUtils;
   type
       arrType = array[1..7] of integer;
       THousehold = class (TObject)
         private
            fAccount  :string;
            fMembers  :integer;
            fArrayUse :arrType;
         public
          constructor create(aAccount : string; aMembers :integer;arrWaterUse : arrType );
          function determineHighRisk(dayLimit:real):boolean;
          function toString:string;

        end;

implementation

constructor THousehold.create(aAccount : string; aMembers:integer; arrWaterUse:arrType);
begin

end;


function  THousehold.determineHighRisk(dayLimit:real):boolean;
begin

	result := false;

end;

function THousehold.toString:string;
var
   sObjStr:  string;
begin
   sObjStr := 'Account number: ' + fAccount + 'Number of members: ' + IntToStr(fMembers);

   result :=  sObjStr;
end;


end.

