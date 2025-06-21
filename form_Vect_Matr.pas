unit form_Vect_Matr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,clasevectores, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Grids, Vcl.Buttons;

type
  TForm2 = class(TForm)
    posicion: TEdit;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    elemento: TEdit;
    Label2: TLabel;
    resultado: TLabel;
    vectorstr: TStringGrid;
    Label3: TLabel;
    Label4: TLabel;
    ScrollBarVect: TScrollBar;
    BitBtn1: TBitBtn;
    StringGridMatr: TStringGrid;
    ScrollBarMatr: TScrollBar;
    ScrollBar1: TScrollBar;
    Vectores1: TMenuItem;
    Matrices1: TMenuItem;
    Registrar1: TMenuItem;
    Mostrartodo1: TMenuItem;
    BurbujaAscendente1: TMenuItem;
    EliminarnElementoPosicion1: TMenuItem;
    ModificarelementoPosEle1: TMenuItem;
    MostrarVectorPos2: TMenuItem;
    BurbujaDescendente1: TMenuItem;
    QuicjShort1: TMenuItem;
    MergeSort1: TMenuItem;
    BusquedaSecuencial1: TMenuItem;
    BuquedaBinaria1: TMenuItem;
    VectoresString1: TMenuItem;
    VectoresString2: TMenuItem;
    Registrar2: TMenuItem;
    Registrar3: TMenuItem;
    N4Contarcuantasvecesserepiteunelem1: TMenuItem;
    N5Insertarstringdereales2361: TMenuItem;
    InsertarElemenPos2: TMenuItem;
    N6ordenarprimosynoprimos1: TMenuItem;
    procedure ScrollBarVectChange(Sender: TObject);
    procedure vectorstrDrawCell(Sender: TObject; ACol, ARow: LongInt;
      Rect: TRect; State: TGridDrawState);
    procedure ScrollBarMatrChange(Sender: TObject);
    procedure StringGridMatrDrawCell(Sender: TObject; ACol, ARow: LongInt;
      Rect: TRect; State: TGridDrawState);
    procedure ScrollBar1Change(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Mostrartodo1Click(Sender: TObject);
    procedure EliminarnElementoPosicion1Click(Sender: TObject);
    procedure ModificarelementoPosEle1Click(Sender: TObject);
    procedure MostrarVectorPos2Click(Sender: TObject);
    procedure BurbujaAscendente1Click(Sender: TObject);
    procedure BurbujaDescendente1Click(Sender: TObject);
    procedure QuicjShort1Click(Sender: TObject);
    procedure MergeSort1Click(Sender: TObject);
    procedure BusquedaSecuencial1Click(Sender: TObject);
    procedure BuquedaBinaria1Click(Sender: TObject);
    procedure Registrar2Click(Sender: TObject);
    procedure VectoresString2Click(Sender: TObject);
    procedure Registrar3Click(Sender: TObject);
    procedure N4Contarcuantasvecesserepiteunelem1Click(Sender: TObject);
    procedure N5Insertarstringdereales2361Click(Sender: TObject);
    procedure InsertarElemenPos2Click(Sender: TObject);
    procedure N6ordenarprimosynoprimos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  vectr : vectores; //Comienza en 0 stringrid[Columna,Fila];
  vectstr : vectorescadenas;
implementation

{$R *.dfm}

procedure TForm2.BuquedaBinaria1Click(Sender: TObject);
begin
  resultado.caption:=FloatToStr(vectr.busquebin(StrToFloat(elemento.Text)));
end;

procedure TForm2.BurbujaAscendente1Click(Sender: TObject);
begin
  vectr.burbujaAsc;
end;

procedure TForm2.BurbujaDescendente1Click(Sender: TObject);
begin
  vectr.burbujaDsc;
end;

procedure TForm2.BusquedaSecuencial1Click(Sender: TObject);
begin
  resultado.Caption:=IntToStr(vectr.busquedasec(StrToFloat(elemento.Text)));
end;

procedure TForm2.EliminarnElementoPosicion1Click(Sender: TObject);
begin
  vectr.delelem(StrToInt(posicion.Text));
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  vectr:=vectores.Create;
  vectstr:=vectorescadenas.create;
end;

procedure TForm2.InsertarElemenPos2Click(Sender: TObject);
begin
  vectr.InsElemVect(StrToFloat(elemento.Text),StrToInt(posicion.Text));
end;

procedure TForm2.MergeSort1Click(Sender: TObject);
begin
  vectr.mergesortexe;
end;

procedure TForm2.ModificarelementoPosEle1Click(Sender: TObject);
begin
  vectr.modelem(StrToInt(posicion.text),StrToFloat(elemento.text));
end;

procedure TForm2.Mostrartodo1Click(Sender: TObject);
var
  I: Integer;
begin
  I:=0;
  while (I<=vectorstr.ColCount-1)and(I+1<=vectr.dimension) do
  begin
    vectorstr.Cells[I,0]:=FloatToStr(vectr.vect[I+1]);
    Inc(I);
  end;

end;

procedure TForm2.MostrarVectorPos2Click(Sender: TObject);
begin
  resultado.Caption:=FloatToStr(vectr.mostrarnvect(StrToInt(posicion.Text)));
end;

procedure TForm2.N4Contarcuantasvecesserepiteunelem1Click(Sender: TObject);
begin
  resultado.Caption:=IntToStr(vectstr.modeloexam4(elemento.Text));
end;

procedure TForm2.N5Insertarstringdereales2361Click(Sender: TObject);
begin
  vectr.modelexam5(elemento.Text);
end;

procedure TForm2.N6ordenarprimosynoprimos1Click(Sender: TObject);
begin
  vectr.modelexam6;
end;

procedure TForm2.QuicjShort1Click(Sender: TObject);
begin
  vectr.quickshortexe;
end;

procedure TForm2.Registrar1Click(Sender: TObject);
var I:Word;
begin
  vectr.emptyvec; I:=0;
  while (I<=vectorstr.ColCount-1)and(vectorstr.Cells[I,0]<>'') do
  begin
    vectr.addend(StrToFloat(vectorstr.Cells[I,0]));
    Inc(I);
  end;
end;

procedure TForm2.Registrar2Click(Sender: TObject);
var I:Word;
begin
  vectstr.emptyvec; I:=0;
  while (I<=vectorstr.ColCount-1)and(vectorstr.Cells[I,0]<>'') do
  begin
    vectstr.addendelem(vectorstr.Cells[I,0]);
    Inc(I);
  end;
end;

procedure TForm2.Registrar3Click(Sender: TObject);
var I: Integer;
begin
  I:=0;
  while (I<=vectorstr.ColCount-1)and(I+1<=vectstr.dimensioncad) do
  begin
    vectorstr.Cells[I,0]:=vectstr.vectcad[I+1];
    Inc(I);
  end;
end;

procedure TForm2.ScrollBar1Change(Sender: TObject);
begin
  StringGridMatr.RowCount:=ScrollBar1.Position
end;

procedure TForm2.ScrollBarMatrChange(Sender: TObject);
begin
  StringGridMatr.ColCount:=ScrollBarMatr.Position;
end;

procedure TForm2.ScrollBarVectChange(Sender: TObject);
begin
  vectorstr.ColCount:=ScrollBarVect.Position;

end;

procedure TForm2.StringGridMatrDrawCell(Sender: TObject; ACol, ARow: LongInt;
  Rect: TRect; State: TGridDrawState);
begin
{  with StringGridMatr.Canvas do
    begin
      Pen.Color := clBlack;
      Pen.Width := 1;
      MoveTo(Rect.Left, Rect.Top);
      LineTo(Rect.Right, Rect.Top);
      LineTo(Rect.Right, Rect.Bottom);
      LineTo(Rect.Left, Rect.Bottom);
      LineTo(Rect.Left, Rect.Top);
    end;                             }
end;

procedure TForm2.VectoresString2Click(Sender: TObject);
begin
  resultado.Caption:=IntToStr(vectstr.modelexam3);
end;

procedure TForm2.vectorstrDrawCell(Sender: TObject; ACol, ARow: LongInt;
  Rect: TRect; State: TGridDrawState);
var s:String;
begin
{    with vectorstr.Canvas do
    begin
      s := vectorstr.Cells[ACol, ARow];
      TextOut(Rect.Left + 2, Rect.Top + 2, s);
      Pen.Color := clBlack;
      Pen.Width := 1;
      MoveTo(Rect.Left, Rect.Top);
      LineTo(Rect.Right, Rect.Top);
      LineTo(Rect.Right, Rect.Bottom);
      LineTo(Rect.Left, Rect.Bottom);
      LineTo(Rect.Left, Rect.Top);
    end;                            }
end;

end.
