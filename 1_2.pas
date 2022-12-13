var
  max, min, max2, i, a, b, v: integer;
  m: array of integer;

procedure pr1(l: integer);
begin
  var i: integer;
  for i := 1 to l do if m[i] < min then
    begin
      min := m[i];
      b := i;
    end;
  max := min;
  max2 := min;
  for i := 1 to l do
  begin
    if m[i] > max then
    begin
      max := m[i];
      a := i;
    end;
    if m[i] < 0 then if (m[i] > max2) and (m[i] < 0) then
      begin
        max2 := m[i];
        v := i;
      end;
  end;
  println(max, a); {Максимальный элемент массива и его номер}
  println(abs(min), b);{Минимальный элемент массива и его номер}
  println(max2, v); {Максимальный отрицательный элемент массива и его номер}
end;

begin
  var n := readinteger;
  setlength(m, n + 1);
  for i := 1 to n do
    m[i] := readinteger();
  pr1(n);
end.