unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPerson, uMitarbeiter;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private-Deklarationen }
    fMitarbeiter1:TMitarbeiter;
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  fMitarbeiter1 := TMitarbeiter.Create('Till','Frers',20,99999,2);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Assigned(fMitarbeiter1) then
  begin
    Application.MessageBox(PChar( 'Vorname = '+fMitarbeiter1.p_FirstName+#10+#13+
                                  'Nachname = '+fMitarbeiter1.p_LastName+#10+#13+
                                  'Alter = '+IntToStr(fMitarbeiter1.p_Age)+#10+#13+
                                  'Gehalt = '+IntToStr(fMitarbeiter1.m_Salary)+#10+#13+
                                  'Abteilung(ID) = '+IntToStr(fMitarbeiter1.m_Department)),'Mitarbeiter Daten',MB_OK);
  end
  else
  begin
    Application.MessageBox('Es wurde noch kein Objekt erstellt','Achtung',MB_OK);
    Exit;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  fMitarbeiter1.m_Salary := 666;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fMitarbeiter1);
end;

end.
