/* SEMPRE tem que rodar esse comando do 'USE' primeiro */
USE CARAMELO;

/* Criação de tabelas ---------- */
CREATE TABLE clientes (
id INT PRIMARY KEY,
nome VARCHAR(100)	);

CREATE TABLE pedidos (
id INT PRIMARY KEY,
cliente_id INT,
FOREIGN KEY (cliente_id) REFERENCES clientes(id) );

/* Inserção de dados na tabela de clientes ---------- */
INSERT INTO clientes (id, nome) VALUES (1,'João');
INSERT INTO clientes (id, nome) VALUES (2,'Maria');
INSERT INTO clientes (id, nome) VALUES (3,'Leandro');
INSERT INTO clientes (id, nome) VALUES (4,'Francisca');
INSERT INTO clientes (id, nome) VALUES (5,'Reginaldo');
INSERT INTO clientes (id, nome) VALUES (6,'Regina');
INSERT INTO clientes (id, nome) VALUES (7,'Vitor');
INSERT INTO clientes (id, nome) VALUES (8,'Manuela');

SELECT * FROM clientes;

/* Inserção de dados na tabela de pedidos ---------- */
INSERT INTO pedidos (id, cliente_id) VALUES (1, 1);
INSERT INTO pedidos (id, cliente_id) VALUES (2, 1);
INSERT INTO pedidos (id, cliente_id) VALUES (3, 1);
INSERT INTO pedidos (id, cliente_id) VALUES (4, 2);
INSERT INTO pedidos (id, cliente_id) VALUES (5, 2);
INSERT INTO pedidos (id, cliente_id) VALUES (6, 3);
INSERT INTO pedidos (id, cliente_id) VALUES (7, 4);
INSERT INTO pedidos (id, cliente_id) VALUES (8, 4);
INSERT INTO pedidos (id, cliente_id) VALUES (9, 5);
INSERT INTO pedidos (id, cliente_id) VALUES (10, 5);

SELECT * FROM pedidos;


/* Consulta (Query) juntando as duas tabelas ---------- */
SELECT *
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;

SELECT clientes.nome, pedidos.id AS id_pedido
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id;

SELECT clientes.nome, pedidos.id AS id_pedido
FROM clientes
JOIN pedidos ON clientes.id = pedidos.cliente_id;