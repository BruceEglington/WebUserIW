unit usr_cookies;

interface

uses classes,
  IW.HTTP.Cookie,
  IW.Common.Lists,
  iwinit,sysutils;

function GetCookieValue(sName: String): String;

//CookieValues array of Name=Value
//ExpireIn - Howmany days, expressed in seconds
procedure SetCookie(CookieName,CookieValue:String; ExpireIn: double);//expirein=0 -> session cookie

implementation

function GetUTCDateTime: TDateTime;
var
  GMTST: TDateTime;
begin
  //windows.GetSystemTime(GMTST);
  //result:=Sysutils.SystemTimeToDateTime(GMTST);
  result := Now;
end;

function GetCookieValue(sName: String): String;
begin
  Result := Webapplication.Request.CookieFields.Values[sName];
end;

procedure SetCookie(CookieName,CookieValue:String; ExpireIn: double);//expirein=0 -> delete when browser closes
var
  CookieList : TStrings;
  ExpireOn : double;
begin
  if ExpireIn <> 0 then
    ExpireOn := GetUTCDateTime + ExpireIn
  else
    ExpireOn:=-1; // session cookie
  Webapplication.Response.Cookies.Add(THTTPCookie.Create(CookieName,CookieValue,'/',Expireon));
end;

end.
