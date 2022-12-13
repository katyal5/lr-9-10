var
  a, b: integer;
  m: array of integer;
  
function f(n: integer): integer;
begin
  for var i := 1 to n do
  begin
    if m[i] > 0 then
    begin
      a := i;
      break;
    end
    else
      a := 0;
  end;
  for var i := 1 to n do if (m[i] < 0) then b := i;
  println('Первый положительный элемент = ', a);
  println('Последний отрицательный элемент = ',b);
end;

begin
  var n := readinteger;
  setlength(m, n + 1);
  for var i := 1 to n do m[i] := readinteger();
  f(n);
end.