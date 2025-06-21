unit clasevectores;

interface
uses sysutils,dialogs;
const MaxE=1024;
voc:set of Char=['A','E','I','O','U','a','e','i','o','u'];
type
  vectrealaux=Array of Real;       //Empieza en 0

type
  vectorescadenas = class
  private

  public
    vectcad:Array[1..MaxE] of string;
    dimensioncad:Word;
    constructor create;
    procedure addendelem(e:String);
    procedure emptyvec;
    Function modelexam3:Word;
    function modeloexam4 (e:String):Word;
    function RepetNpal (s,e:String):Word;
  end;
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
    procedure burbujaAsc;
    procedure burbujaDsc;
    procedure quicksort(izq,der:Integer);
    procedure mezclar(izq,medio,der:Integer);
    procedure mergesort(izq, der: Integer);
    procedure modelexam5(e:String);

    function ConvStrEnVectRealConComas(s:String):vectrealaux;
    procedure InsElemVect(e:Real;pos:Word);
    procedure intercamb(p1,p2:Word);
    procedure quickshortexe;
    procedure mergesortexe;
  end;

implementation

{ vectores }


procedure vectores.addend(numr: Real);
begin
  Inc(dimension);
  vect[dimension]:=numr;
end;

procedure vectores.burbujaAsc;
var I,J: Integer;
begin
  for I := 1 to dimension-1 do
    for J := 1 to dimension-I do
      if vect[J]>vect[J+1] then
        intercamb(J,J+1);
end;

procedure vectores.burbujaDsc;
var I,J: Integer;
begin
  for I := 1 to Dimension-1 do
    for J := 1 to Dimension-I do
      if vect[J]<vect[J+1] then
        intercamb(J,J+1);
end;

function vectores.busquebin(e: Real): Word;  //Antes ordenado
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
  if f>=i then
    result:=m
  else raise Exception.Create('No existe el elemento');
end;

function vectores.busquedasec(e:Real): Word;
var I:Integer;
begin
  I:=0;
  repeat
    Inc(I);
  until (vect[I]=e);
  result:=I;
end;



function vectores.ConvStrEnVectRealConComas(s: String): vectrealaux;
var I, J: Integer;
  numStr: String;
  vectaux: vectrealaux;
begin
  setlength(vectaux, 0);
  numStr := '';
  s := s + ',';
  for I := 1 to Length(s) do
  begin
    if s[I] = ',' then
    begin
      if numStr <> '' then
      begin
        J := Length(vectaux);
        SetLength(vectaux, J + 1);
        vectaux[J] := StrToFloat(numStr);
        numStr := '';
      end;
    end
    else
    begin
      if (s[I] in ['0'..'9']) or (s[I] = '.') then
         numStr := numStr + s[I];
    end;
  end;
  Result := vectaux;
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


procedure vectores.InsElemVect(e: Real; pos: Word);
var I: Integer;
begin
  Inc(dimension);
  for I := dimension downto pos+1 do
    vect[I]:=vect[I-1];

  vect[pos]:=e;
end;

procedure vectores.intercamb(p1, p2: Word);
var aux:Real;
begin
  aux:=vect[p1];
  vect[p1]:=vect[p2];
  vect[p2]:=aux;
end;

constructor vectores.create;
begin
  dimension:=0;
  emptyvec;
end;

procedure vectores.mergesort(izq, der: Integer);
var medio: Integer;
begin
  if izq < der then
  begin
    medio := (izq + der) div 2;
    MergeSort(izq, medio);      // Ordena mitad izquierda
    MergeSort(medio + 1, der);  // Ordena mitad derecha
    Mezclar(izq, medio, der);   // Mezcla las dos mitades ordenadas
  end;
end;

procedure vectores.mergesortexe;
begin
  if dimension > 1 then
    MergeSort(1, dimension);
end;

procedure vectores.mezclar(izq, medio, der: Integer);
var
  i, j, k: Integer;
  aux: Array[1..MaxE] of Real; // Vector auxiliar para realizar la mezcla
