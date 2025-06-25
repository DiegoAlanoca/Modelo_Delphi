unit clasevectnotas;

interface
uses
   SysUtils;
Const
    MaxE = 1024;
Type
    Equipos = Record    //es un registro
      NombreDeEquipo : String;
      PartidosGanados   : Word;
      PartidosEmpatados : Word;
      PartidosPerdidos  : Word;
      GolesFavor     : Word;
      GolesContra :Word;
      DiferenciaDeGoles:Real;
      Puntos:Integer;
    End;

  Notas = Class
      Private
         Equipo : Array[1..MaxE] of Equipos;
      Public
         NroEquipos : Word;
         promedio:Word;
         Function Dim:Word;
         Function getElement(p:Word):Equipos;
         Procedure redimensionar(d:Word);
         Procedure addElement(e:Equipos);
         Procedure delElement(p:Word);
         Procedure modElement(p:Word;e:Equipos);
         Procedure insElement(p:Word;e:Equipos);

         procedure burbujaDsc;
         procedure intercamb(p1,p2:Word);
         procedure OrdPuntDiferGol;
    End;

implementation

{ Vector }

procedure Notas.addElement(e: Equipos);
begin
     Inc(NroEquipos);
     Equipo[NroEquipos]:=e;

     promedio:=promedio+e.GolesFavor;
end;

procedure Notas.burbujaDsc;
var I,J: Integer; e1,e2:Equipos;
begin
  for I := 1 to NroEquipos-1 do
    for J := 1 to NroEquipos-I do
    begin
      e1:=Equipo[J]; e2:=Equipo[J+1];
      if e1.Puntos<e2.Puntos then
        intercamb(J,J+1);
    end;
end;

procedure Notas.delElement(p: Word);
var
  I: Word;
begin
     if (p>0) and (p<=NroEquipos) then
     Begin
       for I := p to NroEquipos-1 do
          Equipo[i]:=Equipo[i+1];
       Dec(NroEquipos);
     End else raise Exception.Create('Posicion fuer de Rango');
end;

function Notas.Dim: Word;
begin
     Result:=NroEquipos;
end;

function Notas.getElement(p: Word): Equipos;
begin
     if (p>0) and (p<=NroEquipos) then
     Begin
           Result:=Equipo[p];
     End else raise Exception.Create('Posicion fuer de Rango');
end;

procedure Notas.insElement(p: Word; e: Equipos);
var
  I: Word;
begin
     if (p>0) and (p<=NroEquipos) then
     Begin
       Inc(NroEquipos);
       for I := NroEquipos Downto p+1 do
          Equipo[i]:=Equipo[i-1];
       Equipo[p]:=e;
     End else raise Exception.Create('Posicion fuer de Rango');
end;

procedure Notas.intercamb(p1, p2: Word);
var aux:Equipos;
begin
  aux:=Equipo[p1];
  Equipo[p1]:=Equipo[p2];
  Equipo[p2]:=aux;
end;

procedure Notas.modElement(p: Word; e: Equipos);

begin
     if (p>0) and (p<=NroEquipos) then
     Begin
        Equipo[p]:=e;
     End else raise Exception.Create('Posicion fuer de Rango');
end;

procedure Notas.OrdPuntDiferGol;
var I: Integer; e1,e2:Equipos;
begin
  for I:=1 to NroEquipos do
  begin
    e1:=Equipo[I]; e2:=Equipo[I+1];
    if (e1.Puntos=e2.Puntos)and(e1.DiferenciaDeGoles<e2.DiferenciaDeGoles) then
      intercamb(I,I+1);
  end;
end;

procedure Notas.redimensionar(d: Word);
begin
     NroEquipos:=d;
end;

end.
