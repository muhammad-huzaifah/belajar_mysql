SELECT id AS Kode,
       name AS Nama,
       category AS Kategori,
       price AS harga,
       quantity AS Jumlah
FROM products;

SELECT p.id AS Kode,
       p.name AS Nama,
       p.category AS Kategori,
       p.price AS harga,
       p.quantity AS Jumlah
FROM products AS p;