begin
  // Copiamos la porción del vector original al auxiliar
  for i := izq to der do
    aux[i] := vect[i];

  i := izq;      // Puntero para el sub-vector izquierdo
  j := medio + 1; // Puntero para el sub-vector derecho
  k := izq;      // Puntero para el vector principal (donde se escribirá el resultado)

  // Mientras haya elementos en AMBOS sub-vectores para comparar
  while (i <= medio) and (j <= der) do
  begin
    if aux[i] <= aux[j] then
    begin
      vect[k] := aux[i];
      i := i + 1;
    end
    else
    begin
      vect[k] := aux[j];
      j := j + 1;
    end;
    k := k + 1;
  end;

  // Si quedaron elementos en el sub-vector izquierdo, los copiamos
  while i <= medio do
  begin
    vect[k] := aux[i];
    i := i + 1;
    k := k + 1;
  end;
  // (No es necesario hacer lo mismo para el sub-vector derecho, porque
  // si quedaran, ya están en su lugar correcto en el vector 'v' original)
end;

procedure vectores.modelem(p: Word; e: Real);
begin
  if (p>=1)and(p<=Dimension) then
    vect[p]:=e
  else raise Exception.Create('Posicion no valida');
end;

procedure vectores.modelexam5(e: String);
var vectaux:vectrealaux; I,J: Integer;
begin
  vectaux:=ConvStrEnVectRealConComas(e);
  Inc(dimension); vect[dimension]:=5000;
  for I := 0 to length(vectaux)-1 do
  begin
    J:=0;
    Repeat
      Inc(J);
    Until vectaux[I]<vect[J];
    InsElemVect(vectaux[I],J);
  end;
  vect[dimension]:=0;
  Dec(dimension);
end;

function vectores.mostrarnvect(pos: Word): Real;
begin
  if (pos>=1)and(pos<=dimension) then
  begin
    result:=vect[pos];
  end
  else raise Exception.Create('Rango no permitido');
end;

procedure vectores.quickshortexe;
begin
  if dimension > 1 then
    quickSort(1, dimension);
end;

procedure vectores.quicksort(izq, der: Integer);
var
  i, j: Integer;
  pivote, aux: Real;
begin
  i := izq;
  j := der;
  // Se toma como pivote el elemento central del sub-vector
  pivote := vect[(izq + der) div 2];

  repeat
    // Busca un elemento a la izquierda mayor o igual que el pivote
    while vect[i] < pivote do i := i + 1;
    // Busca un elemento a la derecha menor o igual que el pivote
    while vect[j] > pivote do j := j - 1;

    if i <= j then
    begin
      // Intercambia los elementos encontrados
      intercamb(i,j);
      // Avanza los índices
      i := i + 1;
      j := j - 1;
    end;
  until i > j;

  // Llama recursivamente para los sub-vectores si es necesario
  if izq < j then
    QuickSort(izq, j);
  if i < der then
    QuickSort(i, der);
end;

{ vectorescadenas }

procedure vectorescadenas.addendelem(e:String);
begin
  Inc(dimensioncad);
  vectcad[dimensioncad]:=e;
end;

constructor vectorescadenas.create;
begin
  dimensioncad:=0;
end;

procedure vectorescadenas.emptyvec;
var I:Word;
begin
  dimensioncad:=0;
  for I := 1 to MaxE do
    vectcad[I]:=#0;
end;

function vectorescadenas.modelexam3: Word;
var contad:Word; aux:String; I,f: Integer;
begin
  contad:=0;
  for I := 1 to dimensioncad do
  begin
    aux:=vectcad[I];
    f:=length(aux);
    if (aux[1] in voc)or(aux[f]in voc)then
      Inc(contad);
  end;
  result:=contad;
end;


function vectorescadenas.modeloexam4(e: String): Word;
var I,rep: Integer; aux:String;
begin
  rep:=0;
  for I := 1 to dimensioncad do
  begin
    aux:=vectcad[I];
    rep:=rep+RepetNpal(aux,e);
  end;
  result:=rep;
end;

function vectorescadenas.RepetNpal(s, e: String): Word;
var I,J,cant: Integer; aux:String;
begin
  cant:=0;
  for I := 1 to length(s)-Length(e)+1 do
  begin
    aux:='';
    for J := I to Length(e)+I-1 do
      aux:=aux+s[J];
    //Copy(s,I,Length(e));
    if aux=e then
      Inc(cant);
  end;
  result:=cant;
end;

end.
