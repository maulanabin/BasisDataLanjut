USE rental_mobil;
GO

CREATE TABLE penyewa 
	(
	  id_penyewa nvarchar(20) NOT NULL,
	  nm_penyewa nvarchar(35) DEFAULT NULL,
	  alamat_penyewa text,
	  no_hp nvarchar(15) DEFAULT NULL,
	);

ALTER TABLE penyewa
ADD PRIMARY KEY (id_penyewa);

INSERT INTO penyewa (id_penyewa, nm_penyewa, alamat_penyewa, no_hp) VALUES
('1978985600234400', 'Laras Fitrianingsih', 'Jl.Ahmad Yani NO 90 RT/RW 001/002,Bandar Lampung', '85678124595'),
('1978985600234410', 'Laura Carona', 'Jl.Basuki Rahmat NO 90 RT/RW 001/002,Pesawaran', '85678124596'),
('1978985600234420', 'Libby Afipa Editanisa', 'Jl.Ahmad Yani2 NO 90 RT/RW 001/002,Lampung Selatan', '85678124597'),
('1978985600234430', 'Lidia Firda Saputri', 'Jl.Ahmad Yani NO 90 RT/RW 001/002,Bandar Lampung', '85678124598'),
('1978985600234440', 'M. Fajri Ramadhan', 'Jl.Basuki Rahmat NO 90 RT/RW 001/002,Pesawaran', '85678124599'),
('1978985600234450', 'M. Ilham Yusuf Gumai', 'Jl.Basuki Rahmat NO 90 RT/RW 001/002,Pesawaran', '85678124600'),
('1978985600234460', 'Made Slimacek', 'Jl.Z.A Pagar Alam NO 190,Kedaton', '85678124601'),
('1978985600234470', 'Mudo Kurniawan', 'Jl.Paguyuban Tirtayasa,Kemiling,Bandar Lampung', '85678124602'),
('1978985600234480', 'Muh. Aulia Prima Insani', 'Jl.Taman Margasatwa No.12,Warung Buncit,Jakarta Selatan', '85678124603'),
('1978985600234490', 'Muhammad Ichsan Rofiqo', 'JL. Tebet Raya No. 84, Tebet, Jakarta Selatan', '85678124604'),
('1978985600234500', 'Ongky Alexander', 'Jl. Metro Pondok Indah Kav. IV, Kebayoran Lama, Jakarta Selatan', '85678124605'),
('1978985600234510', 'Putri Mellyana Eka Safitri', 'Jl. KH. Agus Salim No. 29A Jakarta Pusat.', '85678124606'),
('1978985600234520', 'Renaldhi Fitra Yudha', 'Jl. Hos Cokroaminoto, No. 84, Menteng Jakarta Pusat.', '85678124607'),
('1978985600234530', 'Reza Janati Utami', 'Jl. Ahmad Dahlan/ Jl. Bacang I No.2 Jakarta Selatan', '85678124608'),
('1978985600234540', 'Romi Wijayanti', 'Jl. Raya Tirtomarto No.67 Ampelgading', '85678124609'),
('1978985600234550', 'Rona Arika Hasna', 'Jl. Raya Pasar Minggu Jakarta Selatan, Sebelah Makam Pahlawan Kalibata Jakarta Selatan', '85678124610'),
('1978985600234560', 'Safira Novrianti', 'Jl. Semeru Selatan No.23 Dampit ', '85678124611'),
('1978985600234570', 'Safira Ramadani', 'Jl. Benda No. 20D, Kemang Jakarta Selatan', '85678124612'),
('1978985600234580', 'Salza Firdiana Izmi', 'Jl. Arya Putra, Kedaung Ciputat Tangerang', '85678124613'),
('1978985600234590', 'Shinta', 'Jl. Raya Hasanudin No.180 Gedangan', '85678124614'),
('1978985600234600', 'Shoni Setiawan', 'Jl. Brigjend Abdul Manan No.8 Pujon', '85678124615'),
('1978985600234610', 'Stephani Yolanda', 'Jl. Raya Gunung Kawi No.10 Wonosari', '85678124616'),
('1978985600234620', 'Suryani', 'Jl. Alam Segar 3 No. 8, Pondok Indah Jakarta Selatan', '85678124617'),
('1978985600234630', 'Syaharani', 'Jl. Raya Sukolilo No. 1', '85678124618'),
('1978985600234640', 'Tika Nur Annisa', 'Jl. Kawi No.50 Kepanjen', '85678124619'),
('1978985600234650', 'Tri Wahyudi', 'Jl. Nailun Selatan No.85 Kromengan', '85678124620');


