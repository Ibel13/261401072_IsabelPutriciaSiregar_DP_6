
program Soal2;

var
  password: string;
  percobaan: integer;

const
  rahasia = 'pascal123';

begin
  percobaan := 0;

  repeat
    write('Masukkan kata sandi: ');
    readln(password);
    percobaan := percobaan + 1;

    if password = rahasia then
    begin
      writeln('Login Berhasil! Selamat Datang');
      break;
    end
    else
      writeln('Kata sandi salah');

  until percobaan >= 3;

  if password <> rahasia then
    writeln('Akses Ditolak! Akun Terkunci.');
end.