var
  m: array [1..8, 1..8] of integer;
  m1: array [1..8] of integer;
begin
  for var i:=1 to 8 do
  begin
    for var j:=1 to 8 do
    begin
      m[i,j]:=random(-10, 10);
      print(m[i,j]);
    end;
    println();
  end;
  for var i:=1 to 8 do
  begin
    for var j:=1 to 7 do
    begin
      if m[i,j]+m[i, +1]=7 then
      begin
        m1[i]:=1;
        break;
      end
      else
          m1[i]:=-1;
    end;
  end;
  println(m1);
end.