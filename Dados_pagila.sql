-- Exemplo de dados simulados para Pagila

-- Inserindo categorias de filmes
INSERT INTO category (name) VALUES ('Ação'), ('Comédia'), ('Drama');

-- Inserindo filmes com duração e categoria associada
INSERT INTO film (title, length, category_id) VALUES
('Matrix', 136, 1),
('Forrest Gump', 142, 3),
('Toy Story', 81, 2);

-- Inserindo clientes com seus nomes completos
INSERT INTO customer (first_name, last_name) VALUES
('Carlos', 'Santos'),
('Ana', 'Ferreira'),
('Pedro', 'Almeida');

-- Inserindo dados de alugueis (filmes alugados pelos clientes)
INSERT INTO rental (film_id, customer_id) VALUES
(1, 1),
(2, 3),
(3, 2);

-- Inserindo pagamentos realizados pelos clientes
INSERT INTO payment (customer_id, rental_id, amount) VALUES
(1, 1, 4.50),
(3, 2, 3.75),
(2, 3, 2.85);
