
program Soal4;

var
  pilihan, a, b: integer;
  hasil: real;
  ulang: char;

begin
  repeat
    writeln('=== KALKULATOR ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV dan MOD');
    write('Pilih operasi: ');
    readln(pilihan);

    write('Masukkan angka pertama: ');
    readln(a);
    write('Masukkan angka kedua: ');
    readln(b);

    case pilihan of
      1:
        writeln('Hasil = ', a + b);
      2:
        writeln('Hasil = ', a - b);
      3:
        writeln('Hasil = ', a * b);
      4:
        if b <> 0 then
        begin
          hasil := a / b;
          writeln('Hasil = ', hasil:0:2);
        end
        else
          writeln('Error: pembagi tidak boleh nol');
      5:
        if b <> 0 then
        begin
          writeln('DIV = ', a div b);
          writeln('MOD = ', a mod b);
        end
        else
          writeln('Error: pembagi tidak boleh nol');
    else
      writeln('Pilihan tidak valid');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
    writeln;

  until (ulang = 'T') or (ulang = 't');
end.