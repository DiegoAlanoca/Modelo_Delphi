unit ModeloVectores;

interface
uses Dialogs,sysutils;
const MaxE=1024;
Vocales:Set of char=['A','E','I','O','U','a','e','i','o','u'];
type
  VectoresReales = class
  private
    Dimension:Word;
    VectorReal:Array[1..MaxE] of Real;
  public
    Procedure AddElement(e:Real);
    Procedure Redimensionar(d:Word);
    Function GetDimension:Word;
    Function GetElement(p:Word):Real;
    Procedure DelElement(p:Word);
    Procedure ChangeElement(p:Word;e:Real);
    Procedure InsElem(p:Word;e:Real);
    Procedure EmptyVec;
    Procedure ExeQuicksortAscend;
    Procedure QuicksortAscend(izq,der:Integer);
    Procedure Intercambiar(p1,p2:Word);
    Procedure EjercicioTemp;
end;

type
  VectoresString = class
  private
    Dimension:Word;
    VectorString:Array[1..MaxE] of String;
  public
    Procedure AddElement(e:String);
    Procedure Redimensionar(d:Word);
    Function GetDimension:Word;
    Function GetElement(p:Word):String;
    Procedure DelElement(p:Word);
    Procedure ChangeElement(p:Word;e:String);
    Procedure InsElem(p:Word;e:String);
    Procedure EmptyVec;
    Function ContarVocalesUnicas(const Texto: string): Integer;
end;


implementation

{ VectoresReales }

procedure VectoresReales.AddElement(e: Real);
begin
  Inc(Dimension);
  VectorReal[Dimension]:=e;
end;

procedure VectoresReales.ChangeElement(p: Word; e: Real);
begin
  if (p>0)and(p<=Dimension) then
    VectorReal[p]:=e
  else raise Exception.Create('Posicion No valida'+IntToStr(p));
end;

procedure VectoresReales.DelElement(p: Word);
var I: Word;
begin
  if (p>0)and(p<=Dimension) then
  begin
    for I:=p to Dimension-1 do
      VectorReal[I]:=VectorReal[I+1];
    Dec(Dimension);
  end
  else raise Exception.Create('Posicion No valida'+IntToStr(p));
end;

procedure VectoresReales.EjercicioTemp;
var PromedioValido,ValorErrMax:Real;
CantPromeVal,CantidaAtipicos,I:Integer;
begin
  PromedioValido:=0;  CantPromeVal:=0; ValorErrMax:=-990;
  CantidaAtipicos:=0;
  for I:=1 to Dimension do
  begin
    if (VectorReal[I]>0)and(VectorReal[I]<100) then
    begin
      PromedioValido:=PromedioValido+VectorReal[I];
      Inc(CantPromeVal);
    end
    else
    begin
      if VectorReal[I]>100 then
        Inc(CantidaAtipicos)
      else
        ValorErrMax:=VectorReal[I];
    end;
  end;
  Showmessage('PromedioValido'+FloatToStr(PromedioValido/CantPromeVal));
  Showmessage('Cantidad Atipicos'+IntToStr(CantidaAtipicos));
  Showmessage('Valor Error Maximo'+FloatToStr(ValorErrMax));
end;

procedure VectoresReales.EmptyVec;
var I: Integer;
begin
  Dimension:=0;
  for I:=1 to MaxE do
    VectorReal[I]:=0;
end;

procedure VectoresReales.ExeQuicksortAscend;
begin
  if Dimension > 1 then
    QuicksortAscend(1,dimension);
end;

function VectoresReales.GetDimension: Word;
begin
  result:=Dimension;
end;


function VectoresReales.GetElement(p: Word): Real;
begin
  if (p>0)and(p<=Dimension) then
    result:=VectorReal[p]
  else raise Exception.Create('Posicion No valida'+IntToStr(p));
end;

procedure VectoresReales.InsElem(p: Word; e: Real);
var I: Word;
begin
  if (p>0)and(p<=Dimension) then
  begin
    Inc(Dimension);
    for I:=Dimension downto p+1 do
      VectorReal[I]:=VectorReal[I-1];
    VectorReal[p]:=e;
  end
  else raise Exception.Create('Posicion No valida'+IntToStr(p));
end;

procedure VectoresReales.Intercambiar(p1, p2: Word);
var aux:Real;
begin
  if (p1>0)and(p1<=Dimension)and(p2>0)and(p2<=Dimension) then
  begin
    aux:=VectorReal[p1];
    VectorReal[p1]:=VectorReal[p2];
    VectorReal[p2]:=aux;
  end
  else raise Exception.Create('Posicion No valida'+IntToStr(p1)
  +IntToStr(p2));

end;

procedure VectoresReales.QuicksortAscend(izq, der: Integer);
var i, j: Integer; pivote, aux: Real;
begin
  i := izq;
  j := der;
  pivote := VectorReal[(izq + der) div 2];
  repeat
    while VectorReal[i] < pivote do i := i + 1;
    while VectorReal[j] > pivote do j := j - 1;
    if i <= j then
    begin
      Intercambiar(i,j);
      i := i + 1;
      j := j - 1;
    end;
  until i > j;
  if izq < j then
    QuicksortAscend(izq,j);
  if i < der then
    QuicksortAscend(i,der);
end;

procedure VectoresReales.Redimensionar(d: Word);
begin
  if d>0 then
    Dimension:=d;
end;

{ VectoresString }

procedure VectoresString.AddElement(e: String);
begin
  Inc(Dimension);
  VectorString[Dimension]:=e;
end;

procedure VectoresString.ChangeElement(p: Word; e: String);
begin
  if (p>0)and(p<=Dimension) then
    VectorString[p]:=e
  else raise Exception.Create('Posicion No valida'+IntToStr(p));
end;

function VectoresString.ContarVocalesUnicas(const Texto: string): Integer;
var i: Integer; Caracter: Char; Encontradas: string;
begin
  Encontradas:='';
  for i := 1 to Length(Texto) do
  begin
    Caracter := Texto[i];
    if Caracter in Vocales then
    begin
      Caracter := LowerCase(Caracter)[1];
      if Pos(Caracter, Encontradas) = 0 then
        Encontradas := Encontradas + Caracter;
    end;
  end;
  Result:=Length(Encontradas);
end;

procedure VectoresString.DelElement(p: Word);
var I: Word;
begin
  if (p>0)and(p<=Dimension) then
  begin
    for I:=p to Dimension-1 do
      VectorString[I]:=VectorString[I+1];
    Dec(Dimension);
  end
  else raise Exception.Create('Posicion No valida'+IntToStr(p));
end;

procedure VectoresString.EmptyVec;
var I: Integer;
begin
  Dimension:=0;
  for I:=1 to MaxE do
    VectorString[I]:=#0;
end;

function VectoresString.GetDimension: Word;
begin
  Result:=Dimension;
end;

function VectoresString.GetElement(p: Word): String;
begin
  if (p>0)and(p<=Dimension) then
    result:=VectorString[p]
  else raise Exception.Create('Posicion No valida'+IntToStr(p));
end;

procedure VectoresString.InsElem(p: Word; e: String);
var I: Word;
begin
  if (p>0)and(p<=Dimension) then
  begin
    Inc(Dimension);
    for I:=Dimension downto p+1 do
      VectorString[I]:=VectorString[I-1];
    VectorString[p]:=e;
  end
  else raise Exception.Create('Posicion No valida'+IntToStr(p));
end;

procedure VectoresString.Redimensionar(d: Word);
begin
  Dimension:=d;
end;

end.