CREATE TABLE kendaraan 
	(
	  no_pol nvarchar(9) NOT NULL,
	  jeniskendaraan varchar(20) DEFAULT NULL,
	  merk nvarchar(20) DEFAULT NULL,
	  hargasewa int DEFAULT NULL
	);

ALTER TABLE kendaraan
ADD PRIMARY KEY (no_pol);

INSERT INTO kendaraan (no_pol, jeniskendaraan, merk, hargasewa) VALUES
('B 1041 TF', 'MPV', 'Daihatsu Xenia', 1980000),
('B 1055 AA', '	City Car ', 'Toyota Yaris 1.5 G M', 4500000),
('B 1059 TV', '	City Car', 'Suzuki Swift Sport ', 385000),
('B 1208 ER', '	City Car ', 'Mitsubishi Mirage 20', 45000000),
('B 1322 RF', 'MPV', 'Suzuki Ertiga GL AT', 35000000),
('B 133 AGI', 'MPV', 'Toyota Avanza Veloz ', 21000000),
('B 1394 PY', '	Mobil Sedan', 'Toyota Corolla Altis', 785000),
('B 1424 PF', 'MPV', 'Nissan Grand Livina ', 35000000),
('B 1437 EK', 'MPV', 'Toyota Avanza 1.3 E ', 20000000),
('B 1471 BK', 'City Car ', 'Toyota Yaris 1.5 G A', 450000),
('B 1491 TY', '	Mobil Sedan', 'Honda Civic Hatchbac', 750000),
('B 1521 PR', '	Mobil SUV', 'Toyota Fortuner 2.4 ', 950000),
('B 1548 KV', 'City Car', 'Honda Jazz A MT', 50000000),
('B 1599 UR', '	Mobil SUV', 'Honda CR-V 2.0 i-VTE', 650000),
('B 1613 TZ', '	City Car ', 'Suzuki Swift Sport M', 395000),
('B 1683 SE', 'Mobil Double Cabin', 'Mitsubishi Triton Do', 900000),
('B 1927 KB', 'MPV', 'Honda Mobilio E CVT ', 25000000),
('B 1928 JK', 'City car', 'Toyota Avanza', 6000000),
('B 234 TNP', 'City Car', 'Honda Jazz RS MT', 55000000),
('B 275 SKE', 'MPV', 'Honda Mobilio 2017 S', 25500000),
('B 2984 BO', '	City Car', '	Mitsubishi Mirage 2', 350000),
('B 585 RFS', 'MPV', 'Toyota Avanza Veloz ', 25200000),
('BE 1992 L', 'MPV', 'Toyota Avanza', 5000000),
('BE 1993 P', 'City car', 'Toyota Avanza', 9000000),
('D 1685 AC', '	Mobil SUV', 'Toyota Rush G AT', 55000000),
('D 1768 AF', 'MPV', 'Toyota Avanza 1.3 G ', 25000000),
('D 1880 RZ', 'MPV', 'Nissan Grand Livina ', 70000000),
('F 1318 AT', 'Mobil Double Cabin', 'Isuzu D-Max Double C', 70000000);


CREATE TABLE sopir
	(
	  id_sopir nvarchar(20) NOT NULL,
	  nm_sopir nvarchar(35) DEFAULT NULL,
	  no_hp nvarchar(15) DEFAULT NULL
	);
ALTER TABLE sopir
ADD PRIMARY KEY (id_sopir);

INSERT INTO sopir (id_sopir, nm_sopir, no_hp) VALUES
('1958985600235370', 'Juztino Maratole', '85678124497'),
('1958985600235380', 'Ayu Fariska', '85678124498'),
('1958985600235390', 'Sumitri Alibaba', '85678124499'),
('1958985600235400', 'Yulia Purba', '85678124410'),
('1958985600235410', 'Ageng Yulia', '85678124411'),
('1958985600235420', 'Julio Farastika Siantar', '85678124412');

