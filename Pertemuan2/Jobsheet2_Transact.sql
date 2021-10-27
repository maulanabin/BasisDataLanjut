--Maulana Bintang Irfansyah - 15 - TI 2H
CREATE TABLE mahasiswa
(
    [nim] char(1) NOT NULL PRIMARY KEY,
    [nama] varchar(50) NOT NULL,
    [alamat] varchar(max) NOT NULL
);

INSERT INTO mahasiswa(nim, nama, alamat) 
VALUES
(1, 'Maya', 'Jakarta'),
(2, 'Linda', 'Bogor'),
(3, 'Rina', 'Bandung');

SELECT * FROM mahasiswa;

--Maulana Bintang Irfansyah - 15 - TI 2H
CREATE TABLE kelas
(
    [kode_kelas] char(2) NOT NULL PRIMARY KEY,
    [tahun_ajar] varchar(4) NOT NULL,
    [nim_mhs] char(1) NOT NULL
);

DECLARE 
    @kode_kelas char(2),
    @tahun_ajar varchar(4),
    @nim_mhs char(1);
SET @nim_mhs = 1;
IF EXISTS (SELECT * FROM mahasiswa WHERE nim = @nim_mhs)
BEGIN
    SET @kode_kelas = '2H'
    SET @tahun_ajar = '2021'
    INSERT INTO kelas VALUES (@kode_kelas, @tahun_ajar, @nim_mhs)
    SELECT * FROM kelas
END
ELSE 
    PRINT 'Data Tidak Ditemukan';
GO

SELECT * FROM kelas;