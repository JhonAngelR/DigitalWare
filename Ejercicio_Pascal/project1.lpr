Program project1;
uses crt;
Const
  Longitud = 6;
Type
  Cantidad = 1..Longitud;
Var
  Vec:array[Cantidad]of integer=(9,10,8,3,1,2);
  i,j,k,Aux:integer;
Procedure Visualizar(Vec:array of integer);
begin
  for i:=0 to Longitud-1 do
      write(Vec[i],' ');
  writeln;
end;

Procedure Organizar(Vec:array of integer);
begin

  for k:=0 to Longitud-1 do
        for j:=0 to Longitud-1 do
        if Vec[j]>Vec[j+1] then begin
          Aux:=Vec[j];
          Vec[j]:=Vec[j+1];
          Vec[j+1]:=Aux;
        end;
  write('Vector organizado: ');
  Visualizar(Vec);
end;

begin
  write('Vector inicial: ');
  Visualizar(Vec);
  Organizar(Vec);
  readkey;
end.