CREATE TABLE denda 
	(
	  id_denda nvarchar(11) NOT NULL,
	  nm_denda nvarchar(25) DEFAULT NULL,
	  harga_denda int DEFAULT NULL,
	  keterangan nvarchar(15) DEFAULT NULL
	) ;

ALTER TABLE denda
ADD PRIMARY KEY (id_denda);

INSERT INTO denda (id_denda, nm_denda, harga_denda, keterangan) VALUES
('1', 'Terlambat', 50000, 'Perhari'),
('2', 'Lecet atau Penyok', 300000, 'Rusak ringan'),
('3', 'Rusak Parah', 3000000, 'Rusak Berat'),
('4', 'Hilang', 5000000, 'Hilang'),
('5', 'Rusak sedang', 4000, 'perhari'),
('6', NULL, NULL, NULL);

CREATE TABLE peminjaman 
	(
	  no_transaksi_peminjaman nvarchar(10) NOT NULL,
	  tgl_peminjaman date DEFAULT NULL,
	  id_sopir nvarchar(20) DEFAULT NULL,
	  id_penyewa nvarchar(20) DEFAULT NULL,
	  no_pol nvarchar(9) DEFAULT NULL,
	  lama_peminjaman int DEFAULT NULL,
	  harga int DEFAULT NULL,
	);
ALTER TABLE peminjaman
  ADD PRIMARY KEY (no_transaksi_peminjaman),
  CONSTRAINT FK_peminjaman_id_penyewa FOREIGN KEY(id_penyewa) REFERENCES penyewa(id_penyewa),
    CONSTRAINT FK_peminjaman_id_sopir FOREIGN KEY(id_sopir) REFERENCES sopir(id_sopir),
  CONSTRAINT FK_peminjaman_no_pol FOREIGN KEY(no_pol) REFERENCES kendaraan(no_pol);

   INSERT INTO peminjaman (no_transaksi_peminjaman, tgl_peminjaman, id_sopir, id_penyewa, no_pol, lama_peminjaman, harga) VALUES
('P01', '2020-01-10', '1958985600235370', '1978985600234440', 'B 1471 BK', 5, 450000),
('P02', '2019-08-30', '1958985600235410', '1978985600234410', 'B 234 TNP', 2, 550000),
('P03', '2019-09-01', '1958985600235400', '1978985600234420', 'B 1521 PR', 4, 950000),
('P04', '2019-09-03', '1958985600235410', '1978985600234430', 'B 1683 SE', 2, 900000),
('P05', '2019-10-05', '1958985600235400', '1978985600234440', 'D 1685 AC', 1, 550000),
('P06', '2019-10-06', '1958985600235410', '1978985600234450', 'B 1491 TY', 1, 750000),
('P07', '2019-11-01', '1958985600235400', '1978985600234460', 'D 1880 RZ', 2, 352000),
('P08', '2019-11-01', '1958985600235400', '1978985600234470', 'B 1041 TF', 3, 198000);

CREATE TABLE pengembalian 
	(
	  no_transaksi_pengembalian nvarchar(10) NOT NULL,
	  tgl_kembali date DEFAULT NULL,
	  id_sopir nvarchar(20) DEFAULT NULL,
	  id_penyewa nvarchar(20) DEFAULT NULL,
	  no_pol nvarchar(9) DEFAULT NULL,
	  id_denda nvarchar(11) DEFAULT NULL,
	  harga int DEFAULT NULL
	);

	ALTER TABLE pengembalian
  ADD PRIMARY KEY (no_transaksi_pengembalian),
  CONSTRAINT FK_pengembalian_id_penyewa FOREIGN KEY(id_penyewa) REFERENCES penyewa(id_penyewa),
  CONSTRAINT FK_pengembalian_id_sopir FOREIGN KEY(id_sopir) REFERENCES sopir(id_sopir),
  CONSTRAINT FK_pengembalian_no_pol FOREIGN KEY(no_pol) REFERENCES kendaraan(no_pol),
  CONSTRAINT FK_peminjaman_id_denda FOREIGN KEY(id_denda) REFERENCES denda(id_denda);

  
