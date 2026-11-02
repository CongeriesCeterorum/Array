var
  n, i                      : integer;
  tugas, kuis, uts, uas     : array[1..5] of real;
  rata                      : array[1..5] of real;
  ket                       : array[1..5] of string;
  total                     : real;
  jumlahLulus, jumlahGagal  : integer;
  tertinggi, terendah       : real;
begin
  jumlahLulus := 0;
  jumlahGagal := 0;
 
  write('Masukkan jumlah mahasiswa (1-5): ');
  readln(n);
  while (n < 1) or (n > 5) do
  begin
    write('Jumlah harus 1-5, masukkan lagi: ');
    readln(n);
  end;
 
  for i := 1 to n do
  begin
    writeln;
    writeln('Masukkan nilai-nilai mahasiswa ke-', i);
    write('Nilai tugas : '); readln(tugas[i]);
    write('Nilai kuis  : '); readln(kuis[i]);
    write('Nilai UTS   : '); readln(uts[i]);
    write('Nilai UAS   : '); readln(uas[i]);
 
    total   := tugas[i] + kuis[i] + uts[i] + uas[i];
    rata[i] := total / 4;
 
    if rata[i] >= 70 then
    begin
      ket[i] := 'LULUS';
      jumlahLulus := jumlahLulus + 1;
    end
    else
    begin
      ket[i] := 'TIDAK LULUS';
      jumlahGagal := jumlahGagal + 1;
    end;
  end;
 
  tertinggi := rata[1];
  terendah  := rata[1];
  for i := 2 to n do
  begin
    if rata[i] > tertinggi then tertinggi := rata[i];
    if rata[i] < terendah  then terendah  := rata[i];
  end;
 
  writeln;
  writeln('=========== HASIL ===========');
  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i);
    writeln('Tugas      : ', tugas[i]:0:2);
    writeln('Kuis       : ', kuis[i]:0:2);
    writeln('UTS        : ', uts[i]:0:2);
    writeln('UAS        : ', uas[i]:0:2);
    writeln('Rata-rata  : ', rata[i]:0:2);
    writeln('Keterangan : ', ket[i]);
    writeln('-----------------------------');
  end;
 
  writeln('Jumlah lulus       : ', jumlahLulus);
  writeln('Jumlah tidak lulus : ', jumlahGagal);
  writeln('Rata-rata tertinggi: ', tertinggi:0:2);
  writeln('Rata-rata terendah : ', terendah:0:2);
 
  readln;
end.
