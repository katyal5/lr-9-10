var
  a, b: array of integer;
  n, trye: integer;

function max(const mas1, mas2: array of integer): integer;
begin
  for var i := 0 to a.Length - 1 do
  begin
    if a[i] mod 5 = 0 then
    begin
      max := 0;
      break;
    end;
    if b[i] mod 5 = 0 then
    begin
      max := 1;
      break;
    end;
  end;
end;



function f(var mas1, mas2: array of integer): integer;
begin
  var maximum, minimal, podst1, podst2: integer;
  minimal := 100;
  maximum := -100;
  for var i := 0 to a.Length - 1 do
  begin
    if mas1[i] > maximum then
    begin
      podst1 := i;
      maximum := mas1[i];
    end;
    if mas2[i] < minimal then
    begin
      podst2 := i;
      minimal := mas2[i];
    end;
  end;
  mas1[podst1] := 0;
  for var i := 0 to a.Length - 1 do
  begin
    print(mas1[i]);
    if i > podst2 then
      mas2[i] := mas2[i] * 2;
  end;
  println;
  for var i := 0 to a.Length - 1 do
    print(mas2[i]);
end;

begin
  print('Введите размер масивов');
  read(n);
  print('Первый массив');
  setlength(a,n);
  setlength(b,n);
  for var i := 0 to a.Length - 1 do
  begin
    a[i] := random(0, 100);
    b[i] := random(0, 100);
    print(a[i]);
  end;
  println;
  print('Второй массив');
  for var i := 0 to a.Length - 1 do
    print(b[i]);
  println;
  trye := max(a, b);
  if trye = 0 then
    f(a, b)
  else
    f(b, a);
end.