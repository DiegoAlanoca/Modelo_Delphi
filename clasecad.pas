unit clasecad;

interface
uses sysutils,dialogs;
const num:set of char=['0'..'9']; Maxc=1024;
hexa:Set of char=['0'..'9','A','B','C','D','E','F'];
voc:set of char=['A','E','I','O','U','a','e','i','o','u'];
horas:array of string=['cero','una','dos','tres','cuatro','cinco','seis',
'siete','ocho','nueve','diez','once','doce','trece','catorece','quince','dieciseis',
'diecisiete','dieciocho','diecinueve','veinte','veintiuno','veintidos','veintitres',
'veinticuatro'];
minsandseg:array of string=['cero','un','dos','tres','cuatro','cinco','seis',
'siete','ocho','nueve','diez','once','doce','trece','catorce','quince','dieciseis',
'diecisiete','dieciocho','diecinueve','veinte','veintiuno','veintidos','veintitres',
'veinticuatro','veinticinco','veintiseis','veintisiete','veintiocho','veintinueve',
'treinta','treintaiuno','treintaidos','treintaitres','treintaicuatro','treintaicinco',
'treintaiseis','treintaisiete','treintaiocho','treintainueve','cuarenta','cuarentaiuno',
'cuarentaidos','cuarentaitres','cuarentaicuatro','cuarentaicinco','cuarentaiseis',
'cuarentaisiete','cuarentaiocho','cuarentainueve','cincuenta','cincuentaiuno',
'cincuentaidos','cincuentaitres','cincuentaicuatro','cincuentaicinco','cincuentaiseis',
'cincuentaisiete','cincuentaiocho','cincuentainueve','sesenta'];
type
  cadenas = class
  private
    cad:Array[1..Maxc] of char;
    long:Integer;
    palvec:Array[1..Maxc] of string;
    npal:Integer;
    cad2:Array[1..Maxc] of char;
  public
    procedure registrar(c:String);
    function mostrar:string;
    procedure elmnumdosdec;
    procedure elmcars(pi,pf:Integer);
    function copiar(pal:String;i,f:Integer):String;
    procedure elmconsrep;
    procedure vectpal;
    function verconst(c:Char):boolean;
    procedure partenabcerr;
    function convhorlit:String;
    function n2contn1(n2:String):String;
    procedure convect(n:String);
    function elmcar(pal:String;pos:Integer):string;
    procedure regiscad2cnpalvec(pos:Integer);

    function examen:Integer;
  end;

implementation

{ cadenas }

procedure cadenas.convect(n: String);
var I: Integer;
begin
  for I := 1 to length(n) do
    cad2[I]:=n[I];
end;

function cadenas.convhorlit: String;
var
  I,hr,min,seg: Integer; nvcad:String;
begin
  for I := 1 to npal do
  begin
    if palvec[I]='horas' then
      hr:=I-1;
    if palvec[I]='minutos' then
      min:=I-1;
    if palvec[I]='segundos' then
      seg:=I-1;
  end;
  for I := 0 to 24 do
  begin
    if palvec[hr]=horas[I] then //ocho=horas[I]
      nvcad:=IntToStr(I)+':';
  end;
  for I := 0 to 60 do
  begin
    if palvec[min]=minsandseg[I] then
      nvcad:=nvcad+IntToStr(I)+':';
  end;
  for I := 0 to 60 do
  begin
    if palvec[seg]=minsandseg[I] then
      nvcad:=nvcad+IntToStr(I);
  end;
  result:=nvcad;
end;

function cadenas.copiar(pal:String;i,f: Integer): String;
var
  x: Integer; nvpal:String;
begin
  nvpal:='';
  for x := i to f do
    nvpal:=nvpal+pal[x];
  result:=nvpal;
end;

function cadenas.elmcar(pal: String; pos: Integer): string;
var p1,p2:String;
begin
  p1:=Copy(pal,1,pos-1);
  p2:=Copy(pal,pos+1,length(pal));
  result:=p1+p2;
end;

procedure cadenas.elmcars(pi,pf:Integer);
var p1,p2,aux:String;
  I: Integer;
begin
  p1:='';p2:='';
  for I := 1 to pi-1 do
    p1:=p1+cad[I];
  for I := pf+1 to long+1 do
    p2:=p2+cad[I];
  aux:=p1+p2;
  for I := 1 to length(aux) do
    cad[I]:=aux[I];
  for I := length(aux) to Maxc do
    cad[I]:=#0;
