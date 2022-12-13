var
  m1: array [1..8, 1..6] of integer;
  m2: array[1..8] of integer;

begin
  for var i := 1 to 8 do
  begin
    for var j := 1 to 6 do
    begin
      m1[i, j] := random(-5,15);
      print(m1[i,j]);
    end;
    println();
  end;
  for var i := 1 to 8 do
  begin
    for var j := 1 to 6 do
    begin
      if m1[i, j] < 0 then
      begin
        m2[i] := -1;
        break;
      end
      else
        m2[i] := 1;
    end;
  end;
  println(m2);
end.