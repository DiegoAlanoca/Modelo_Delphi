program Projectnumcad;

uses
  Vcl.Forms,
  formprinc in 'formprinc.pas' {Form1},
  clasenum in 'clasenum.pas',
  clasecad in 'clasecad.pas',
  clasevectores in 'clasevectores.pas',
  formalum in 'formalum.pas' {formalumnos},
  clasevectnotas in 'clasevectnotas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tformalumnos, formalumnos);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
