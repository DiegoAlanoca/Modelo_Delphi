unit clasevectores;

interface
uses sysutils,dialogs;
const MaxE=1024; MaxC=150;
voc:set of Char=['A','E','I','O','U','a','e','i','o','u'];
separadores:Set of Char=[' ','-','_'];
type
  vectrealaux=Array of Real;       //Empieza en 0
  VectStrAux=Array[1..MaxE] of String;
  VectChar=Array[1..MaxC] of Char;
type
  vectorescadenas = class
  private

  public
    vectcad:Array[1..MaxE] of string;
    VectChar:Array[1..150] of Char;
    dimensioncad:Word;
    DimenChar:Word;
    constructor create;
    procedure addendelem(e:String);
    procedure emptyvec;
    Function modelexam3:Word;
    function modeloexam4 (e:String):Word;
    function RepetNpal (s,e:String):Word;
    procedure StringQuickshortExeAsc;
    procedure StringQuickshortExeDesc;
    procedure StringQuicksortDesc(izq,der:Integer);
    procedure StringquicksortAsc(izq,der:Integer);
    procedure ModeloExam7;
    procedure SeparSubVecEspac(StrEntr: String;var VectEntr:VectStrAux;
    var DimEntr:Integer);
    procedure registrar(VectaReg:VectStrAux;DimenAReg:Word);
    procedure ModeloExam9;
    function CheckMore2Voc(StrToCheck:String):Boolean;
    procedure DelVocRepCharGlob;

    procedure RegistStrEnVectChar(s:string);
    procedure DelElemCharGlob(pos:Integer);
    procedure StrinIntercam(p1,p2:Word);
    function GetFirstCharOfVect(pos:Word):Char;
    procedure DelElem(pos:Word);
  end;

{$REGION 'Vectores Clase'}
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
    procedure modelexam6;
    procedure burbujaAscRef(var VectEntr:vectrealaux;var dimEntr:Integer);
    procedure burbujaDscRef(var VectEntr:vectrealaux;var dimEntr:Integer);

    function VerificarPrimo(num:Integer):Boolean;
    function ConvStrEnVectRealConComas(s:String):vectrealaux;
    procedure InsElemVect(e:Real;pos:Word);
    procedure intercamb(p1,p2:Word);
    procedure quickshortexe;
    procedure mergesortexe;
    procedure intercambporRefer(var p1,p2:Word;var vectEntra:vectrealaux);
    procedure registrarVectReal(VectEntr:vectrealaux);
end;
{$ENDREGION}

implementation

{ vectores }
{$REGION 'Vectores Implementacion'}

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


procedure vectores.burbujaAscRef(var VectEntr: vectrealaux;var dimEntr:Integer);
var I,J,P: Word;
begin
  for I := 0 to dimEntr-2 do
    for J := 0 to dimEntr-I-2 do
      if VectEntr[J]>VectEntr[J+1] then
      begin
        P:=J+1;
        intercambporRefer(J,P,VectEntr);
      end;
end;

procedure vectores.burbujaDsc;
var I,J: Integer;
begin
  for I := 1 to Dimension-1 do
    for J := 1 to Dimension-I do
      if vect[J]<vect[J+1] then
        intercamb(J,J+1);
end;

procedure vectores.burbujaDscRef(var VectEntr: vectrealaux;
  var dimEntr: Integer);
var I,J,P: Word;
begin
  for I := 0 to dimEntr-2 do
    for J := 0 to dimEntr-I-2 do
      if VectEntr[J]<VectEntr[J+1] then
      begin
        P:=J+1;
        intercambporRefer(J,P,VectEntr);
      end;
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

procedure vectores.intercambporRefer(var p1, p2: Word;var vectEntra:vectrealaux);
var aux:Real;
begin
  aux:=vectEntra[p1];
  vectEntra[p1]:=vectEntra[p2];
  vectEntra[p2]:=aux;
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

