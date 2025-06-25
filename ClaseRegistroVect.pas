unit ClaseRegistroVect;

interface
uses sysutils;
const MaxE=1024;
Type
    Datos = Record
      dato1 : String;
      dato2 : String;
      dato3 : String;
      dato4 : String;
      dato5 : String;
      dato6 : Word;
      dato7 : Word;
  End;

  Registros = Class
      Private
         Registro : Array[1..MaxE] of Datos;
         NroRegistros : Word;
         promedio:Word;
      Public
         Function getDim:Word;
         Function getElement(p:Word):Datos;
         Function getProm:Word;
         Procedure redimensionar(d:Word);
         Procedure addElement(e:Datos);
         Procedure delElement(p:Word);
         Procedure modElement(p:Word;e:Datos);
         Procedure insElement(p:Word;e:Datos);
         procedure burbujaDscConDat6;
         procedure intercamb(p1,p2:Word);
         procedure ExeQuickShortDato6Asc;
         procedure QuicksortDato6Asc(izq,der:Integer);
         procedure ExeQuickShortDato6Desc;
         procedure QuicksortDato6Desc(izq,der:Integer);
End;


implementation

{ Registros }

procedure Registros.addElement(e: Datos);
begin
  Inc(NroRegistros);
  Registro[NroRegistros]:=e;
end;

procedure Registros.burbujaDscConDat6;
var I,J: Word; e1,e2:Datos;
begin
  for I := 1 to NroRegistros-1 do
    for J := 1 to NroRegistros-I do
    begin
      e1:=Registro[J]; e2:=Registro[J+1];
      if e1.dato6<e2.dato6 then
        intercamb(J,J+1);
    end;
end;

procedure Registros.delElement(p: Word);
var I:Integer;
begin
  if (p>0)and(p<=NroRegistros) then
  begin
    for I:=p to NroRegistros-1 do
      Registro[I]:=Registro[I+1];
    Dec(NroRegistros);
  end
  else raise Exception.Create('Posicion Invalida:'+IntToStr(p));
end;

function Registros.getDim: Word;
begin
  Result:=NroRegistros;
end;

function Registros.getElement(p: Word): Datos;
begin
  if (p>0)and(p<=NroRegistros) then
    result:=Registro[p]
  else raise Exception.Create('Posicion invalida:'+IntTostr(p));
end;

function Registros.getProm: Word;
begin
  Result:=promedio;
end;

procedure Registros.insElement(p: Word; e: Datos);
var I: Word;
begin
  if (p>0)and(p<=NroRegistros) then
  begin
    Inc(NroRegistros);
    for I:=NroRegistros downto p+1 do
      Registro[I]:=Registro[I-1];
    Registro[P]:=e;
  end
  else raise Exception.Create('Posicion invalida:'+IntTostr(p));
end;

procedure Registros.intercamb(p1, p2: Word);
var aux:Datos;
begin
  if (p1>0)and(p1<=NroRegistros)and(p2>0)and(p2<=NroRegistros) then
  begin
    aux:=Registro[p1];
    Registro[p1]:=Registro[p2];
    Registro[p2]:=aux;
  end
  else raise Exception.Create('Posicion invalida:'+IntTostr(p1)+IntTostr(p2));
end;

procedure Registros.modElement(p: Word; e: Datos);
begin
  if (p>0)and(p<=NroRegistros) then
  begin
    Registro[p]:=e;
  end
  else raise Exception.Create('Posicion invalida:'+IntTostr(p));
end;

procedure Registros.ExeQuickShortDato6Asc;
begin
  if NroRegistros>1 then
    QuicksortDato6Asc(1,NroRegistros);
end;

procedure Registros.QuicksortDato6Asc(izq, der: Integer);
var i, j: Integer;  pivote:Datos;
  aux: Word;
begin
  i := izq;
  j := der;
  pivote:=Registro[(izq + der) div 2];
  repeat
    while Registro[i].dato6 < pivote.dato6 do i:=i+1;
    while Registro[j].dato6 > pivote.dato6 do j:=j-1;
    if i<=j then
    begin
      intercamb(i,j);
      i:=i+1;
      j:=j-1;
    end;
  until i>j;
  if izq<j then
    QuicksortDato6Asc(izq, j);
  if i<der then
    QuicksortDato6Asc(i, der);
end;

procedure Registros.ExeQuickShortDato6Desc;
begin
  if NroRegistros>1 then
    QuicksortDato6Desc(1,NroRegistros)
end;

procedure Registros.QuicksortDato6Desc(izq, der: Integer);
var i, j: Integer;  pivote:Datos;
  aux: Word;
begin
  i := izq;
  j := der;
  pivote:=Registro[(izq + der) div 2];
  repeat
    while Registro[i].dato6 > pivote.dato6 do i:=i+1;
    while Registro[j].dato6 < pivote.dato6 do j:=j-1;
    if i<=j then
    begin
      intercamb(i,j);
      i:=i+1;
      j:=j-1;
    end;
  until i>j;
  if izq<j then
    QuicksortDato6Desc(izq, j);
  if i<der then
    QuicksortDato6Desc(i, der);
end;

procedure Registros.redimensionar(d: Word);
begin
  NroRegistros:=d;
end;

end.
