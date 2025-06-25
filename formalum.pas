unit formalum;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, clasevectnotas,
  Vcl.Buttons;

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
    Label7: TLabel;
    Edit6: TEdit;
    BitBtn1: TBitBtn;
    calcular: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure calcularClick(Sender: TObject);
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
var a:Equipos;
begin
  a.NombreDeEquipo:=Edit1.Text;
  a.PartidosGanados:=StrToInt(Edit2.text);
  a.PartidosEmpatados:=StrToInt(Edit3.Text);
  a.PartidosPerdidos:=StrToInt(Edit4.text);
  a.GolesFavor:=StrToInt(Edit5.text);
  a.GolesContra:=StrToInt(Edit6.Text);
  a.Puntos:=StrToInt(Edit2.text)*3+StrToInt(Edit3.Text);
  a.DiferenciaDeGoles:=StrToFloat(Edit5.text)-StrToFloat(Edit6.Text);
  N.addElement(a);
  mostrarvect;
end;



procedure Tformalumnos.calcularClick(Sender: TObject);
var e:Equipos; NotasTemp:Notas;
  I,J,K,PosMayor,PuntosMayor,PuntosMayorTemp: Integer;
begin
  N.burbujaDsc;
  N.OrdPuntDiferGol;
  mostrarvect;
end;

procedure Tformalumnos.FormCreate(Sender: TObject);
begin
  N:=Notas.Create;
  SGridLista.Cells[0,0]:='Nombre de Equipo';
  SGridLista.Cells[1,0]:='Partidos Gan.';
  SGridLista.Cells[2,0]:='Partidos Emp.';
  SGridLista.Cells[3,0]:='Partidos Perd.';
  SGridLista.Cells[4,0]:='Goles Favor';
  SGridLista.Cells[5,0]:='Goles Contra';
  SGridLista.Cells[6,0]:='Puntos';
  //Click derecho en Build Configurations - Edit para configurar
  //Primer formulario
end;

procedure Tformalumnos.mostrarvect;
var I: Integer; a:Equipos;
begin
  SGridLista.RowCount:=N.Dim+1;
  for I := 1 to N.Dim do
  begin
    a:=N.getElement(i);
    SGridLista.Cells[0,i]:=a.NombreDeEquipo;
    SGridLista.Cells[1,i]:=IntToStr(a.PartidosGanados);
    SGridLista.Cells[2,i]:=IntToStr(a.PartidosEmpatados);
    SGridLista.Cells[3,i]:=IntToStr(a.PartidosPerdidos);
    SGridLista.Cells[4,i]:=IntTostr(a.GolesFavor);
    SGridLista.Cells[5,i]:=IntTostr(a.GolesContra);
    SGridLista.Cells[6,i]:=IntTostr(a.Puntos);
  end;
  label6.Caption:=IntToStr(N.promedio div N.NroEquipos);
end;

end.
