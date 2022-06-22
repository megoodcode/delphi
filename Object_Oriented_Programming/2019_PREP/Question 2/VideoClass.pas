unit VideoClass;

interface
uses sysutils, dialogs, math;

type
TVideo = class
  private
  fvideoname : string;
  fcomments : string;
  flikes : integer;
  fdislikes : integer;
  frating : integer;
 public
 ///Enter your code here//


//Provided code // Do NOT change or delete//
    procedure addLike;
    procedure addDislike;
    function tostring : string;
end;

implementation

{ TVideo }




//Provided code // Do NOT change or delete//
procedure tvideo.addDislike;
begin
inc(fdislikes);
end;

//Provided code // Do NOT change or delete//
procedure tvideo.addLike;
begin
inc(flikes);
end;

//Provided code // Do NOT change or delete//
function tvideo.tostring: string;
begin
  result := fvideoname+ #13 + fcomments;
end;


end.
