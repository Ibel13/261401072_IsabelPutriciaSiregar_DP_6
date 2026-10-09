program Soal1;

var
  N, i: integer;
  harga: real;
  total, diskon, bayar: real;

begin
  write('Masukkan jumlah barang: ');
  readln(N);

  total := 0;

  for i := 1 to N do
  begin
    write('Masukkan harga barang ke-', i, ': Rp');
    readln(harga);
    total := total + harga;
  end;

  if total < 100000 then
    diskon := 0
  else if total < 500000 then
    diskon := total * 0.10
  else
    diskon := total * 0.20;

  bayar := total - diskon;

  writeln;
  writeln('Total sebelum diskon: Rp', total:0:0);
  writeln('Besar diskon: Rp', diskon:0:0);
  writeln('Total bayar akhir: Rp', bayar:0:0);
end.