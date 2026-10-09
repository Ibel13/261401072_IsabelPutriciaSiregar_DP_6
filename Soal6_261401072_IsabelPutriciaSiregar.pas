
program Soal6;

var
  tugas, UTS, UAS, kehadiran: real;
  akhir: real;
  huruf: char;

begin
  write('Nilai tugas: ');
  readln(tugas);
  write('Nilai UTS: ');
  readln(UTS);
  write('Nilai UAS: ');
  readln(UAS);
  write('Kehadiran (%): ');
  readln(kehadiran);

  akhir := tugas * 0.30 + UTS * 0.30 + UAS * 0.40;

  if akhir >= 85 then
    huruf := 'A'
  else if akhir >= 75 then
    huruf := 'B'
  else if akhir >= 60 then
    huruf := 'C'
  else if akhir >= 50 then
    huruf := 'D'
  else
    huruf := 'E';

  writeln('Nilai akhir: ', akhir:0:2);
  writeln('Indeks huruf: ', huruf);

  if (akhir >= 60) and (kehadiran >= 80) then
    writeln('Status: LULUS')
  else
    writeln('Status: TIDAK LULUS');
end.