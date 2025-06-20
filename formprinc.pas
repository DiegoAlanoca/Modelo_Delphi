unit formprinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons, clasenum, clasecad,
  Vcl.Grids, clasevectores;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    Numeros1: TMenuItem;
    Numeros2: TMenuItem;
    Mostrar1: TMenuItem;
    EliminarMayorDigitoPrimo1: TMenuItem;
    Mostrarmayordigitoprimo1: TMenuItem;
    Contardigitos1: TMenuItem;
    ContarVecesRepetidasdenNmero1: TMenuItem;
    Label2: TLabel;
    Convertiraarreglodevectores1: TMenuItem;
    Eliminarnnumerorepetidas1: TMenuItem;
    Cadenas1: TMenuItem;
    Cadenas2: TMenuItem;
    Mostrar2: TMenuItem;
    Eliminarnumerosenteroscondosdecimales1: TMenuItem;
    Eliminarcaracteres1: TMenuItem;
    Eliminarpalabrasconconsonantesrepetidas1: TMenuItem;
    N6Parentesiseliminarocopiarantes1: TMenuItem;
    N12xxminutosyxxsegundos1: TMenuItem;
    Ordenarpareimparalamitaddescendente1: TMenuItem;
    Compararsin2estaincluidoenn11: TMenuItem;
    EliminarDigitoenposocionn1: TMenuItem;
    Or1: TMenuItem;
    Examen1: TMenuItem;
    Contarpalabrasconsrepetidas1: TMenuItem;
    StringGrid1: TStringGrid;
    Vectores1: TMenuItem;
    Registrar1: TMenuItem;
    Registrar2: TMenuItem;
    Mostrar3: TMenuItem;
    Modificarxposicion1: TMenuItem;
    Eliminarnelemento1: TMenuItem;
    Label3: TLabel;
    procedure Numeros2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Mostrar1Click(Sender: TObject);
    procedure Mostrarmayordigitoprimo1Click(Sender: TObject);
    procedure EliminarMayorDigitoPrimo1Click(Sender: TObject);
    procedure Contardigitos1Click(Sender: TObject);
    procedure Eliminarnnumerorepetidas1Click(Sender: TObject);
    procedure Cadenas2Click(Sender: TObject);
    procedure Mostrar2Click(Sender: TObject);
    procedure Eliminarcaracteres1Click(Sender: TObject);
    procedure Eliminarnumerosenteroscondosdecimales1Click(Sender: TObject);
    procedure Eliminarpalabrasconconsonantesrepetidas1Click(Sender: TObject);
    procedure N6Parentesiseliminarocopiarantes1Click(Sender: TObject);
    procedure N12xxminutosyxxsegundos1Click(Sender: TObject);
    procedure Convertiraarreglodevectores1Click(Sender: TObject);
    procedure Ordenarpareimparalamitaddescendente1Click(Sender: TObject);
    procedure ContarVecesRepetidasdenNmero1Click(Sender: TObject);
    procedure Compararsin2estaincluidoenn11Click(Sender: TObject);
    procedure EliminarDigitoenposocionn1Click(Sender: TObject);
    procedure Or1Click(Sender: TObject);
    procedure Contarpalabrasconsrepetidas1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Mostrar3Click(Sender: TObject);
    procedure Modificarxposicion1Click(Sender: TObject);
    procedure Eliminarnelemento1Click(Sender: TObject);
  private
    { Private declarations }
  public
    n:Numeros;
    c:cadenas;
    v:vectores;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Cadenas2Click(Sender: TObject);
begin
  c.registrar(edit1.text);
end;

procedure TForm1.Compararsin2estaincluidoenn11Click(Sender: TObject);
begin
  label1.Caption:=c.n2contn1(edit2.text);
end;

procedure TForm1.Contardigitos1Click(Sender: TObject);
begin
  label1.Caption:=IntToStr(n.contdig(StrToInt(edit1.text)));
end;

procedure TForm1.Contarpalabrasconsrepetidas1Click(Sender: TObject);
begin
  label1.caption:=IntToStr(c.examen);
end;

procedure TForm1.ContarVecesRepetidasdenNmero1Click(Sender: TObject);
begin
  label1.Caption:=Inttostr(n.contnumrep(strtoint(edit2.text)));
end;

procedure TForm1.Convertiraarreglodevectores1Click(Sender: TObject);
begin
  n.convectnum;
end;

procedure TForm1.Eliminarcaracteres1Click(Sender: TObject);
begin
  c.elmcars(StrToInt(edit1.text),StrToInt(edit2.text))
end;

procedure TForm1.EliminarDigitoenposocionn1Click(Sender: TObject);
begin
  n.elmdig(strtoint(edit2.text));
end;

procedure TForm1.EliminarMayorDigitoPrimo1Click(Sender: TObject);
begin
  n.elmmaydigprim;
end;

procedure TForm1.Eliminarnelemento1Click(Sender: TObject);
begin
  v.delelem(StrToInt(edit2.Text));
end;

procedure TForm1.Eliminarnnumerorepetidas1Click(Sender: TObject);
begin
  n.elmnnumrep(strtoint(edit2.text));
end;

procedure TForm1.Eliminarnumerosenteroscondosdecimales1Click(Sender: TObject);
begin
  c.elmnumdosdec;
end;

procedure TForm1.Eliminarpalabrasconconsonantesrepetidas1Click(Sender: TObject);
begin
  c.elmconsrep;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  n:=Numeros.Create;
  c:=cadenas.Create;
  v:=vectores.Create;
  StringGrid1.ColCount := 7;
  StringGrid1.RowCount := 1;
  StringGrid1.DefaultRowHeight:=40;
  StringGrid1.DefaultColWidth:=80;
end;

procedure TForm1.Modificarxposicion1Click(Sender: TObject);
begin
  v.modelem(StrToInt(edit2.Text),StrToInt(Edit1.Text));
end;

procedure TForm1.Mostrar1Click(Sender: TObject);
begin
  label1.Caption:=n.mostrarnum;
end;

procedure TForm1.Mostrar2Click(Sender: TObject);
begin
  label1.Caption:=c.mostrar;
end;

procedure TForm1.Mostrar3Click(Sender: TObject);
begin
  label1.Caption:=FloatToStr(v.mostrarnvect(StrToInt(edit1.text)));
end;

procedure TForm1.Mostrarmayordigitoprimo1Click(Sender: TObject);
begin
  label1.Caption:=inttostr(n.maydigprim(strtoint(edit1.text)));
end;

procedure TForm1.N12xxminutosyxxsegundos1Click(Sender: TObject);
begin
  label1.Caption:=c.convhorlit;
end;

procedure TForm1.N6Parentesiseliminarocopiarantes1Click(Sender: TObject);
begin
  c.partenabcerr;
end;

procedure TForm1.Numeros2Click(Sender: TObject);
begin
  n.registrar(StrToInt(edit1.text));
end;

procedure TForm1.Or1Click(Sender: TObject);
begin
  n.ordnummenor;
end;

procedure TForm1.Ordenarpareimparalamitaddescendente1Click(Sender: TObject);
begin
  n.ordparimprmit;
end;

procedure TForm1.Registrar1Click(Sender: TObject);
var I:Integer; num:Real;
begin
  I:=0; v.emptyvec;
  while StringGrid1.Cells[I,0]<>'' do
  begin
    num:=StrToFloat(StringGrid1.Cells[I,0]);
    v.addend(num);
    Inc(I);
  end;
end;

end.
