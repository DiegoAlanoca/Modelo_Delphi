unit form_modelo_Vect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.Menus,ModeloVectores,
  Vcl.Buttons,ClaseMatrices;

type
  TForm4 = class(TForm)
    ScrollBarVect: TScrollBar;
    VectorForm: TStringGrid;
    StringGridMatr: TStringGrid;
    ScrollBarMatr: TScrollBar;
    ScrollBar1: TScrollBar;
    Label1: TLabel;
    posicion: TEdit;
    Label2: TLabel;
    elemento: TEdit;
    MainMenu1: TMainMenu;
    resultado: TLabel;
    BitBtn1: TBitBtn;
    VectoresReales1: TMenuItem;
    VectoresString1: TMenuItem;
    Registar1: TMenuItem;
    Registrar1: TMenuItem;
    Mostrar1: TMenuItem;
    Mostar1: TMenuItem;
    MatricesReales1: TMenuItem;
    Registrar2: TMenuItem;
    Registrar3: TMenuItem;
    MatricesChar1: TMenuItem;
    Registrar4: TMenuItem;
    Mostrar2: TMenuItem;
    procedure ScrollBarVectChange(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBarMatrChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Registar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Mostrar1Click(Sender: TObject);
    procedure Mostar1Click(Sender: TObject);
    procedure Registrar2Click(Sender: TObject);
    procedure Registrar4Click(Sender: TObject);
    procedure Registrar3Click(Sender: TObject);
    procedure Mostrar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  vr:VectoresReales;
  vs:VectoresString;
  mr:Matriz;
  mc:MatrizChar;
implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
  vr:=VectoresReales.Create;
  vs:=VectoresString.Create;
  mr:=Matriz.Create;
  mc:=MatrizChar.Create;
end;

procedure TForm4.Mostar1Click(Sender: TObject);
var I: Integer;
begin
  I:=0;
  while (I<=VectorForm.ColCount-1)and(I+1<=vs.GetDimension) do
  begin
    VectorForm.Cells[I,0]:=vs.GetElement(I+1);
    Inc(I);
  end;
end;

procedure TForm4.Mostrar1Click(Sender: TObject);
var I: Integer;
begin
  I:=0;
  while (I<=VectorForm.ColCount-1)and(I+1<=vr.GetDimension) do
  begin
    VectorForm.Cells[I,0]:=FloatToStr(vr.GetElement(I+1));
    Inc(I);
  end;
end;

procedure TForm4.Mostrar2Click(Sender: TObject);
var I,J: Integer;
begin
  StringGridMatr.RowCount:=mc.Filas;
  StringGridMatr.ColCount:=mc.Columnas;
  for I := 1 to mc.Filas do
    for J := 1 to mc.Columnas do
      StringGridMatr.Cells[J-1,I-1]:=mc.getValue(I,J);
end;

procedure TForm4.Registar1Click(Sender: TObject);
var I:Word;
begin
  I:=0;
  while (I<=VectorForm.ColCount-1)and(VectorForm.Cells[I,0]<>'') do
  begin
    vr.AddElement(StrToFloat(VectorForm.Cells[I,0]));
    Inc(I);
  end;
end;

procedure TForm4.Registrar1Click(Sender: TObject);
var I:Word;
begin
  I:=0;
  while (I<=VectorForm.ColCount-1)and(VectorForm.Cells[I,0]<>'') do
  begin
    vs.AddElement(VectorForm.Cells[I,0]);
    Inc(I);
  end;
end;

procedure TForm4.Registrar2Click(Sender: TObject);
var I,J: Integer;
begin
  mr.reDimensionar(StringGridMatr.RowCount,StringGridMatr.ColCount);
  for I := 1 to mr.Filas do
    for J := 1 to mr.Columnas do
      mr.setValue(I,J,StrToFloat(StringGridMatr.Cells[J-1,I-1]));
end;

procedure TForm4.Registrar3Click(Sender: TObject);
var I,J: Integer;
begin
  StringGridMatr.RowCount:=mr.Filas;
  StringGridMatr.ColCount:=mr.Columnas;
  for I := 1 to mr.Filas do
    for J := 1 to mr.Columnas do
      StringGridMatr.Cells[J-1,I-1]:=FloatToStr(mr.getValue(I,J));
end;

procedure TForm4.Registrar4Click(Sender: TObject);
var I,J: Integer;
begin
  mc.ReDimensionar(StringGridMatr.RowCount,StringGridMatr.ColCount);
  for I := 1 to mc.Filas do
    for J := 1 to mc.Columnas do
      mc.setValue(I,J,StringGridMatr.Cells[J-1,I-1][1]);
end;

procedure TForm4.ScrollBar1Change(Sender: TObject);
begin
  StringGridMatr.RowCount:=ScrollBar1.Position;
end;

procedure TForm4.ScrollBarMatrChange(Sender: TObject);
begin
  StringGridMatr.ColCount:=ScrollBarMatr.Position;
end;

procedure TForm4.ScrollBarVectChange(Sender: TObject);
begin
  VectorForm.ColCount:=ScrollBarVect.Position;
end;

end.
