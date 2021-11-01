-- Jawaban ke-1
INSERT INTO sales.customers(first_name, last_name, phone, email, street, city, state, zip_code)
VALUES
	('Maulana', 'Bintang', '085730867044', 'maulanabintang6621@gmail.com', 
	'Perum Pondok Pabean Indah', 'Probolinggo', 'Jawa Timur', '67271');

SELECT * FROM sales.customers
WHERE customer_id = 1446;

-- Jawaban ke-2
SELECT TOP 10 * FROM sales.customers 
WHERE first_name LIKE 'm%'
ORDER BY customer_id DESC;

-- Jawaban ke-3
SELECT p.product_id AS id_produk, p.product_name AS nama_produk, 
	   c.category_name AS kategori, p.list_price AS harga
FROM production.products AS p
INNER JOIN production.categories AS c
ON p.category_id = c.category_id
WHERE p.list_price >= 1000
ORDER BY p.product_id ASC;

-- Jawaban ke-4
SELECT p.product_id AS id_produk, p.product_name AS nama_produk, 
	   c.category_name AS kategori, p.list_price AS harga
FROM production.products AS p
INNER JOIN production.categories AS c
ON p.category_id = c.category_id
WHERE p.list_price >= 1000
ORDER BY p.product_id ASC
OFFSET 7 ROWS
FETCH NEXT 9 ROWS ONLY;



USE tokosepeda
GO