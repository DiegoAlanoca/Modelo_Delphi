unit ClaseMatrices;

//stringrid[Columna,Fila];
//Matriz[Fila,Columna];
Interface
Uses SysUtils,dialogs,Math;
Const
    MaxF=128;
    MaxC=128;
Type
    Matriz = Class
      Private
        NroFilas,
        NroColumnas : Word;
        Celdas      : Array[1..MaxF,1..MaxC] of Real;
      Public
        Function Filas:Word;
        Function Columnas:Word;
        Procedure setValue(F,C:Word;V:Real);
        Function getValue(F,C:Word):Real;
        Procedure reDimensionar(Nf,Nc:Word);
        Procedure addFilas;
        Procedure addColumnas;
        Procedure delFila(f:Word);
        Procedure delColumna(c:Word);
        Procedure insFila(p:Word);
        Procedure insColumna(p:Word);
        function ModelExam1:Real;
        procedure ModelExam2;
        function BinarioaDecim(BinarioStr:String):Integer;
        function ModeloExam3:Integer;
        function ModeloExam4:Real;
    End;

implementation

{ Matriz }

{$REGION 'Implementacion Antes'}

procedure Matriz.addColumnas;
begin
     Inc(NroColumnas);
end;

procedure Matriz.addFilas;
begin
     Inc(NroFilas);
end;

function Matriz.BinarioaDecim(BinarioStr: String): Integer;
var
  decimalResult: Integer;
  potenciaDeDos: Integer;
  i: Integer;
begin
  decimalResult := 0;
  potenciaDeDos := 1;
  for i := Length(binarioStr) downto 1 do
  begin
    if binarioStr[i] = '1' then
      decimalResult := decimalResult + potenciaDeDos;
    potenciaDeDos := potenciaDeDos * 2;
  end;
  Result := decimalResult;
end;

function Matriz.Columnas: Word;
begin
     Result:=NroColumnas;
end;

procedure Matriz.delColumna(c: Word);
var
  J,I: Integer;
begin
     if (c>0)And(c<=NroColumnas) then
     Begin
         for I:=c to NroColumnas-1 do
            for J:=1 to NroFilas do
               Celdas[J,I]:=Celdas[J,I+1];
         Dec(NroColumnas);
     End
     Else raise Exception.Create('Columna invalida');
end;

procedure Matriz.delFila(f: Word);
var
  J,I: Integer;
begin
     if (f>0)And(f<=NroFilas) then
     Begin
         for I := f to NroFilas-1 do
            for J := 1 to NroColumnas do
               Celdas[I,J]:=Celdas[I+1,J];
         Dec(NroFilas);
     End
     Else raise Exception.Create('Fila invalida');
end;

function Matriz.Filas: Word;
begin
     Result:=NroFilas;
end;

function Matriz.getValue(F, C: Word): Real;
begin
     if (F>0)And(F<=NroFilas)And(C>0)And(C<=NroColumnas) then
        Result:=Celdas[F,C]
     Else raise Exception.Create('Posicion fuera de rango');
end;

procedure Matriz.insColumna(p: Word);
var I,J: Word;
begin
  if (p>0)and(p<=NroColumnas) then
  begin
    Inc(NroColumnas);
    for I := NroColumnas-1 downto p+1 do
      for J := 1 to NroFilas do
        Celdas[J,I]:=Celdas[J,I-1]
  end
  else raise Exception.Create('Fuera de Rango');
end;

procedure Matriz.insFila(p: Word);
var
  J,I: Integer;
begin
     if (P>0)And(P<=NroFilas) then
     Begin
         Inc(NroFilas);
         for I := NroFilas-1 downto p+1 do
            for J := 1 to NroColumnas do
               Celdas[I,J]:=Celdas[I-1,J];
     End
     Else raise Exception.Create('Fila invalida');

end;

procedure Matriz.reDimensionar(Nf, Nc: Word);
begin
     NroFilas:=Nf;NroColumnas:=Nc;
