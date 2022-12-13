var
  m: array of integer;
  m2: array of integer;

function f(n: integer): integer;
var
  si, sj: integer;
begin
  for var i := 0  to n-1 do if m[i] > 0 then si := si + m[i];
  for var j := 0 to n-1 do if m2[j] > 0 then sj := sj + m2[j];
  if si > sj then
  begin
    for var j := 0 to n-1 do m2[j] := m2[j] * 10;
    println(m2);
  end
  else
    begin
    for var i := 0 to n-1 do m[i] := m[i] * 10;
    println(m);
  end
end;
begin
  var n := readinteger;
  m := new integer[n];
  m2 := new integer[n];
  println('Введите первый массив');
  for var i := 0 to n-1 do
    m[i] := readinteger();
  println('Введите второй массив');
  for var j := 0 to n-1 do
    m2[j] := readinteger();
  f(n)
end.