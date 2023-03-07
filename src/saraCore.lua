local C={_VERSION="0.1.4",_AUTHOR="junssekut#4964";_CONTRIBUTORS={}}local X={}local F={}local A={}local c={}local K={}local w={}local u={}local e={}local P={}local J={}local p={}local Y={VALUE_MISMATCH="[%s] got: %s",TYPE_MISMATCH="[%s] got: %s, expected: %s"}local B={JOIN_WORLD="action|join_request\nname|%s\ninvitedWorld|0",DROP_DIALOG="action|drop\n|itemID|%d",DROP_OK="action|dialog_return\ndialog_name|drop_item\nitemID|%d|\ncount|%d";EXIT="action|quit_to_exit";TUTORIAL_POPUP_CLOSE="ftue_start_popup_close"}local b={SELECT_ALL="Select All",GUEST_ACCOUNT="Guest Account",EXTERNAL="External";AUTO_ACCESS="Auto Access",AUTO_RECONNECT="Auto Reconnect",AUTO_LEAVE="Auto Leave";IGNORE_GEMS="Ignore Gems"}local W=_G.getBot local r=_G.getTile local I=_G.sendPacket local o=_G.sendPacketRaw local H=_G.sleep local f=_G.connect local x=_G.request local G=_G.setBool local l=_G.removeBot local Z=_G.addBot local L=_G.findItem local s=_G.getPing local R=_G.findPath local N=_G.getPlayers local j=_G.enter local y=_G.punch local m=_G.place local O=_G.collect local z=_G.wear local q=_G.findClothes local h=_G.say local v=string.format local S=math.floor local i=math.abs local M=os.date local T=os.time local k=assert((load(x("GET","https://raw.githubusercontent.com/junssekut/saraItemDatabase/main/ItemDatabase.lua")))())local d=assert((load(x("GET","https://raw.githubusercontent.com/rxi/json.lua/master/json.lua")))())local U=assert((load(x("GET","https://raw.githubusercontent.com/Tieske/date/master/src/date.lua")))())local function a(C,X)if not C then error(X or"Assertion Failed!")end return C end local function g(C,X,F)return a(type(X)==F,Y.TYPE_MISMATCH:format(C,type(X),F))end function F.exit()I(3,B.EXIT)while not F.isInside("exit")do H(1000)end end function F.warp(C,K,w,u,e)K=K or""w=w or 10 u=u or 6 e=e or 2500 g("worldhandler:warp<world>",C,"string")g("worldhandler:warp<id>",K,"string")g("worldhandler:warp<limit_tries>",w,"number")g("worldhandler:warp<after_tries>",u,"number")C=C:upper()local P=0 local J=5 while not F.isInside(C)do if not A.isOnline()then X.reconnect()end if P~=0 and P%(u*w)==0 then return false end if P%u==0 then I(3,B.JOIN_WORLD:format(K==""and C or C..("|"..K)))end P=P+1 local c=0 while c~=J do c=c+1 H(1000)if F.isInside(C)then break end end end if C=="EXIT"or K==""then return F.isInside(C)end P=0 while c.isWhiteDoor()do if not A.isOnline()then X.reconnect()end if P~=0 and P%(u*w)==0 then return false end if P%u==0 then I(3,B.JOIN_WORLD:format(C..("|"..K)))end P=P+1 local F=0 while F~=J do F=F+1 H(1000)if not c.isWhiteDoor()then break end end end H((J*.5)*1000)return F.isInside(C)end function F.getWorld()if not W()then return"unknown"end return(W()).world or"unknown"end function F.isInside(C)a(type(C)=="string",Y.VALUE_MISMATCH:format("worldhandler:isinside<world>",type(C)))return F.getWorld()==C end function c.isWhiteDoor()if not W()then return false end local C=r(S((W()).x*.03125),S((W()).y*.03125))return(C and C.fg or nil)==6 end function A.getStatus(C)if not W(C or nil)then return"offline"end return(W(C or nil)).status or"offline"end function A.isOnline(C,X)return(X or A.getStatus(C or nil))=="online"end function c.getx()if not W()then return nil end return S(((W()).x or 0)*.03125)end function c.gety()if not W()then return nil end return S(((W()).y or 0)*.03125)end function c.get()if not W()then return nil end return c.getx(),c.gety()end function X.reconnect(C,X,c)C=C or 8 X=X or 5 c=c~=nil and c or false local K=0 local w=c and 1 or 6 local u=c and 7 or 5 H(math.random(0,u)*1000)while not A.isOnline()do local c=A.getStatus()if c=="suspended"then error("Suspended",0)end if c=="maintenance"then error("Maintenance",0)end if c=="version update"then error("Version Update",0)end if c=="temporary ban"then error("Temporary Ban",0)end if c=="onsendtoserver"then F.warp("EXIT")end if c=="aap detected"then error("AAP Detected",0)end if c=="invalid email"then error("Invalid Email",0)end if c=="guest error"then error("Guest Error",0)end if A.isOnline()then break end if K~=0 and K%(w*C)==0 then local C=0 local F=X*60 while C~=F do C=C+1 H(1000)if A.isOnline()then break end end if A.isOnline()then break end end if K%w==0 then f()end K=K+1 local e=0 while e~=u do e=e+1 H(1000)if A.isOnline()then break end end end end function X.login(C,F,A,c)F=F~=nil and F or false A=A or 10000 c=c~=nil and c or false g("auth:login<credential>",C,"table")g("auth:login<remove>",F,"boolean")g("auth:login<delay>",A,"number")g("auth:login<force>",c,"boolean")local K,w local u=0 local e=2 local P=10 local J=1 if F and W()then K=(W()).name while W(K)do if u>P then break end if u%e==0 then l(K)end u=u+1 H(J*1000)end end u=0 K=C.name w=C.password if K==""and w==""then K=W()and(W()).name end if not W(K)then if w==""then G(b.GUEST_ACCOUNT,true)end if C.proxy then Z(K,w,C.proxy)else Z(K,w)end G(b.GUEST_ACCOUNT,false)else f()end G(b.AUTO_RECONNECT,false)G(b.AUTO_LEAVE,false)if not c then X.reconnect(8,5,true)end H(A)end function K.format(C)g("numberutils:format<number>",C,"number")if C>=1000000 then return v("%.2fm",C*1e-006)elseif C>=1000 then return v("%.2fk",C*.001)end return tostring(C)end function K.nformat(C)g("numberutils:nformat<number>",C,"number")local X,F=v("%0.f",C)while F~=0 do X,F=X:gsub("^(%-?%d+)(%d%d%d)","%1.%2")end return X end function w.nowIso()local C=M("!*t",T())local X=v("%d-%02d-%02dT%02d:%02d:%02dZ",C.year,C.month,C.day,C.hour,C.min,C.sec)return X end function u.contains(C,X)g("tableutils:contains",C,"table")if type(X)=="string"then X=X:upper()end for F=1,#C,1 do local A=C[F]if type(A)=="string"then A=A:upper()end if A==X then return true end end return false end function P.collect(C,X,F)if i((W()).x-X)>96 or i((W()).y-F)>96 then return false end o({type=11,int_data=C;pos_x=X,pos_y=F})return true end function J.drop(C,X)g("inventoryhandler:drop<item_id>",C,"number")X=X or L(C)if X==0 then return end g("inventoryhandler:drop<item_count>",X,"number")o({type=0,flags=48,pos_x=(W()).x,pos_y=(W()).y})I(2,B.DROP_DIALOG:format(C))H(250)I(2,B.DROP_OK:format(C,X))H(1250)end function e.random(C,X,F,A,c)C=C or 1 X=X or 1 F=F~=nil and F or false A=A~=nil and A or false c=c~=nil and c or false if not e.charset then local C=table.insert local X={}if F then for F=48,57,1 do C(X,string.char(F))end end for F=65,90,1 do C(X,string.char(F))end for F=97,122,1 do C(X,string.char(F))end e.charset=X end local K=""for C=1,C,1 do math.randomseed(((T()*X)*C)*(s()or 1))K=K..e.charset[math.random(1,#e.charset)]end if A then return K:upper()end if c then return K:lower()end return K end function p.sfindPath(C,X)g("botutils:sfindpath<x>",C,"number")g("botutils:sfindpath<x>",X,"number")local F=0 local A=10 local c=R(C,X)while not c do if F>A then break end c=R(C,X)if c then break end H(100)F=F+1 end return c end function p.getGuest()if not W()then return nil end local C=N()for X=0,#C,1 do local F=C[X]if F.name:match("_")then if(F.name:match("(.+)_%d+")):upper()==(W()).name:upper()then return F.name end end end return nil end function p.skipTutorial()local C=p.getGuest()if not C then C=e.random(13)end if C:match("_")then C=C:gsub("_","")end if not(F.getWorld()):match(".+_1_.+")then return nil end I(2,B.TUTORIAL_POPUP_CLOSE)H(200)while not p.sfindPath(86,30)do H(1000)end j()while not(F.getWorld()):match(".+_2_.+")do H(1000)end while not p.sfindPath(46,23)do H(1000)end while(r(47,23)).fg~=0 do y(1,0)H(200)end while(r(47,23)).fg==0 do m(2,1,0)H(200)end while(r(47,23)).fg~=0 do y(1,0)H(200)end while L(3)==0 do O(3)H(250)end while(r(47,23)).fg~=0 do y(1,0)H(200)end while(r(47,23)).fg==0 do m(3,1,0)H(750)end while L(10672)==0 do H(500)end while L(10672)~=0 do m(10672,1,0)H(750)end while(r(47,23)).fg==3 do y(1,0)H(200)end while L(48)==0 do O(3)H(250)end while not q(48)do z(48)H(1000)end I(3,B.EXIT)while not F.isInside("EXIT")do H(1000)end local X=0 while not F.warp(C)do H(1000)C=C..X end while L(9640)==0 do H(200)end while L(9640)~=0 do m(9640,0,-1)H(200)end for C=0,2,1 do h(e.random(1))H(1500)end end C.Auth=X C.WorldHandler=F C.StatusHandler=A C.PacketHandler=P C.InventoryHandler=J C.TileHandler=c C.NumberUtils=K C.DateUtils=w C.TableUtils=u C.StringUtils=e C.BotUtils=p C.ItemDatabase=k C.Json=d C.Date=U C.AssertUtils={assertv=a,tassertv=g}return C