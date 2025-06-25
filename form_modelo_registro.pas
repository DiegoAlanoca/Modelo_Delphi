unit form_modelo_registro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.Buttons,
  ClaseRegistroVect, Vcl.Menus;

type
  TForm3 = class(TForm)
    SGridLista: TStringGrid;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    MainMenu1: TMainMenu;
    MetodosyFunciones1: TMenuItem;
    MetodosyFunciones2: TMenuItem;
    MostrarRegistros1: TMenuItem;
    QuickShortDato6Descendete1: TMenuItem;
    BurbujaDescendente1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MetodosyFunciones2Click(Sender: TObject);
    procedure MostrarRegistros1Click(Sender: TObject);
    procedure QuickShortDato6Descendete1Click(Sender: TObject);
    procedure BurbujaDescendente1Click(Sender: TObject);
  private
    { Private declarations }
    procedure MostrarVect;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  r:Registros;
implementation

{$R *.dfm}

procedure TForm3.BurbujaDescendente1Click(Sender: TObject);
begin
  r.burbujaDscConDat6;
end;

procedure TForm3.Button1Click(Sender: TObject);
var a:Datos;
begin
  a.dato1:=edit1.Text;
  a.dato2:=edit2.Text;
  a.dato3:=edit3.Text;
  a.dato4:=edit4.Text;
  a.dato5:=edit5.Text;
  a.dato6:=StrToInt(edit6.Text);
  a.dato7:=0;
  r.addElement(a);
  MostrarVect;
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  I: Integer;
begin
  r.burbujaDscConDat6;
  MostrarVect;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  r:=Registros.Create;
  SGridLista.Cells[0,0]:='Dato 1';
  SGridLista.Cells[1,0]:='Dato 2';
  SGridLista.Cells[2,0]:='Dato 3';
  SGridLista.Cells[3,0]:='Dato 4';
  SGridLista.Cells[4,0]:='Dato 5';
  SGridLista.Cells[5,0]:='Dato 6';
  SGridLista.Cells[6,0]:='Dato 7';
end;


procedure TForm3.MetodosyFunciones2Click(Sender: TObject);
begin
  r.ExeQuickShortDato6Asc;
end;

procedure TForm3.MostrarRegistros1Click(Sender: TObject);
begin
  MostrarVect;
end;

procedure TForm3.MostrarVect;
var I: Integer; e:Datos;
begin
  SGridLista.RowCount:=r.getDim+1;
  for I := 1 to r.getDim do
  begin
    e:=r.getElement(I);
    SGridLista.Cells[0,I]:=e.dato1;
    SGridLista.Cells[1,I]:=e.dato2;
    SGridLista.Cells[2,I]:=e.dato3;
    SGridLista.Cells[3,I]:=e.dato4;
    SGridLista.Cells[4,I]:=e.dato5;
    SGridLista.Cells[5,I]:=IntToStr(e.dato6);
    SGridLista.Cells[6,I]:=IntToStr(e.dato7);
  end;
end;

procedure TForm3.QuickShortDato6Descendete1Click(Sender: TObject);
begin
  r.ExeQuickShortDato6Desc;
end;

end.
