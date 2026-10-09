
program Soal7;

var
  kode: char;
  jam: integer;
  tarif: longint;

begin
  write('Kode kendaraan (M/K/B): ');
  readln(kode);
  write('Lama parkir (jam): ');
  readln(jam);

  tarif := 0;

  if jam <= 0 then
    writeln('Lama parkir tidak valid')
  else
  begin
    case kode of
      'M':
        if jam > 10 then
          tarif := 30000
        else
          tarif := 5000 + (jam - 1) * 3000;

      'K':
        if jam > 10 then
          tarif := 10000
        else
          tarif := 2000 + (jam - 1) * 1000;

      'B':
        if jam > 10 then
          tarif := 50000
        else
          tarif := 10000 + (jam - 1) * 5000;
    else
      writeln('Kode kendaraan tidak valid');
    end;

    if (kode = 'M') or (kode = 'K') or (kode = 'B') then
      writeln('Total tarif parkir: Rp', tarif);
  end;
end.