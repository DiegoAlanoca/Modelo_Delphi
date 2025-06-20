program Projectnumcad;

uses
  Vcl.Forms,
  formprinc in 'formprinc.pas' {Form1},
  clasenum in 'clasenum.pas',
  clasecad in 'clasecad.pas',
  clasevectores in 'clasevectores.pas',
  formalum in 'formalum.pas' {formalumnos},
  clasevectnotas in 'clasevectnotas.pas',
  form_Vect_Matr in 'form_Vect_Matr.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tformalumnos, formalumnos);
  Application.Run;
end.
