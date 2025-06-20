unit formalum;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, clasevectnotas;

type
  Tformalumnos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    SGridLista: TStringGrid;
    Button1: TButton;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure mostrarvect;
  public
    { Public declarations }
  end;

var
  formalumnos: Tformalumnos;
  N:Notas;
implementation

{$R *.dfm}

procedure Tformalumnos.Button1Click(Sender: TObject);
var a:Alumno;
begin
  a.Registro:=StrToInt(Edit1.Text);
  a.Nombre:=Edit2.text;
  a.FechaNac:=StrToDate(Edit3.Text);
  a.Materia:=Edit4.text;
  a.Nota:=StrToInt(Edit5.text);
  N.addElement(a);
  mostrarvect;
end;

procedure Tformalumnos.FormCreate(Sender: TObject);
begin
  N:=Notas.Create;
  SGridLista.Cells[0,0]:='Registro';
  SGridLista.Cells[1,0]:='Nombre';
  SGridLista.Cells[2,0]:='F.Nacim';
  SGridLista.Cells[3,0]:='Materia';
  SGridLista.Cells[4,0]:='Nota';

  //Click derecho en Build Configurations - Edit para configurar
  //Primer formulario
end;

procedure Tformalumnos.mostrarvect;
var I: Integer; a:Alumno;
begin
  SGridLista.RowCount:=N.Dim+1;
  for I := 1 to N.Dim do
  begin
    a:=N.getElement(i);
    SGridLista.Cells[0,i]:=IntToStr(a.Registro);
    SGridLista.Cells[1,i]:=a.Nombre;
    SGridLista.Cells[2,i]:=DateToStr(a.FechaNac);
    SGridLista.Cells[3,i]:=a.Materia;
    SGridLista.Cells[4,i]:=IntTostr(a.Nota);
  end;
  label6.Caption:=IntToStr(N.promedio div N.NroAlumnos);
end;

end.
