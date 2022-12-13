var
  m: array [1..8, 1..8] of integer;
  m1: array [1..8] of integer;

begin
  var b: boolean;
  var a: real;
  var min := 100;
  for var i := 1 to 8 do
  begin
    for var j := 1 to 8 do
    begin
      m[i, j] := random(0,100);
      print(m[i,j]);
    end;
    println();
  end;
  for var i := 1 to 8 do
  begin
    for var j := 1 to 8 do
    begin
      if m[i, j] < min then min := m[i, j]; 
    end;
    m1[i] := min;
    min := 100;
  end;
  print('Минимальный элемент в каждой соответсвующей строке = ', m1);
  println;
  for var i := 1 to 8 do a := a + m1[i];
  a := a / 8;
  a := round(a);
  println('Среднее арефметическое = ',a);
  for var i := 1 to 8 do if m1[i] = a then
    begin
      b := true;
      break;
    end
    else
      b := false;
  if (b) then println('YES')
  else
    println('NO');
end.