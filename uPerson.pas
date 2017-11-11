unit uPerson;

interface

uses
  Dialogs;

type
  TPerson = class(TObject)
    strict private
      //Private Stuff
      //Variablen Zugriff nur innerhalb von TPerson
      fFirstName:String;
      fLastName:String;
      fAge:integer;
      //Dienen zum bef�llen der Variablen von au�erhalb (�ber die jeweilige Property)
      procedure Setvname(vname: String);
      procedure Setnname(nname: String);
      procedure Setalter(alter: integer);
    public
      //Public Stuff
      constructor Create(vname, nname: String; alter:integer);
      //Property f�r den Zugriff von au�en
      property p_FirstName: string read fFirstName write Setvname;
      property p_LastName: string read fLastName write Setnname;
      property p_Age: integer read fAge write Setalter;
    protected
      //Protected Stuff
  end;

implementation

constructor TPerson.Create(vname, nname: String; alter:integer);
begin
  //inherited ruft das Urspr�ngliche Create auf (TObject)
  inherited Create;
  fFirstName:=vname;
  fLastName:=nname;
  fAge:=alter;
end;

procedure TPerson.Setvname(vname: String);
begin
  fFirstName:=vname;
end;

procedure TPerson.Setnname(nname: String);
begin
  fLastName:=nname;
end;

procedure TPerson.Setalter(alter: integer);
begin
  fAge:=alter;
end;

end.
