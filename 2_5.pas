var
  m: array [1..8, 1..8] of integer;
  m1: array [1..8] of integer;
begin
  var max,a:integer;
  for var i := 1 to 8 do
  begin
    for var j := 1 to 8 do
    begin
      m[i, j] := random(0, 10);
      print(m[i, j]);
    end;
    println();
  end;
  for var i := 1 to 8 do
  begin
    for var j := 1 to 8 do
    begin
      if m[i, j] > max then max := m[i, j]; 
    end;
    m1[i] := max;
    max := 0;
  end;
  for var i:=1 to 8 do
  begin
    for var j :=1 to 8 do
    begin
      if m[i,j] = m1[i] then a:=a+1;
    end;
    if a = 1 then m1[i]:=1
    else m1[i]:=-1;
    a:=0
  end;
  println(m1);
end.