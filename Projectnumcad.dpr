program Projectnumcad;

uses
  Vcl.Forms,
  formprinc in 'formprinc.pas' {Form1},
  clasenum in 'clasenum.pas',
  clasecad in 'clasecad.pas',
  clasevectores in 'clasevectores.pas',
  formalum in 'formalum.pas' {formalumnos},
  clasevectnotas in 'clasevectnotas.pas',
  form_Vect_Matr in 'form_Vect_Matr.pas' {Form2},
  ClaseMatrices in 'ClaseMatrices.pas',
  form_modelo_registro in 'form_modelo_registro.pas' {Form3},
  ClaseRegistroVect in 'ClaseRegistroVect.pas',
  form_modelo_Vect in 'form_modelo_Vect.pas' {Form4},
  ModeloVectores in 'ModeloVectores.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm2, Form2);
  //TForm3, Form3
  Application.CreateForm(Tformalumnos, formalumnos);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