end;

procedure cadenas.elmconsrep;
var I,c,p,consrep:Integer;aux,nvcad:String;
begin
  nvcad:='';
  for I := 1 to npal do
  begin
    aux:=palvec[I];
    consrep:=0;
    for c := 1 to length(aux)-1 do
    begin
      for p := c+1 to length(aux) do
      begin
        if (aux[c]=aux[p]) and verconst(aux[c]) then
          consrep:=consrep+1;
      end;
    end;
    if consrep<2 then
      nvcad:=nvcad+' '+aux;
    ShowMessage(IntToStr(consrep));
  end;
  registrar(nvcad);
end;

procedure cadenas.elmnumdosdec;
var
  I,x,ipal,dec,fpal: Integer;nvpal:String;
begin
  nvpal:=''; x:=0; I:=0; dec:=0;
  while I<long do
  begin
    I:=I+1;
    if cad[I]='.' then
    begin
      x:=I;
      repeat
        x:=x-1;      
      until not(cad[x] in num);
      ipal:=x+1;
      x:=I;
      repeat
        x:=x+1;
        dec:=dec+1;
      until not(cad[x] in num);
      fpal:=x-1;
      if dec=3 then
      begin
        elmcars(ipal,fpal);
        I:=Ipal;
      end;
      dec:=0;
    end;
  end;
end;

function cadenas.examen: Integer;
var pal,charrep:String;I,p,j,auxcons,palcons:Integer;
begin
  palcons:=0;
  for I := 1 to npal do
  begin
    regiscad2cnpalvec(I);
    auxcons:=0; charrep:='';
    for p := 1 to length(cad2)-1 do
    begin
       for j := p+1 to length(cad2) do
       begin
          if (cad2[p]=cad2[j])and(verconst(cad2[p]))and(charrep<>cad2[j]) then
          begin
           charrep:=cad2[p];
           auxcons:=auxcons+1;
           elmcar(cad2[j],j);
          end;
       end;
    end;
    if auxcons>1 then
      palcons:=palcons+1;
  end;
  result:=palcons;
end;

function cadenas.mostrar: string;
var aux:String;
  I: Integer;
begin
  aux:='';
  for I := 1 to long do
    aux:=aux+cad[I];
  result:=aux+'   '+inttostr(long);
end;

function cadenas.n2contn1(n2: String): String;
var I,p:Integer;ban:Boolean;
begin
  ban:=True; I:=0; convect(n2);
  while (ban=True)and(I<=Length(n2)) do
  begin
    I:=I+1; ban:=False; p:=0;
    while (p<long)and(ban=False) do
    begin
      p:=p+1;
      if cad2[I]=cad[p] then
      begin
        ban:=True;
        cad[p]:=#0;
      end;
    end;
  end;
  if ban=False then
    result:='No esta incluido'
  else
    result:='Sí esta incluido';
end;

procedure cadenas.partenabcerr;
var ipar,fpar,I:Integer;
begin
  ipar:=0;fpar:=0;
  for I := 1 to long do
  begin
    if cad[I]='(' then
      ipar:=I;
    if cad[I]=')' then
      fpar:=I;
  end;
  if (ipar<>0)and(fpar<>0) then
    registrar(copiar(cad,ipar+1,fpar-1))
  else
    registrar(copiar(cad,1,ipar-1))
end;

procedure cadenas.regiscad2cnpalvec(pos: Integer);
var aux:String;I:Integer;
begin
  aux:=palvec[pos];
  for I := 1 to Maxc do
    cad2[I]:=#0;
  for I := 1 to length(aux) do
    cad2[I]:=aux[I];
end;

procedure cadenas.registrar(c: String);
var
  I: Integer;
begin
  long:=length(c);
  for I := 1 to long do
    cad[I]:=c[I];
  vectpal;
end;

procedure cadenas.vectpal;
var
  I,c: Integer; aux:String;
begin
  aux:=''; c:=0;
  for I := 1 to long do
  begin
    if cad[I]<>' ' then
    begin
      aux:=aux+cad[I];
    end
    else
    begin
      c:=c+1;
      palvec[c]:=aux;
      aux:='';
    end;
  end;
  if cad[long]<>' ' then
  begin
    c:=c+1;
    palvec[c]:=aux;
  end;
  npal:=c;
end;

function cadenas.verconst(c: Char): boolean;
begin
  result:=(c in ['A'..'Z','a'..'z']) and not(c in voc);
end;

end.
