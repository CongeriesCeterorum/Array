type
  Matriks = array[1..5, 1..5] of integer;
var
  mat1, mat2, hasil : Matriks;
  baris1, kolom1    : integer;
  baris2, kolom2    : integer;
  i, j              : integer;
 
procedure BacaUkuran(nama: string; var baris, kolom: integer);
begin
  repeat
    write('Jumlah baris ', nama, ' (1-5) : ');
    readln(baris);
  until (baris >= 1) and (baris <= 5);
  repeat
    write('Jumlah kolom ', nama, ' (1-5) : ');
    readln(kolom);
  until (kolom >= 1) and (kolom <= 5);
end;
 
procedure BacaMatriks(nama: string; var m: Matriks; baris, kolom: integer);
var
  i, j: integer;
begin
  writeln('Masukkan elemen ', nama, ':');
  for i := 1 to baris do
    for j := 1 to kolom do
    begin
      write(nama, '[', i, ',', j, '] = ');
      readln(m[i, j]);
    end;
end;
 
procedure TampilMatriks(judul: string; var m: Matriks; baris, kolom: integer);
var
  i, j: integer;
begin
  writeln(judul);
  for i := 1 to baris do
  begin
    for j := 1 to kolom do
      write(m[i, j]:6);
    writeln;
  end;
  writeln;
end;
 
begin
  BacaUkuran('matriks 1', baris1, kolom1);
  BacaUkuran('matriks 2', baris2, kolom2);
  writeln;
 
  if (baris1 = baris2) and (kolom1 = kolom2) then
  begin
    writeln('Kedua matriks DAPAT dijumlahkan.');
    writeln;
    BacaMatriks('A', mat1, baris1, kolom1);
    writeln;
    BacaMatriks('B', mat2, baris2, kolom2);
    writeln;
 
    for i := 1 to baris1 do
      for j := 1 to kolom1 do
        hasil[i, j] := mat1[i, j] + mat2[i, j];
 
    TampilMatriks('Matriks A:', mat1, baris1, kolom1);
    TampilMatriks('Matriks B:', mat2, baris2, kolom2);
    TampilMatriks('Hasil A + B:', hasil, baris1, kolom1);
  end
  else
    writeln('Kedua matriks TIDAK dapat dijumlahkan (ukuran berbeda).');
 
  readln;
end.
