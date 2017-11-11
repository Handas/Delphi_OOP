program OOP;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  uPerson in 'uPerson.pas',
  uMitarbeiter in 'uMitarbeiter.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