end;

procedure Matriz.setValue(F, C: Word; V: Real);
begin
     if (F>0)And(F<=NroFilas)And(C>0)And(C<=NroColumnas) then
        Celdas[F,C]:=V
     Else raise Exception.Create('Posicion fuera de rango');
end;

function Matriz.ModelExam1:Real;
var maynum,numtemp:Real;
  I,J: Integer;
begin
  maynum:=0;
  for I:=1 to NroFilas do
  begin
    numtemp:=0;
    for J:=1 to NroColumnas do
    begin
      numtemp:=numtemp*10+Celdas[I,J];
      if numtemp>maynum then
        maynum:=numtemp;
    end;
  end;

  for I:=1 to NroFilas do
  begin
    numtemp:=0;
    for J:=NroColumnas downto 1 do
    begin
      numtemp:=numtemp*10+Celdas[I,J];
      if numtemp>maynum then
        maynum:=numtemp;
    end;
  end;

  for I:=1 to NroColumnas do
  begin
    numtemp:=0;
    for J:=1 to NroFilas do
    begin
      numtemp:=numtemp*10+Celdas[J,I];
      if numtemp>maynum then
        maynum:=numtemp;
    end;
  end;

  for I:=NroColumnas downto 1 do
  begin
    numtemp:=0;
    for J:=Filas downto 1 do
    begin
      numtemp:=numtemp*10+Celdas[J,I];
      if numtemp>maynum then
        maynum:=numtemp;
    end;
  end;

  result:=maynum;
end;

procedure Matriz.ModelExam2;
var I,J: Integer;
begin
  NroFilas:=StrToInt(InputBox('Filas','Filas',''));
  NroColumnas:=StrToInt(InputBox('Columnas','Columnas',''));
  Celdas[1,1]:=0; Celdas[1,2]:=1;
  for I:=3 to NroColumnas do
    Celdas[1,I]:=Celdas[1,I-2]+Celdas[1,I-1];


  for I:=2 to NroFilas do
  begin
    Celdas[I,1]:=Celdas[I-1,NroColumnas]+Celdas[I-1,NroColumnas-1];
    Celdas[I,2]:=Celdas[I,1]+Celdas[I-1,NroColumnas];
    for J:=3 to NroColumnas do
      Celdas[I,J]:=Celdas[I,J-1]+Celdas[I,J-2];
  end;
end;

function Matriz.ModeloExam3: Integer;
var BinTemp:String; NumMenor,I,J:Integer;
begin
  NumMenor:=999;
  for I:=1 to NroFilas do
  begin
    BinTemp:='';
    for J:=1 to NroColumnas do
      BinTemp:=BinTemp+FloatToStr(Celdas[I,J]);
    if BinarioaDecim(BinTemp)<NumMenor then
      NumMenor:=BinarioaDecim(BinTemp);
  end;
  result:=NumMenor;
end;

function Matriz.ModeloExam4: Real;
var I,J:Integer; SumTotal,PartEnt,PartDec,Precision,Divisor:Real;
begin
  SumTotal:=0;
  Precision:=StrToInt(Inputbox('Precisión','Precisión',''));
  for I:=1 to NroFilas do
  begin
    PartEnt:=0; PartDec:=0; Divisor:=Power(10,Precision);
    for J:=1 to NroColumnas-Trunc(Precision) do
      PartEnt:=PartEnt*10+Celdas[I,J];
    for J:=NroColumnas-Trunc(Precision)+1 to NroColumnas do
      PartDec:=PartDec*10+Celdas[I,J];
    PartDec:=PartDec / Divisor;
    Showmessage('Suma de Fila '+FloatToStr(I)
    +' = '+FloatToStr(PartDec+PartEnt));
    SumTotal:=SumTotal+PartEnt+PartDec;
  end;
  result:=SumTotal;
end;

{$ENDREGION}


end.
