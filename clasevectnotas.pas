unit clasevectnotas;

interface
uses
   SysUtils;
Const
    MaxE = 1024;
Type
    Alumno = Record    //es un registro
      Registro : Cardinal;
      Nombre   : String;
      FechaNac : TDate;
      Materia  : String;
      Nota     : Word;
    End;
    Notas = Class
      Private
         Alumnos : Array[1..MaxE] of Alumno;
      Public
         NroAlumnos : Word;
         promedio:Word;
         Function Dim:Word;
         Function getElement(p:Word):Alumno;
         Procedure redimensionar(d:Word);
         Procedure addElement(e:Alumno);
         Procedure delElement(p:Word);
         Procedure modElement(p:Word;e:Alumno);
         Procedure insElement(p:Word;e:Alumno);

    End;

implementation

{ Vector }

procedure Notas.addElement(e: Alumno);
begin
     Inc(NroAlumnos);
     Alumnos[NroAlumnos]:=e;
     promedio:=promedio+e.Nota;
end;

procedure Notas.delElement(p: Word);
var
  I: Word;
begin
     if (p>0) and (p<=NroAlumnos) then
     Begin
       for I := p to NroAlumnos-1 do
          Alumnos[i]:=Alumnos[i+1];
       Dec(NroAlumnos);
     End else raise Exception.Create('Posicion fuer de Rango');
end;

function Notas.Dim: Word;
begin
     Result:=NroAlumnos;
end;

function Notas.getElement(p: Word): Alumno;
begin
     if (p>0) and (p<=NroAlumnos) then
     Begin
           Result:=Alumnos[p];
     End else raise Exception.Create('Posicion fuer de Rango');
end;

procedure Notas.insElement(p: Word; e: Alumno);
var
  I: Word;
begin
     if (p>0) and (p<=NroAlumnos) then
     Begin
       Inc(NroAlumnos);
       for I := NroAlumnos Downto p+1 do
          Alumnos[i]:=Alumnos[i-1];
       Alumnos[p]:=e;
     End else raise Exception.Create('Posicion fuer de Rango');
end;

procedure Notas.modElement(p: Word; e: Alumno);

begin
     if (p>0) and (p<=NroAlumnos) then
     Begin
        Alumnos[p]:=e;
     End else raise Exception.Create('Posicion fuer de Rango');
end;

procedure Notas.redimensionar(d: Word);
begin
     NroAlumnos:=d;
end;

end.
