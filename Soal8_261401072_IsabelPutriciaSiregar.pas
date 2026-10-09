
program Soal8;

var
  golongan: char;
  jam: integer;
  gajiPokok, lembur, bonus, total: longint;

begin
  write('Golongan karyawan (A/B/C): ');
  readln(golongan);
  write('Total jam kerja per minggu: ');
  readln(jam);

  gajiPokok := 0;
  lembur := 0;
  bonus := 0;

  case golongan of
    'A': gajiPokok := 1500000;
    'B': gajiPokok := 2000000;
    'C': gajiPokok := 2500000;
  else
    writeln('Golongan tidak valid');
  end;

  if (golongan = 'A') or
     (golongan = 'B') or
     (golongan = 'C') then
  begin
    if jam > 40 then
      lembur := (jam - 40) * 20000;

    if (golongan = 'C') and (jam > 50) then
      bonus := 100000;

    total := gajiPokok + lembur + bonus;

    writeln('Gaji pokok: Rp', gajiPokok);
    writeln('Gaji lembur: Rp', lembur);
    writeln('Bonus: Rp', bonus);
    writeln('Total gaji akhir: Rp', total);
  end;
end.