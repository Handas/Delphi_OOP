unit uMitarbeiter;

interface

uses
  uPerson, Dialogs;

type
  //TPerson ist die Superklasse und TMitarbeiter die Subklasse
  TMitarbeiter = class(TPerson)
    strict private
      //Private Stuff
      //Variablen Zugriff nur innerhalb von TMitarbeiter
      fSalary:integer;
      fDepartment:integer;
      //Dienen zum befüllen der Variablen von außerhalb (über die jeweilige Property)
      procedure Setgehalt(gehalt: integer);
      procedure Setabteilung(abteilung: integer);
    public
      //Public Stuff
      constructor Create(vname, nname: String; alter, gehalt, abteilung: integer);
      //Property für den Zugriff von außen
      property m_Salary: integer read fSalary write Setgehalt;
      property m_Department: integer read fDepartment write Setabteilung;
    protected
      //Protected Stuff
  end;

implementation

constructor TMitarbeiter.Create(vname, nname: String; alter, gehalt, abteilung: integer);
begin
  //inherited ruft das Ursprüngliche Create auf (TPerson)
  inherited Create(vname,nname,alter);
  fSalary:=gehalt;
  fDepartment:=abteilung;
end;

procedure TMitarbeiter.Setgehalt(gehalt: integer);
begin
  fSalary:=gehalt;
end;

procedure TMitarbeiter.Setabteilung(abteilung: integer);
begin
  fDepartment:=abteilung;
end;

end.