INSERT INTO pengembalian (no_transaksi_pengembalian, tgl_kembali, id_sopir, id_penyewa, no_pol, id_denda, harga) VALUES
('K01', '2020-01-15', '1958985600235370', '1978985600234440', 'B 1471 BK', '2', 2550000),
('K02', '2019-09-01', '1958985600235410', '1978985600234410', 'B 234 TNP', '2', 1400000),
('K03', '2019-09-05', '1958985600235400', '1978985600234420', 'B 1521 PR', '3', 4100000),
('K04', '2019-09-05', '1958985600235410', '1978985600234430', 'B 1683 SE', '6', 2100000),
('K05', '2019-10-06', '1958985600235400', '1978985600234440', 'D 1685 AC', '6', 5055000),
('K06', '2019-10-07', '1958985600235410', '1978985600234450', 'B 1491 TY', '6', 3750000),
('K07', '2019-11-03', '1958985600235400', '1978985600234460', 'D 1880 RZ', '2', 1004000),
('K08', '2019-11-05', '1958985600235400', '1978985600234470', 'B 1041 TF', '1', 6440000);


-- View
CREATE VIEW Data_Kendaraan AS (
	SELECT * FROM kendaraan
);

SELECT * FROM Data_Kendaraan

CREATE VIEW Data_Sopir AS (
	SELECT * FROM sopir
);
SELECT * FROM Data_Sopir;

CREATE VIEW Data_Penyewa AS (
	SELECT * FROM penyewa
)
SELECT * FROM Data_Penyewa;

CREATE VIEW Data_Peminjaman AS (
	SELECT * FROM peminjaman
);

SELECT * FROM Data_Peminjaman;

CREATE VIEW Data_Pengembalian AS (
	SELECT * FROM pengembalian
);

SELECT * FROM Data_Pengembalian;

-- Window Function
SELECT 
		py.id_penyewa, py.nm_penyewa, py.alamat_penyewa, py.no_hp, k.no_pol, k.jeniskendaraan, k.merk,
		s.id_sopir, s.nm_sopir, s.no_hp, pn.no_transaksi_peminjaman, pn.tgl_peminjaman, pn.lama_peminjaman, pn.harga,
		ROW_NUMBER() OVER (ORDER BY pn.tgl_peminjaman ASC) AS urutan_peminjaman
FROM penyewa AS py INNER JOIN peminjaman AS pn ON py.id_penyewa = pn.id_penyewa
	INNER JOIN kendaraan AS k ON k.no_pol = pn.no_pol
	INNER JOIN sopir AS s ON s.id_sopir = pn.id_sopir
--GROUP BY pn.no_transaksi_peminjaman, py.nm_penyewa, k.merk, s.nm_sopir;
GO

SELECT 
		py.id_penyewa, py.nm_penyewa, py.alamat_penyewa, py.no_hp, k.no_pol, k.jeniskendaraan, k.merk,
		s.id_sopir, s.nm_sopir, s.no_hp, pb.no_transaksi_pengembalian, pb.tgl_kembali, d.id_denda, 
		d.nm_denda, d.harga_denda, d.keterangan, pb.harga,
		ROW_NUMBER() OVER (ORDER BY pb.tgl_kembali ASC) AS urutan_pengembalian
FROM penyewa AS py INNER JOIN pengembalian AS pb ON py.id_penyewa = pb.id_penyewa
	INNER JOIN kendaraan AS k ON k.no_pol = pb.no_pol
	INNER JOIN sopir AS s ON s.id_sopir = pb.id_sopir
	INNER JOIN denda AS d ON d.id_denda = pb.id_denda;
GO

-- STORED PROCEDURE
CREATE PROCEDURE RataRata_Pendapatan AS 
SELECT k.no_pol, k.jeniskendaraan, k.merk,
		s.id_sopir, s.nm_sopir,
		AVG(pb.harga) AS rata_rata
FROM pengembalian AS pb
INNER JOIN kendaraan AS k ON k.no_pol = pb.no_pol 
INNER JOIN sopir AS s ON s.id_sopir = pb.id_sopir
GROUP BY k.no_pol, k.jeniskendaraan, k.merk,
		s.id_sopir, s.nm_sopir
ORDER BY rata_rata DESC;

EXECUTE RataRata_Pendapatan;
