unit clasenum;

interface
uses sysutils;
const prim=[1,3,5,7];
type
  Numeros = class
  private
    numvec:array[1..200] of cardinal;
    num:cardinal;
    dig:Integer;
    x:Integer;
  public
    procedure registrar(n:Cardinal);
    function mostrarnum:String;
    procedure convectnum;
    function contdig(n:Integer):Integer;
    function potencia(x:Cardinal;n:Integer):Cardinal;
    procedure elmnnumrep(n:Integer);
    procedure elmdig(n:Integer);
    function mendig:Integer;
    function posmendig:Integer;

    procedure ordnummenor;
    procedure elmmaydigprim;
    function maydigprim(n:Integer):Integer;
    function contnumrep(n:Integer):Integer;
    function orddigimp(n:Cardinal):Cardinal;
    function orddigpar(n:Cardinal):Cardinal;
    procedure ordparimprmit;

  end;

implementation

{ Numeros }

function Numeros.contdig(n: Integer): Integer;
var y:Integer;
begin
  y:=0;
  while n>0 do
  begin
    y:=y+1;
    n:=n div 10;
  end;
  result:=y;
end;


function Numeros.contnumrep(n: Integer): Integer;
var
  I,y: Integer;
begin
  y:=0;
  for I := 1 to dig do
  begin
    if (numvec[I] and numvec[I+1])=n then
      y:=y+1;
  end;
  result:=y;
end;

procedure Numeros.convectnum;
var y,aux:Cardinal;
  I: Integer;
begin
  y:=num;
  for I:=dig downto 1 do
  begin
    aux:=y mod 10;
    numvec[I]:=aux;
    y:=y div 10;
  end;

end;

procedure Numeros.elmdig(n: Integer);
var I: Integer;
begin
  if n<=dig then
  begin
  for I := n to dig do
    numvec[I]:=numvec[I+1];
  end
  else raise Exception.Create('Posicion no existente');
  dig:=dig-1;
end;

procedure Numeros.elmmaydigprim;
var x,aux,nmayprim,I,pot:Integer;
begin
  nmayprim:=maydigprim(num); pot:=1; x:=1;
  for I := 1 to dig do
  begin
    aux:=num mod 10;
    if aux<>nmayprim then
    begin
      x:=aux*pot+x;
      pot:=pot*10;
    end;
    num:=num div 10;
  end;
  registrar(x);
end;

procedure Numeros.elmnnumrep(n: Integer);
var
  I,p,rep: Integer;
  nvnum:Cardinal;
begin
  nvnum:=0; rep:=contnumrep(n)-1; p:=0; I:=0;
  while (dig>I)and(p<rep) do
  begin
    I:=I+1;
    if ((numvec[I]) and (numvec[I+1]))<>n then
    begin
      nvnum:=nvnum+numvec[I];
    end
    else
    begin
      p:=p+1;
    end;
  end;
  registrar(nvnum);
end;

function Numeros.maydigprim(n: Integer): Integer;
var x,aux,nmay:Integer;
begin
  x:=n; aux:=0; nmay:=0;
  while x>0 do
  begin
    aux:=x mod 10;
    if (aux in prim) and (aux>nmay) then
      nmay:=aux;
    x:=x div 10;
  end;
  result:=nmay;
end;

function Numeros.mendig: Integer;
var mdig,I:Integer;
begin
  mdig:=100;
  for I := 1 to dig do
  begin
    if numvec[I]<mdig then
      mdig:=numvec[I];
  end;
  result:=mdig;
end;

function Numeros.mostrarnum: String;
var I:Integer;cad:String;
begin
  cad:='';
  for I := 1 to dig do
    cad:=cad+IntToStr(numvec[I]);
  result:=cad;
end;

function Numeros.orddigimp(n:Cardinal): Cardinal;
var aux:Integer;cnum,nvnum:Cardinal;
begin
  nvnum:=0;
  while n>0 do
  begin
    aux:=n mod 10;
    if aux mod 2<>0 then
      nvnum:=nvnum*10+aux;
    n:=n div 10;
  end;
  result:=nvnum;
end;

function Numeros.orddigpar(n:Cardinal): Cardinal;
var aux:Integer;nvnum:Cardinal;
begin
  nvnum:=0;
  while n>0 do
  begin
    aux:=n mod 10;
    if aux mod 2=0 then
      nvnum:=nvnum*10+aux;
    n:=n div 10;
  end;
  result:=nvnum;
end;

procedure Numeros.ordnummenor;
var ban0:Boolean;nvnum,mult:Cardinal;
  I: Integer;
begin
  nvnum:=0;mult:=10;
  if mendig=0 then
  begin
    ban0:=True;
    elmdig(posmendig);
    while mendig=0 do
    begin
      elmdig(posmendig);
      mult:=mult*10;
    end;
  end
  else
  begin
    ban0:=False;
  end;
  if ban0=False then  //No hay un cero en el num
  begin
    for I := 1 to dig do
    begin
      nvnum:=nvnum*10+mendig;
      elmdig(posmendig);
    end;
  end
  else //Si hay cero/s en el numero
  begin
    nvnum:=mendig*mult;
    elmdig(posmendig);
    for I := 1 to dig do
    begin
      nvnum:=nvnum*10+mendig;
      elmdig(posmendig);
    end;
  end;
  registrar(nvnum);
end;

procedure Numeros.ordparimprmit;
var
  I,p,aux: Integer;p1,p2:Cardinal;
begin
  for I := 1 to dig-1 do
  begin
    for p := I+1 to dig do
    begin
      if numvec[I]>numvec[p] then
      begin
        aux:=numvec[p];
        numvec[p]:=numvec[I];
        numvec[I]:=aux;
      end;
    end;
  end;
  aux:=0;
  for I := 1 to dig do
    aux:=aux*10+numvec[I];
  p1:=orddigimp(aux);
  p2:=orddigpar(aux);
  aux:=p1*potencia(10,contdig(p2))+p2;
  registrar(aux);
end;

function Numeros.posmendig: Integer;
var mdig,posmen,I:Integer;
begin
  mdig:=100;
  for I := 1 to dig do
  begin
    if numvec[I]<mdig then
    begin
      mdig:=numvec[I];
      posmen:=I;
    end;
  end;
  result:=posmen;
end;

function Numeros.potencia(x: Cardinal; n: Integer): Cardinal;
var
  i,p: Integer;
begin
  p:=x;
  for i := 2 to n do
    x:=x*p;
  result:=x;
end;

procedure Numeros.registrar(n: Cardinal);
begin
  num:=n;
  dig:=contdig(num);
  convectnum;
end;

end.
