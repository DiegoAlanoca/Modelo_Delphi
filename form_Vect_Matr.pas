unit form_Vect_Matr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,clasevectores, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Grids, Vcl.Buttons,ClaseMatrices;

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
    Stringquickshort1: TMenuItem;
    StringquickshortAscendente1: TMenuItem;
    ModeloExamen71: TMenuItem;
    ModeloExamen91: TMenuItem;
    Registrar4: TMenuItem;
    Mostrar1: TMenuItem;
    MostrarFilas1: TMenuItem;
    MostrarColumnas1: TMenuItem;
    MostrarColumnas2: TMenuItem;
    EliminarColumnasPos1: TMenuItem;
    InsertarFilaPos1: TMenuItem;
    InsertarFilaPos2: TMenuItem;
    Modelo11: TMenuItem;
    Modelo21: TMenuItem;
    Modelo31: TMenuItem;
    Modelo41: TMenuItem;
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
    procedure Stringquickshort1Click(Sender: TObject);
    procedure StringquickshortAscendente1Click(Sender: TObject);
    procedure ModeloExamen71Click(Sender: TObject);
    procedure ModeloExamen91Click(Sender: TObject);
    procedure Registrar4Click(Sender: TObject);
    procedure Mostrar1Click(Sender: TObject);
    procedure MostrarFilas1Click(Sender: TObject);
    procedure MostrarColumnas1Click(Sender: TObject);
    procedure MostrarColumnas2Click(Sender: TObject);
    procedure EliminarColumnasPos1Click(Sender: TObject);
    procedure InsertarFilaPos1Click(Sender: TObject);
    procedure InsertarFilaPos2Click(Sender: TObject);
    procedure Modelo11Click(Sender: TObject);
    procedure Modelo21Click(Sender: TObject);
    procedure Modelo31Click(Sender: TObject);
    procedure Modelo41Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  vectr : vectores; //Comienza en 0 stringrid[Columna,Fila];
  vectstr : vectorescadenas;
  m:Matriz;
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

procedure TForm2.EliminarColumnasPos1Click(Sender: TObject);
begin
  M.delColumna((StrToInt(posicion.Text)));
end;

procedure TForm2.EliminarnElementoPosicion1Click(Sender: TObject);
begin
  vectr.delelem(StrToInt(posicion.Text));
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  vectr:=vectores.Create;
  vectstr:=vectorescadenas.create;
  m:=Matriz.create;
end;

procedure TForm2.InsertarElemenPos2Click(Sender: TObject);
begin
  vectr.InsElemVect(StrToFloat(elemento.Text),StrToInt(posicion.Text));
end;

procedure TForm2.InsertarFilaPos1Click(Sender: TObject);
begin
  M.insFila((StrToInt(posicion.Text)));
end;

procedure TForm2.InsertarFilaPos2Click(Sender: TObject);
begin
  M.insColumna((StrToInt(posicion.Text)));
end;

procedure TForm2.MergeSort1Click(Sender: TObject);
begin
  vectr.mergesortexe;
end;

procedure TForm2.Modelo11Click(Sender: TObject);
begin
  resultado.Caption:=FloatToStr(M.ModelExam1);
end;

procedure TForm2.Modelo21Click(Sender: TObject);
begin
  M.ModelExam2;
end;

procedure TForm2.Modelo31Click(Sender: TObject);
begin
  Resultado.Caption:=IntToStr(M.ModeloExam3);
end;

procedure TForm2.Modelo41Click(Sender: TObject);
begin
  Resultado.Caption:=FloatToStr(M.ModeloExam4);
end;

procedure TForm2.ModeloExamen71Click(Sender: TObject);
begin
  vectstr.ModeloExam7;
end;

procedure TForm2.ModeloExamen91Click(Sender: TObject);
begin
  vectstr.ModeloExam9;
end;

procedure TForm2.ModificarelementoPosEle1Click(Sender: TObject);
begin
  vectr.modelem(StrToInt(posicion.text),StrToFloat(elemento.text));
end;

procedure TForm2.Mostrar1Click(Sender: TObject);
var I,J: Integer;
begin
  StringGridMatr.RowCount:=M.Filas;
  StringGridMatr.ColCount:=M.Columnas;
  for I := 1 to M.Filas do
    for J := 1 to M.Columnas do
      StringGridMatr.Cells[J-1,I-1]:=FloatToStr(M.getValue(I,J));
end;

procedure TForm2.MostrarColumnas1Click(Sender: TObject);
begin
  Resultado.Caption:=IntToStr(M.Columnas);
end;

procedure TForm2.MostrarColumnas2Click(Sender: TObject);
begin
  M.delFila(StrToInt(posicion.Text));
end;

procedure TForm2.MostrarFilas1Click(Sender: TObject);
begin
  Resultado.caption:=IntToStr(m.Filas);
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

procedure TForm2.Registrar4Click(Sender: TObject);
var I,J: Integer;
begin
     M.reDimensionar(StringGridMatr.RowCount,StringGridMatr.ColCount);
     for I := 1 to M.Filas do
        for J := 1 to M.Columnas do
            M.setValue(I,J,StrToFloat(StringGridMatr.Cells[J-1,I-1]));
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

procedure TForm2.Stringquickshort1Click(Sender: TObject);
begin
  vectstr.StringQuickshortExeDesc;
end;

procedure TForm2.StringquickshortAscendente1Click(Sender: TObject);
begin
  vectstr.StringQuickshortExeAsc;
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