procedure vectores.modelexam6;
var I,J,dimprim,dimnoprim: Integer; numprim,numnoprim,vectfin:vectrealaux;
begin
  dimprim:=0; dimnoprim:=0; SetLength(numprim, 0);
  SetLength(numnoprim, 0);
  for I := 1 to dimension do
  begin
    if VerificarPrimo(Trunc(vect[I]))=True then
    begin
      inc(dimprim);
      setlength(numprim,dimprim);
      numprim[dimprim-1]:=vect[I];
    end
    else
    begin
      inc(dimnoprim);
      setlength(numnoprim,dimnoprim);
      numnoprim[dimnoprim-1]:=vect[I];
    end;
  end;
  burbujaAscRef(numprim,dimprim);
  burbujaDscRef(numnoprim,dimnoprim);
  setlength(vectfin,dimprim+dimnoprim);
  for I := 0 to dimprim-1 do
    vectfin[I]:=numprim[I];
  J:=0;
  for I := dimprim to length(vectfin)-1 do
  begin
    vectfin[I]:=numnoprim[J];
    Inc(J);
  end;
  registrarVectReal(vectfin);
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
  pivote := vect[(izq + der) div 2];
  repeat
    while vect[i] < pivote do i := i + 1;
    while vect[j] > pivote do j := j - 1;
    if i <= j then
    begin
      intercamb(i,j);
      i := i + 1;
      j := j - 1;
    end;
  until i > j;
  if izq < j then
    QuickSort(izq, j);
  if i < der then
    QuickSort(i, der);
end;

procedure vectores.registrarVectReal(VectEntr: vectrealaux);
var I:Word;
begin
  emptyvec;
  for I := 0 to length(VectEntr)-1 do
    addend(VectEntr[I]);
end;

function vectores.VerificarPrimo(num: Integer): Boolean;
var
  I: Integer;
begin
  if num <= 1 then
    Exit(False);
  if num = 2 then
    Exit(True);
  if (num mod 2) = 0 then
    Exit(False);
  I := 3;
  while I * I <= num do
  begin
    if (num mod I) = 0 then
      Exit(False);
    Inc(I, 2);
  end;
  Result := True;
end;
{$ENDREGION}

{ vectorescadenas }
{$REGION 'Vectores Cadenas'}

{$REGION 'Vectores Cadenas Anteriores'}

procedure vectorescadenas.addendelem(e:String);
begin
  Inc(dimensioncad);
  vectcad[dimensioncad]:=e;
end;

constructor vectorescadenas.create;
begin
  dimensioncad:=0;
end;

procedure vectorescadenas.DelElem(pos: Word);
var I: Word;
begin
  for I := pos to dimensioncad-1 do
    vectcad[I]:=vectcad[I+1];
  vectcad[dimensioncad]:=#0;
  Dec(dimensioncad);
end;

procedure vectorescadenas.emptyvec;
var I:Word;
begin
  dimensioncad:=0;
  for I := 1 to MaxE do
    vectcad[I]:=#0;
end;

function vectorescadenas.GetFirstCharOfVect(pos: Word): Char;
var aux:String;
begin
  aux:=vectcad[pos];
  result:=aux[1];
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

procedure vectorescadenas.ModeloExam7;
var I,dimensionVecFin: Integer;
    VectStrFinal: VectStrAux;
begin
  dimensionVecFin:=0;
  for I := 1 to dimensioncad do
   SeparSubVecEspac(vectcad[I],VectStrFinal,dimensionVecFin);
  registrar(VectStrFinal,dimensionVecFin);
  StringQuickshortExeDesc;
  I:=1;
  while I<=dimensioncad do
  begin
    if vectcad[I]=vectcad[I+1] then
      DelElem(I+1);
    Inc(I);
  end;

end;

procedure vectorescadenas.registrar(VectaReg: VectStrAux; DimenAReg: Word);
var I:Integer;
begin
  emptyvec;
  for I := 1 to DimenAReg do
    vectcad[I]:=VectaReg[I];
  dimensioncad:=DimenAReg;
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

procedure vectorescadenas.SeparSubVecEspac
(StrEntr: String;var VectEntr:VectStrAux;var DimEntr:Integer);

var StrAux:String; I:Integer;
begin
  I:=1; StrAux:='';
  while I<=length(StrEntr) do
  begin
    if not(StrEntr[I] in separadores)and(I<=length(StrEntr)) then
    begin
      StrAux:=StrAux+StrEntr[I];
    end
    else
    begin
      Inc(DimEntr);
      VectEntr[DimEntr]:=StrAux;
      StrAux:='';
    end;
    Inc(I);
  end;
  if StrAux<>'' then
  begin
    Inc(DimEntr);
    VectEntr[DimEntr]:=StrAux;
  end;
