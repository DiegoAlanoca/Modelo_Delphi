unit clasevectores;

interface
uses sysutils,dialogs;
const MaxE=1024;
type
  vectrcad = array of String;
type
  vectores = class
  private

  public
    vect:Array[1..MaxE] of Real; //Comienza en 1
    dimension:Word;
    constructor create;
    procedure addend(numr:Real);
    procedure emptyvec;
    procedure delelem(p:word);
    procedure modelem(p:Word;e:Real);
    function mostrarnvect(pos:Word):Real;
    Function busquedasec(e:Real):Word;
    Function busquebin(e:Real):Word;
  end;

implementation

{ vectores }


procedure vectores.addend(numr: Real);
begin
  Inc(dimension);
  vect[dimension]:=numr;
end;

function vectores.busquebin(e: Real): Word;
var i,f,m:Word;
begin
  i:=1; f:=dimension; m:=(i+f)div 2;
  while (vect[m]<>e)and(i<=f)and(f>=i) do
  begin
    if vect[m]>e then
    begin
      f:=f-1;
    end
    else
    begin
      i:=i+1;
    end;
    m:=(i+f)div 2;
  end;
  result:=m;
end;

function vectores.busquedasec(e:Real): Word;
var I:Integer; ban:Boolean; pos:Word;
begin
  I:=0; ban:=False;
  while (I<dimension+1)and(ban=False) do
  begin
    I:=I+1;
    if vect[I]=e then
      ban:=True;
  end;
  result:=I;
end;


procedure vectores.delelem(p: word);
var I: Word;
begin
  if (p>=1)and(p<=Dimension) then
    for I := p to dimension do
      vect[I]:=vect[I+1]
  else raise Exception.Create('Posicion invalida');
  Dec(Dimension);
end;

procedure vectores.emptyvec;
var I: Integer;
begin
  dimension:=0;
  for I := 1 to MaxE do
    vect[I]:=0;
end;

constructor vectores.create;
begin
  dimension:=0;
  emptyvec;
end;

procedure vectores.modelem(p: Word; e: Real);
begin
  if (p>=1)and(p<=Dimension) then
    vect[p]:=e
  else raise Exception.Create('Posicion no valida');
end;

function vectores.mostrarnvect(pos: Word): Real;
begin
  if (pos>=1)and(pos<=dimension) then
  begin
    result:=vect[pos];
  end
  else raise Exception.Create('Rango no permitido');
end;

end.
