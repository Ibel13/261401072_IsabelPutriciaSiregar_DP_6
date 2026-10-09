
program Soal3;

var
  N, pilihan, i: integer;

begin
  write('Masukkan N: ');
  readln(N);

  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilih kategori: ');
  readln(pilihan);

  i := 1;

  while i <= N do
  begin
    if (pilihan = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;
    end;

    if (pilihan = 2) and (i mod 2 <> 0) then
    begin
      i := i + 1;
      continue;
    end;

    if i mod 5 = 0 then
    begin
      i := i + 1;
      continue;
    end;

    write(i, ' ');
    i := i + 1;
  end;

  writeln;
end.