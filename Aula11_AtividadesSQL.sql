/* AULA 11 - Atividades SQL */

################################################################
# Atividade 01
################################################################
USE CARAMELO;
# DROP TABLE pedidos;

SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM pedidos;


#Criação da tabela de produtos ----------
CREATE TABLE produtos (
id INT PRIMARY KEY,
produto VARCHAR(100),
categoria VARCHAR(100),
valor_unitario DECIMAL(10,2)	);

SELECT * FROM produtos;

#Inserindo dados na tabela de produtos ----------
INSERT INTO produtos (id, produto, categoria, valor_unitario) VALUES (1, 'Teclado', 'Acessórios', 1069.31); 
INSERT INTO produtos (id, produto, categoria, valor_unitario) VALUES (2, 'Impressora', 'Acessórios', 3075.52);
INSERT INTO produtos (id, produto, categoria, valor_unitario) VALUES (3, 'Tablet', 'Eletrônicos', 778.08);
INSERT INTO produtos (id, produto, categoria, valor_unitario) VALUES (4, 'Mouse', 'Acessórios', 4123.17);
INSERT INTO produtos (id, produto, categoria, valor_unitario) VALUES (5, 'Fone de Ouvido', 'Informática', 2310.63);
INSERT INTO produtos (id, produto, categoria, valor_unitario) VALUES (6, 'Smartphone', 'Informática', 4905.19);
INSERT INTO produtos (id, produto, categoria, valor_unitario) VALUES (7, 'Monitor', 'Eletrônicos', 1888.07);
INSERT INTO produtos (id, produto, categoria, valor_unitario) VALUES (8, 'Notebook', 'Informática', 3906.87);
INSERT INTO produtos (id, produto, categoria, valor_unitario) VALUES (9, 'Mousepad', 'Acessórios', 79.62);
INSERT INTO produtos (id, produto, categoria, valor_unitario) VALUES (10, 'Alexa', 'Eletrônicos', 4721.39);


#Criação da tabela de pedidos ----------
CREATE TABLE pedidos (
id INT PRIMARY KEY,
cliente_id INT,
produto_id INT,
FOREIGN KEY (cliente_id) REFERENCES clientes(id),
FOREIGN KEY (produto_id) REFERENCES produtos(id)	);

SELECT * FROM pedidos;

#Inserindo dados na tabela de pedidos ----------
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (1, 1, 1);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (2, 1, 5);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (3, 2, 2);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (4, 2, 6);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (5, 2, 8);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (6, 3, 7);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (7, 3, 9);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (8, 4, 10);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (9, 5, 10);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (10, 5, 3);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (11, 5, 4);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (12, 6, 1);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (13, 6, 2);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (14, 6, 3);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (15, 6, 4);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (16, 6, 5);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (17, 6, 6);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (18, 6, 7);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (19, 6, 8);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (20, 6, 9);
INSERT INTO pedidos (id, cliente_id, produto_id) VALUES (21, 6, 10);



################################################################
# Atividade 02
################################################################
SELECT cli.nome AS nome_cliente, ped.id AS id_pedido, prod.produto AS nome_produto
FROM clientes cli
LEFT JOIN pedidos ped ON cli.id = ped.cliente_id
LEFT JOIN produtos prod ON ped.produto_id = prod.id;



################################################################
# Atividade 03
################################################################
SELECT categoria, ROUND(AVG(valor_unitario), 2) AS valor_medio
FROM produtos
GROUP BY categoria;



################################################################
# Atividade 04
################################################################
