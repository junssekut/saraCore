local p,N do local O=math.floor local m=math.random local o=table.remove local d=string.char local K=0 local k=2 local R={}local n={}local s=0 local c={}for p=1,256,1 do c[p]=p end repeat local p=m(1,#c)local N=o(c,p)n[N]=d(N-1)until#c==0 local x={}local function y()if#x==0 then K=(K*209+23691762619951)%35184372088832 repeat k=(k*33)%257 until k~=1 local p=k%32 local N=(O(K/2^(13-(k-p)/32))%4294967296)/2^p local m=O((N%1)*4294967296)+O(N)local o=m%65536 local d=(m-o)/65536 local R=o%256 local n=(o-R)/256 local s=d%256 local c=(d-s)/256 x={R,n;s,c}end return table.remove(x)end local w={}N=setmetatable({},{__index=w,__metatable=nil})function p(N,O)local m=w if m[O]then else x={}local p=n K=O%35184372088832 k=O%255+2 local o=string.len(N)m[O]=""local d=103 for o=1,o,1 do d=((string.byte(N,o)+y())+d)%256 m[O]=m[O]..p[d+1]end end return O end end return(function(...)local O={[N[p(",:\t\174\019]\015\167",9682225505081)]]=N[p("\184\249{z\028",25491408837820)],[N[p("W\003\212\016\134Y$",32758715283244)]]=N[p("\158\151\aKXa\178\1849\139\r\255R\028",32679255963362)],[N[p("\181\168\155a\219 \160Z\131\178\242\016*",26075542216412)]]={}}local m={}local o={}local d={}local K={}local k={[N[p("M\142\202\219\253\167\b\023*\237Rez[",14586154071312)]]=N[p("\246\212\207\254\023\012\178?\190Z3\255",34565877923263)];[N[p("\238\147y\017\030\191x\172\227\230\234l\219",9003599962305)]]=N[p("3\142\236r;L\255p\155\183\189\165\190\163n\226\239G\150\209d\215lX<\230",27417760457662)]}local R={[N[p("?\230\232\246\rR\240\221\n\a",30013073648943)]]=N[p("\029\241W\213\"\019\028uUt\226GQ\220\190\173\136\184{\156g\207\159\140\002\197\231\139\1672\021p\'\219\250$\129$(\023\172\005",6138769348181)]}local n=_G[N[p("\028\160\027\017\215\230",23198900081765)]]local s=_G[N[p("\167\252^\031\\\152\a",4358451072987)]]local c=_G[N[p("\140\225\t\238\185?a\227\153\229",23626262369779)]]local x=_G[N[p(" \146\1312\236",21422876904943)]]local y=_G[N[p("\229\230\208m\136CZ",12129357802528)]]local w=_G[N[p("M2\175\130\201>m",4489451573333)]]local u=math[N[p("?\228\131\188\235",14238251103180)]]local E=assert((load(w(N[p("\204E\006",14245767525331)],N[p("\181\250h\215i?\'\239_\002W\r\249]\194\208\167_\223\202/\227\191\239Z4gf\203\150\210(\248\225\144b\vi\223\166\"f\2268\003\134\232\196\185\155Y\2457\194\1457\217Q\163\145\144\223\238E5\229h\248E\227\182^v\222Nigrl\201\203\a",10011874305132)])))())local function a(O,m)if not O then error(m or N[p("\184\202\188\190\244\128\233\"[\026+v\181`\t\199\160",13405002019012)])end return O end local function A(O,m,o)return a(type(m)==o,k[N[p("!\128^\239\227v\142v\019\163\141N+",8999304863933)]]:format(O,type(m),o))end function m.warp(O,k,n,s,y)k=k or N[p("",18555898741633)]n=n or 10 s=s or 6 y=y or 2500 A(N[p("\218:h\155\170\019\\.dnl\141\142\029\222R\146{\140\015\128n\160R",12672687746586)],O,N[p("wZ\211\168\006~",14515284948174)])A(N[p("\253z\250>\213\204\181K\255|\021\238\127\171\b)1\157\179\236\155",21895337725863)],k,N[p("\245\t\243\arf",11796487678698)])A(N[p("\017\128\005\t\222b\132\2021\232\187M*\236\138;1@-\187\193\215\230\131N\138\158\186\129\145",12004799949740)],n,N[p("\255\254t\226\141\190",30779748708345)])A(N[p("+\188\017\129\171\168\223V\180$`\202\029U9\a\194G\230t\219\1284\169)%\224\af\183",5714628383946)],s,N[p("W\142\152\003\236\172",17830027116765)])O=O:upper()local w=0 local u=5 while not m[N[p("o\017\176)s\170V\027",25838238031359)]](O)do if not o[N[p("\140\216!\006H9\164o",4325164060604)]]()then K[N[p("\248\141\216YqA\2221\023",24062214854537)]]()end if w~=0 and w%(s*n)==0 then return false end if w%s==0 then c(3,R[N[p("\139\a>\134\179%\t\148C\220",17526148906946)]]:format(k==N[p("",1147865039917)]and O or O..(N[p("\235",20852702596060)]..k)))end w=w+1 local d=0 while d~=u do d=d+1 x(1000)if m[N[p("a\165\150s\205\240\139\246",22382831391085)]](O)then break end end end if O==N[p("\212\021\236\143",6745451993226)]or k==N[p("",13934372893361)]then return m[N[p(";+G6\164\189\153\145",31051413680374)]](O)end w=0 while d[N[p("\204\188xu\139\193\005z\139\185\a",17159991770733)]]()do if not o[N[p("@c{\209\190X`\172",31309119582694)]]()then K[N[p("\017\144\nKB\004\021\197\245",10389842961868)]]()end if w~=0 and w%(s*n)==0 then return false end if w%s==0 then c(3,R[N[p("\200\014\195\023z\157\212VU\163",33354660182359)]]:format(O..(N[p("\162",27055898419821)]..k)))end w=w+1 local m=0 while m~=u do m=m+1 x(1000)if not d[N[p("=\255\130\251l N\n R\243",10917066287031)]]()then break end end end x((u*.5)*1000)return m[N[p("3K?Fl\t\200+",5265790604072)]](O)end function m.getWorld()if not n()then return N[p("H\220q\201\212\141E",11016927324180)]end return(n())[N[p("\248\220\215\236\192",2203385464836)]]or N[p("b\023$>\185?e",26051919175366)]end function m.isInside(O)a(type(O)==N[p("\212\181\162\209\134\128",17244819963580)],k[N[p("\220e\228\253r?\161F\021\a\236\159\251@",24834258786904)]]:format(N[p("\195\133]\019V\0025\0124C\223\029s\228\127t\240\219\220\192\255t&\225@\006\238_",25429129911426)],type(O)))return m[N[p("\022M\026\128\194\001O\245",195426975926)]]()==O end function d.isWhiteDoor()if not n()then return false end local O=s(u((n())[N[p("#",23896853567215)]]*.03125),u((n())[N[p("\b",816068690680)]]*.03125))return(O and O[N[p("o\234",21219933506866)]]or nil)==6 end function o.getStatus(O)if not n(O or nil)then return N[p("R\128\148\027: \150",14353144984631)]end return(n(O or nil))[N[p("\241p`H]\183",25289539214336)]]or N[p("\217\213j\193\165\133G",1182225826893)]end function o.isOnline(O,m)return(m or o[N[p("\187\173m<\169\014rC&",20302930004444)]](O or nil))==N[p("\131\176\244_\127p",10303940994428)]end function d.getx()if not n()then return nil end return u(((n())[N[p("\189",6224671315621)]]or 0)*.03125)end function d.gety()if not n()then return nil end return u(((n())[N[p("j",25360408337474)]]or 0)*.03125)end function d.get()if not n()then return nil end return d[N[p("\150\197[\145",4550656725134)]](),d[N[p("\152\020>0",13999873143534)]]()end function K.reconnect(O,d,K)O=O or 8 d=d or 5 K=K~=nil and K or false local k=0 local R=K and 1 or 6 local n=K and 7 or 5 x(math[N[p("\254\141s1\149\222",26923824144882)]](0,n)*1000)while not o[N[p("9\185J\127\194\201\170\189",23824910669484)]]()do local K=o[N[p("\031]L\159\246S\223T\134",28205911008924)]]()if K==N[p("D\017z\133\255p_\207;",22577184592418)]then error(N[p("\213\208\208X%\246\142\235\133",21025580305533)],0)end if K==N[p("\164\172Dt.(va\023\135\199",15902601722330)]then error(N[p("\134pG\243r\190\183\141}\246\231",27185825145574)],0)end if K==N[p("\132~\247\t\153\001\203\168ixl}\215c",17876199424264)]then error(N[p("\142\024]\018\250\157@~%\218\181\240o0",23296613569728)],0)end if K==N[p("\201\238\230\253o\241\167\b\159\018C\180p",9188289192301)]then error(N[p("\166\161z%\165\229<\203a\138=3y",12465449250137)],0)end if K==N[p("\221\251\240jR\205ufU\133\167Z\019j",24024632743782)]then m[N[p("c\243\182\015",18896285287614)]](N[p("\211Ck\234",33924834491242)])end if K==N[p("t\185\195\"kC\1619\214\149E\155",24113756035001)]then error(N[p("\204J\136cr\v\182\230\021/;\184",3441447570565)],0)end if K==N[p("[m\169\187\133\228%\137\151[\135\177Z",31038528385258)]then error(N[p("\b\016\155\225\203\025\137J6\025\248|K",25167128910734)],0)end if K==N[p("\026G#\127 )\135L\254_\230",14187783697309)]then error(N[p("\182+[\a!\137\181\231%\218h",1420603786539)],0)end if o[N[p("\200\178?\238YI\186\175",25912328478276)]]()then break end if k~=0 and k%(R*O)==0 then local O=0 local m=d*60 while O~=m do O=O+1 x(1000)if o[N[p("g\157\207iH\022\162)",6839944157410)]]()then break end end if o[N[p("\174\2512\023J\158k\175",20267495442875)]]()then break end end if k%R==0 then y()end k=k+1 local s=0 while s~=n do s=s+1 x(1000)if o[N[p("QSy\228vL\245?",16982818962888)]]()then break end end end end O[N[p("\172Ya\155\145\168e\148\195kh=",5434373215173)]]=m O[N[p("\163aZ\147\155\178z\241rS\209\238",29016610826639)]]=o O[N[p("\150IT\147\208Vf\169\233hk",23748672673381)]]=d O[N[p("r\244\203\212",10157907649780)]]=K O[N[p("%\183\019\031?\251G\219\030\015-\249",7418708663037)]]=E return O end)(...)