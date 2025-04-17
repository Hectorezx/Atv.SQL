1. Seleção dos 10 filmes mais longos (duração acima de 2 horas), organizados em ordem decrescente:
SELECT title, length
FROM film
WHERE length > 120
ORDER BY length DESC
LIMIT 10;


Nesta consulta, estou filtrando os filmes com mais de 2 horas e ordenando pela duração, trazendo apenas os 10 mais longos.

2. Relação entre filmes e categorias:
SELECT f.title, c.name AS categoria
FROM film f
JOIN category c ON f.category_id = c.category_id;


Aqui, estou unindo as tabelas film e category para listar os nomes dos filmes junto com suas respectivas categorias.

3. Listagem dos 5 filmes mais alugados:
SELECT f.title, COUNT(r.rental_id) AS total_alugueis
FROM film f
JOIN rental r ON f.film_id = r.film_id
GROUP BY f.title
ORDER BY total_alugueis DESC
LIMIT 5;


Nesta consulta, calculo a quantidade de alugueis para cada filme, ordeno pelo total de alugueis e limito os resultados aos 5 mais alugados.

4. Total de gastos por cliente (ordenados do maior para o menor):
SELECT CONCAT(c.first_name, ' ', c.last_name) AS nome_completo,
       SUM(p.amount) AS total_gasto
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY nome_completo
ORDER BY total_gasto DESC;


Aqui, estou somando os valores pagos por cada cliente, unindo as tabelas customer e payment, e apresentando os resultados em ordem decrescente.

5. Receita total por categoria de filme:
SELECT c.name AS categoria,
       SUM(p.amount) AS receita_total
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
JOIN film f ON r.film_id = f.film_id
JOIN category c ON f.category_id = c.category_id
GROUP BY c.name
ORDER BY receita_total DESC;


Por último, estou calculando o total arrecadado para cada categoria de filme, agrupando os dados por categoria e exibindo em ordem decrescente de receita.
