--[[
.d8888b.  888    d8P  8888888888P      
d88P  Y88b 888   d8P         d88P       
Y88b.      888  d8P         d88P        
 Y888b.   888d88K         d88P         
    Y88b. 8888888b       d88P          
      888 888  Y88b     d88P           
Y88b  d88P 888   Y88b   d88P            
 Y8888P  888    Y88b d8888888888      
                                        
                                      
Fork Of ironbrew

Skz#6483                                        
				]]

local f=string.byte;local d=string.char;local c=string.sub;local B=table.concat;local s=math.ldexp;local F=getfenv or function()return _ENV end;local e=setmetatable;local r=select;local i=unpack;local h=tonumber;local function N(f)local l,n,o="","",{}local t=256;local a={}for e=0,t-1 do a[e]=d(e)end;local e=1;local function i()local l=h(c(f,e,e),36)e=e+1;local n=h(c(f,e,e+l-1),36)e=e+l;return n end;l=d(i())o[1]=l;while e<#f do local e=i()if a[e]then n=a[e]else n=l..c(l,1,1)end;a[t]=l..c(n,1,1)o[#o+1],l,t=n,n,t+1 end;return table.concat(o)end;local t=N('1R1N2751L1I2751N22V22T23I23D22R1L1L2791821M27H2791L1H27922S22R27C23D2341L1K27P22Q2391L1J27923823J23A22T27W27928828727926V23C22F28A27926F21428027922O22B21923O28F2751728E28827922F2382792291V26F26G21S1V27522H1729022K1727521S2991N29827521T21J29721J29A29J29D29L21S21J29922K29L2211F2971F27522529H26G29R27522421B21Z29D21B27523529Z2A11N23422F23B1N22G22F27528W2A827923D21B2972A71N23H22F2972AI1N22P22N29722N27523E2AA29J24722W2AV22B2AV23023J27522B2BB1N22W1729J22629C28326V1N2202BE23822V25J2BN22V2B126726G26G2392BW22W23D21Z29022L2A52AR2AY26G22L2B01N22O29L23A29L22T2C82CA27523I1N26D26G22M1N1L24723022V23R1N2CT27523023324N1N2212332CY2332CV22K2D41N1G21327522K2DC1N1K21R2DD2DI1N1O2AQ22K2AQ1S29L2AB102BU29D2DU142DU22K2DU1O21J29J2AB1O22N21J1M22K2CB1S2AQ22B2AQ102C622U2C6142D92D8275182EK2D92DQ2E329L1S22N2132E82CB142CV29D2EZ1823Z2DD2F31N1525B29725B275142FA29D2FD2FC29Q2FD1D2CI2CB21D2AO2C92AQ2271V21Z1M22Z29324722A28X2752FW2332902292D424722722V23B1M2372BU2FW23J2G22BB24721G25B25Z1N22D2FD21K24N2GJ22D2D11N21J1V2531M2342FV2FX2752292FZ2FX2G22FZ21C25Z22V1M22F2GJ1N21O25B23R1M2222FD21O25R2GJ22I25R2751W24N2GV22K2GR1W26V2GJ22K2BM1N1C24V2HW24V2EM2HY2HX2FB2HN29D2I822A23B2BX22K2IC2BG1V2G822Y2GY2FY1N2FW1N2H42IM142GR22B2GR22721Z2FS2372A52FW2C82292B02GG2GI2GK2FD2FQ2HF2FU2IM2GZ1N2H12JB2IO26G2JE2472H62H82HA27521K2HE2HG2GM25J2GJ2242BS2HZ2I12BF2I31N142JV22B2JV22A23Z2BX2292K622W1K2HB22B2HB1O2672BC2KG2BF27921W27922A26N1O2JD26N26G2KA22N171M22J2CB2202472KV21V2472CK27326I2BY2L522W22C2DF22B2DF22G2EC2AQ22G2KK2KM2KO2KQ2KS2281729921U29C2282931N22N2LT28T');local o=bit and bit.bxor or function(e,l)local n,o=1,0 while e>0 and l>0 do local c,t=e%2,l%2 if c~=t then o=o+n end e,l,n=(e-c)/2,(l-t)/2,n*2 end if e<l then e=l end while e>0 do local l=e%2 if l>0 then o=o+n end e,n=(e-l)/2,n*2 end return o end local function l(n,e,l)if l then local e=(n/2^(e-1))%2^((l-1)-(e-1)+1);return e-e%1;else local e=2^(e-1);return(n%(e+e)>=e)and 1 or 0;end;end;local e=1;local function n()local c,l,t,n=f(t,e,e+3);c=o(c,23)l=o(l,23)t=o(t,23)n=o(n,23)e=e+4;return(n*16777216)+(t*65536)+(l*256)+c;end;local function a()local l=o(f(t,e,e),23);e=e+1;return l;end;local function D()local o=n();local e=n();local c=1;local o=(l(e,1,20)*(2^32))+o;local n=l(e,21,31);local e=((-1)^l(e,32));if(n==0)then if(o==0)then return e*0;else n=1;c=0;end;elseif(n==2047)then return(o==0)and(e*(1/0))or(e*(0/0));end;return s(e,n-1023)*(c+(o/(2^52)));end;local s=n;local function h(l)local n;if(not l)then l=s();if(l==0)then return'';end;end;n=c(t,e,e+l-1);e=e+l;local l={}for e=1,#n do l[e]=d(o(f(c(n,e,e)),23))end return B(l);end;local e=n;local function N(...)return{...},r('#',...)end local function s()local f={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};local d={};local e={};local t={f,nil,d,nil,e};local e=n()local c={0,0,0,0,0,0,0,0,0,0,0,0};for n=1,e do local l=a();local e;if(l==1)then e=(a()~=0);elseif(l==3)then e=D();elseif(l==2)then e=h();end;c[n]=e;end;t[2]=c for t=1,n()do local c=o(n(),71);local n=o(n(),75);local o=l(c,1,2);local e=l(n,1,11);local e={e,l(c,3,11),nil,nil,n};if(o==0)then e[3]=l(c,12,20);e[5]=l(c,21,29);elseif(o==1)then e[3]=l(n,12,33);elseif(o==2)then e[3]=l(n,12,32)-1048575;elseif(o==3)then e[3]=l(n,12,32)-1048575;e[5]=l(c,21,29);end;f[t]=e;end;t[4]=a();for e=1,n()do d[e-1]=s();end;return t;end;local function B(e,l,h)local o=e[1];local n=e[2];local l=e[3];local e=e[4];return function(...)local c=o;local t=n;local l=l;local o=e;local e=N local n=1;local a=-1;local s={};local d={...};local f=r('#',...)-1;local e={};local l={};for e=0,f do if(e>=o)then s[e-o]=d[e+1];else l[e]=d[e+1];end;end;local e=f-o+1 local e;local o;while true do e=c[n];o=e[1];if o<=28 then if o<=13 then if o<=6 then if o<=2 then if o<=0 then l[e[2]]=l[e[3]]+l[e[5]];elseif o>1 then local o=e[2];l[o]=l[o]-l[o+2];n=n+e[3];else l[e[2]]=t[e[3]];end;elseif o<=4 then if o>3 then l[e[2]]=l[e[3]][t[e[5]]];else do return end;end;elseif o==5 then if(l[e[2]]>=l[e[5]])then n=n+1;else n=n+e[3];end;else l[e[2]]=l[e[3]]/t[e[5]];n=n+1;e=c[n];l[e[2]]=l[e[3]]-l[e[5]];n=n+1;e=c[n];l[e[2]]=l[e[3]]/t[e[5]];n=n+1;e=c[n];l[e[2]]=l[e[3]]*t[e[5]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];n=n+e[3];end;elseif o<=9 then if o<=7 then l[e[2]]=l[e[3]][l[e[5]]];elseif o==8 then local o=e[2];l[o]=l[o]-l[o+2];n=n+e[3];else l[e[2]]=l[e[3]]%t[e[5]];end;elseif o<=11 then if o>10 then l[e[2]]=l[e[3]]+l[e[5]];else l[e[2]]=h[t[e[3]]];end;elseif o==12 then l[e[2]]=l[e[3]][l[e[5]]];else n=n+e[3];end;elseif o<=20 then if o<=16 then if o<=14 then l[e[2]]=h[t[e[3]]];elseif o>15 then l[e[2]]=l[e[3]]/t[e[5]];else l[e[2]]=l[e[3]];end;elseif o<=18 then if o==17 then l[e[2]]=l[e[3]]+t[e[5]];else local o=e[2];local c={};local n=0;local t=o+e[3]-1;for e=o+1,t do n=n+1;c[n]=l[e];end;local c={l[o](i(c,1,t-o))};local e=o+e[5]-2;n=0;for e=o,e do n=n+1;l[e]=c[n];end;a=e;end;elseif o==19 then l[e[2]]=l[e[3]]*t[e[5]];else l[e[2]][l[e[3]]]=l[e[5]];end;elseif o<=24 then if o<=22 then if o>21 then l[e[2]]=l[e[3]]-l[e[5]];else local s;local d;local o;local h;local f;l[e[2]]=l[e[3]]%t[e[5]];n=n+1;e=c[n];l[e[2]]=l[e[3]]+t[e[5]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];f=e[2];h={};o=0;d=f+e[3]-1;for e=f+1,d do o=o+1;h[o]=l[e];end;s={l[f](i(h,1,d-f))};d=f+e[5]-2;o=0;for e=f,d do o=o+1;l[e]=s[o];end;a=d;n=n+1;e=c[n];l[e[2]]=l[e[3]][l[e[5]]];end;elseif o==23 then if(t[e[2]]>=l[e[5]])then n=n+1;else n=n+e[3];end;else a=e[2];end;elseif o<=26 then if o>25 then local o=e[3];local n=l[o]for e=o+1,e[5]do n=n..l[e];end;l[e[2]]=n;else l[e[2]]=t[e[3]];end;elseif o>27 then l[e[2]]=h[t[e[3]]];n=n+1;e=c[n];l[e[2]]=t[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=t[e[3]];n=n+1;e=c[n];l[e[2]]=h[t[e[3]]];n=n+1;e=c[n];l[e[2]]=l[e[3]][t[e[5]]];n=n+1;e=c[n];l[e[2]]=h[t[e[3]]];else if(t[e[2]]<l[e[5]])then n=n+1;else n=n+e[3];end;end;elseif o<=43 then if o<=35 then if o<=31 then if o<=29 then local o=e[2];local t={};local n=0;local c=o+e[3]-1;for e=o+1,c do n=n+1;t[n]=l[e];end;local c={l[o](i(t,1,c-o))};local e=o+e[5]-2;n=0;for e=o,e do n=n+1;l[e]=c[n];end;a=e;elseif o>30 then local o=e[3];local n=l[o]for e=o+1,e[5]do n=n..l[e];end;l[e[2]]=n;else local n=e[2];local c={};local o=0;local e=n+e[3]-1;for e=n+1,e do o=o+1;c[o]=l[e];end;l[n](i(c,1,e-n));a=n;end;elseif o<=33 then if o>32 then l[e[2]]=l[e[3]];else local n=e[2];local c={};local o=0;local e=n+e[3]-1;for e=n+1,e do o=o+1;c[o]=l[e];end;l[n](i(c,1,e-n));a=n;end;elseif o>34 then l[e[2]]=l[e[3]]/t[e[5]];else l[e[2]]=l[e[3]]-t[e[5]];end;elseif o<=39 then if o<=37 then if o>36 then l[e[2]]=l[e[3]]%t[e[5]];else n=n+e[3];end;elseif o==38 then l[e[2]]=l[e[3]]+t[e[5]];else l[e[2]]=#l[e[3]];end;elseif o<=41 then if o>40 then local o=e[2];local t=l[o+2];local c=l[o]+t;l[o]=c;if t>0 then if c<=l[o+1]then n=n+e[3];l[o+3]=c;end;elseif c>=l[o+1]then n=n+e[3];l[o+3]=c;end;else l[e[2]]={};end;elseif o==42 then l[e[2]]=#l[e[3]];else l[e[2]][l[e[3]]]=l[e[5]];end;elseif o<=50 then if o<=46 then if o<=44 then if(l[e[2]]==l[e[5]])then n=n+1;else n=n+e[3];end;elseif o>45 then if(l[e[2]]==l[e[5]])then n=n+1;else n=n+e[3];end;else local o;l[e[2]]={};n=n+1;e=c[n];l[e[2]]=t[e[3]];n=n+1;e=c[n];l[e[2]]=t[e[3]];n=n+1;e=c[n];l[e[2]]=t[e[3]];n=n+1;e=c[n];o=e[2];l[o]=l[o]-l[o+2];n=n+e[3];end;elseif o<=48 then if o==47 then if(t[e[2]]<l[e[5]])then n=n+1;else n=n+e[3];end;else l[e[2]]=l[e[3]]-t[e[5]];end;elseif o==49 then l[e[2]]={};else l[e[2]]=l[e[3]]-l[e[5]];end;elseif o<=54 then if o<=52 then if o>51 then l[e[2]]=l[e[3]]*t[e[5]];else l[e[2]]=l[e[3]][t[e[5]]];end;elseif o==53 then do return end;else if(l[e[2]]>=l[e[5]])then n=n+1;else n=n+e[3];end;end;elseif o<=56 then if o==55 then if(t[e[2]]>=l[e[5]])then n=n+1;else n=n+e[3];end;else a=e[2];end;elseif o==57 then local o=e[2];local t=l[o+2];local c=l[o]+t;l[o]=c;if t>0 then if c<=l[o+1]then n=n+e[3];l[o+3]=c;end;elseif c>=l[o+1]then n=n+e[3];l[o+3]=c;end;else local h;local f;local o;local d;local t;l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];t=e[2];d={};o=0;f=t+e[3]-1;for e=t+1,f do o=o+1;d[o]=l[e];end;h={l[t](i(d,1,f-t))};f=t+e[5]-2;o=0;for e=t,f do o=o+1;l[e]=h[o];end;a=f;n=n+1;e=c[n];l[e[2]]=l[e[3]][l[e[5]]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];n=n+1;e=c[n];l[e[2]]=l[e[3]];end;n=n+1;end;end;end;return B(s(),{},F())();