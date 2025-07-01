-- 🟢 STARTER QUERIES: NIVEL BÁSICO

-- 1. Muestra todos los campos de la tabla de canciones
SELECT 
-- completa aquí
FROM tracks;

-- 2. Muestra solo los nombres de los clientes
SELECT 
-- completa aquí
FROM customers;

-- 3. Filtra los empleados cuyo cargo sea 'Sales Support Agent'
SELECT * 
FROM employees
WHERE 
-- completa aquí;

-- 4. Muestra las 5 canciones más largas
SELECT Name, Milliseconds 
FROM tracks
ORDER BY 
-- completa aquí
LIMIT 5;

-- 5. Filtra las canciones que contengan la palabra 'Love'
SELECT Name
FROM tracks
WHERE 
-- completa aquí;

-- 🟡 STARTER QUERIES: NIVEL INTERMEDIO

-- 6. Calcula el promedio de duración de todas las canciones
SELECT 
-- completa aquí
FROM tracks;

-- 7. Muestra la cantidad de canciones por cada tipo de medio
SELECT MediaTypeId, 
-- completa aquí
FROM tracks
GROUP BY MediaTypeId;

-- 8. Muestra los géneros con más de 100 canciones
SELECT GenreId, COUNT(*) AS total
FROM tracks
GROUP BY GenreId
HAVING 
-- completa aquí;

-- 9. Muestra los países con el total de facturación (ventas)
SELECT BillingCountry, 
-- completa aquí
FROM invoices
GROUP BY BillingCountry;

-- 🔴 STARTER QUERIES: NIVEL AVANZADO

-- 10. Muestra el nombre de cada canción con el nombre de su género
SELECT t.Name AS cancion, g.Name AS genero
FROM tracks t
-- completa aquí

-- 11. Muestra los clientes que nunca han hecho una compra
SELECT c.FirstName || ' ' || c.LastName AS cliente
FROM customers c
LEFT JOIN invoices i ON c.CustomerId = i.CustomerId
WHERE 
-- completa aquí;

-- 12. Muestra el género con más canciones
SELECT GenreId, COUNT(*) AS total
FROM tracks
GROUP BY GenreId
ORDER BY 
-- completa aquí
LIMIT 1;

-- 13. Clasifica las canciones por duración usando CASE
SELECT Name,
  CASE 
    WHEN Milliseconds < 180000 THEN 'Corta'
    WHEN Milliseconds <= 300000 THEN 'Media'
    ELSE 'Larga'
  END AS duracion
FROM tracks;

-- 14. Muestra correos de clientes y empleados
SELECT Email FROM customers
UNION
-- completa aquí;
