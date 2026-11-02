var
  nim  : array[1..10] of string[15];   
  n, i : integer;
begin
  repeat
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);
  until (n >= 1) and (n <= 10);
 
  writeln('Masukkan NIM dari depan ke belakang:');
  for i := 1 to n do
  begin
    write('NIM ke-', i, ': ');
    readln(nim[i]);
  end;
 
  writeln;
  write('Urutan dari belakang ke depan: ');
  for i := n downto 1 do
    write(nim[i], ' ');
  writeln;
 
  readln;
end.
