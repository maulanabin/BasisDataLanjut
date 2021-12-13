-- Maulana Bintang Irfansyah - 15 - TI 2H


CREATE TRIGGER trg_TambahKategoriSepeda
ON production.categories
AFTER INSERT 
AS
BEGIN
	PRINT 'DATA BERHASIL DITAMBAHKAN. [Deskripsi Data: ID = 8 dan Kategori = Sepeda Roda Tiga]';
END

SET IDENTITY_INSERT production.categories ON;

INSERT INTO production.categories(category_id,category_name)
VALUES(9,'Sepeda Roda Lima');


PRINT 'DATA BERHASIL DITAMBAHKAN. [Deskripsi Data: ID = 9 dan Kategori = Sepeda Roda Lima]';

INSERT INTO production.categories(category_id,category_name)
VALUES(10,'Sepeda Roda Enam')
PRINT 'DATA BERHASIL DITAMBAHKAN. [Deskripsi Data: ID = 10 dan Kategori = Sepeda Roda Enam]';

-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT
	ss.first_name, ss.last_name
FROM sales.staffs AS ss
WHERE ss.first_name LIKE 'M%' OR ss.last_name LIKE '%M%'

UNION

SELECT 
	sc.first_name, sc.last_name 
FROM sales.customers AS sc
WHERE SC.first_name LIKE 'M%' OR last_name LIKE '%M%'
GROUP BY first_name, last_name;

-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT 
	c.category_id, c.category_name, p.list_price
FROM production.products AS p
INNER JOIN production.categories AS c 
ON c.category_id = p.category_id;
--- AKHIR ---
WITH productcategory AS
(
SELECT 
	c.category_name, AVG(p.list_price) AS avgprice
FROM production.products AS p
INNER JOIN production.categories AS c 
ON c.category_id = p.category_id
GROUP BY c.category_id, category_name)
SELECT 
	[Children Bicycles], [Comfort Bicycles],[Cruisers Bicycles],
	[Cyclocross Bicycles],[Electric Bikes],[Mountain Bikes], [Road Bikes] 
FROM productcategory
PIVOT (
	AVG(avgprice) FOR category_name 
	IN ([Children Bicycles], [Comfort Bicycles], [Cruisers Bicycles],
	[Cyclocross Bicycles],[Electric Bikes],[Mountain Bikes], [Road Bikes])) 
AS a;