end;

procedure vectorescadenas.StringQuickshortExeAsc;
begin
  if dimensioncad > 1 then
    StringquicksortAsc(1, dimensioncad);
end;

procedure vectorescadenas.StringQuickshortExeDesc;
begin
  if dimensioncad > 1 then
    StringQuicksortDesc(1, dimensioncad);
end;

procedure vectorescadenas.StringquicksortAsc(izq,der:Integer);
var
  i, j: Integer;
  pivote: String;
begin
  i := izq;
  j := der;
  pivote := Uppercase(vectcad[(izq + der) div 2]);

  repeat
    while Uppercase(vectcad[i]) < pivote do i := i + 1;
    while Uppercase(vectcad[j]) > pivote do j := j - 1;

    if i <= j then
    begin
      StrinIntercam(i, j);
      i := i + 1;
      j := j - 1;
    end;
  until i > j;

  if izq < j then StringquicksortAsc(izq, j);
  if i < der then StringquicksortAsc(i, der);
end;

procedure vectorescadenas.StringQuicksortDesc(izq, der: Integer);
var
  i, j: Integer;
  pivote: String;
begin
  i := izq;
  j := der;
  pivote := Uppercase(vectcad[(izq + der) div 2]);
  repeat
    while Uppercase(vectcad[i]) > pivote do i := i + 1;
    while Uppercase(vectcad[j]) < pivote do j := j - 1;

    if i <= j then
    begin
      StrinIntercam(i, j);
      i := i + 1;
      j := j - 1;
    end;
  until i > j;

  if izq < j then StringQuicksortDesc(izq, j);
  if i < der then StringQuicksortDesc(i, der);
end;

procedure vectorescadenas.StrinIntercam(p1, p2: Word);
var aux:String;
begin
  aux:=vectcad[p1];
  vectcad[p1]:=vectcad[p2];
  vectcad[p2]:=aux;
end;

procedure vectorescadenas.ModeloExam9;
var I:Integer;
begin
  I:=1;
  while I<=dimensioncad do
    if CheckMore2Voc(vectcad[I])=True then DelElem(I)
    else Inc(I);

end;

function vectorescadenas.CheckMore2Voc(StrToCheck: String): Boolean;
var I,J,contadorVocalesUnicas,ContVoc: Integer;
  vocalesEncontradas: set of Char;
  ch:Char;
begin
  RegistStrEnVectChar(StrToCheck);
  DelVocRepCharGlob;
  I:=0; ContVoc:=0;
  repeat
    Inc(I);
  until (VectChar[I] in voc);

  for J:=I+1 to DimenChar do
    if (VectChar[I]<>VectChar[J])and(VectChar[J] in voc) then
      Inc(ContVoc);
  if ContVoc>2 then
    result:=True
  else
    result:=False;

  vocalesEncontradas := [];
  contadorVocalesUnicas := 0;
end;

procedure vectorescadenas.DelVocRepCharGlob;
var I,J:Integer;
begin
  I:=0;
  while I<DimenChar do
  begin
    repeat
      Inc(I);
    until (VectChar[I] in voc);
    J:=I;
    repeat
      Inc(J);
    until (Upcase(VectChar[I])=Upcase(VectChar[J]))and(J<=DimenChar);
    if Upcase(VectChar[I])=Upcase(VectChar[J]) then
      DelElemCharGlob(I);
  end;

end;

procedure vectorescadenas.RegistStrEnVectChar(s: string);
var
  I: Integer;
begin
  for I := 1 to MaxC do
    VectChar[I]:=#0;
  for I:=1 to length(s) do
    VectChar[I]:=s[I];
  DimenChar:=length(s);
end;

procedure vectorescadenas.DelElemCharGlob(pos: Integer);
var
  I: Integer;
begin
  for I := pos to DimenChar-1 do
    VectChar[I]:=VectChar[I+1];
  Dec(DimenChar);
end;
{$ENDREGION}


{$ENDREGION}

//{$REGION 'Vectores'}
//{$ENDREGION}

end.
