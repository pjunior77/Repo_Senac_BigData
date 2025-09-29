/* AULA 12 - Atividades SQL */
USE CARAMELO;

SELECT * FROM tb_clientes;
SELECT * FROM tb_produtos;
SELECT * FROM tb_vendas;

# Item 01 ------------------------------
# Liste o total de vendas realizadas por cada forma de pagamento
SELECT v.forma_pagamento, SUM(v.quantidade * p.preco_unitario) AS valor_total_venda
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
GROUP BY v.forma_pagamento;

# Item 02 ------------------------------
# Calcule a média de quantidade de produtos vendidos por canal de venda
SELECT v.canal_venda, ROUND(AVG(v.quantidade), 2) AS media_qtde_produtos_vendidos
FROM tb_vendas v
GROUP BY v.canal_venda;
# SELECT DISTINCT canal_venda FROM tb_vendas;

# Item 03 ------------------------------
# Exiba apenas os canais de venda que tiveram mais de 200 unidades vendidas no total
# OBS: Alterado para > 200 para poder filtrar os resultados
SELECT v.canal_venda, SUM(v.quantidade) AS qtde_produtos_vendidos
FROM tb_vendas v
GROUP BY v.canal_venda
HAVING qtde_produtos_vendidos > 200;

# Item 04 ------------------------------
# Mostre o total de vendas por estado dos clientes
SELECT c.estado, SUM(v.quantidade) AS total_vendas
FROM tb_vendas v
JOIN tb_clientes c ON v.id_cliente = c.id
GROUP BY c.estado
ORDER BY c.estado;

# Item 05 ------------------------------
# Liste os produtos que foram vendidos em quantidade superior à média geral
SELECT p.nome_produto, SUM(v.quantidade) AS total_vendas
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
GROUP BY p.id
HAVING total_vendas > (SELECT AVG(v2.quantidade) FROM tb_vendas v2);

# Item 06 ------------------------------
# Exiba os clientes que realizaram mais de 5 compras
SELECT c.nome_cliente, SUM(v.quantidade) AS qtde_compras
FROM tb_vendas v
JOIN tb_clientes c ON v.id_cliente = c.id
GROUP BY c.id
HAVING qtde_compras > 5;

# Item 07 ------------------------------
# Mostre a quantidade total de vendas por categoria de produto
SELECT p.categoria, SUM(v.quantidade) AS qtde_total_vendida
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
GROUP BY p.categoria;

# Item 08 ------------------------------
# Liste os produtos que tiveram vendas apenas via e-commerce
SELECT DISTINCT p.nome_produto
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
#WHERE TRIM(v.canal_venda) = 'E-commerce'		#OBS: Não estava funcionando com esse comando
WHERE v.canal_venda LIKE 'E-commerce%';

# Item 09 ------------------------------
# Exiba os clientes que compraram produtos da categoria “Smartphone”
SELECT c.nome_cliente
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
JOIN tb_clientes c ON v.id_cliente = c.id
WHERE p.subcategoria = 'Smartphone';

# Item 10 ------------------------------
# Liste os produtos que nunca foram vendidos (utilizando LEFT JOIN)
SELECT p.nome_produto, v.id_venda
FROM tb_produtos p
LEFT JOIN tb_vendas v ON p.id = v.id_produto
HAVING ISNULL(v.id_venda);
/*
OBS: Esta consulta não retorna nada porque todos os produtos possuem vendas
SELECT COUNT(DISTINCT id_produto) FROM tb_vendas;
SELECT COUNT(nome_produto) FROM tb_produtos;
*/

# Item 11 ------------------------------
# Mostre a média de quantidade vendida por subcategoria de produto
SELECT p.subcategoria, ROUND(AVG(v.quantidade), 2) AS media_qtde_prod_vendidos
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
GROUP BY p.subcategoria;

# Item 12 ------------------------------
# Exiba os estados com média de vendas superior a 3 unidades por venda
SELECT c.estado, ROUND(AVG(v.quantidade), 2) AS media_qtde_vendas
FROM tb_vendas v
JOIN tb_clientes c ON v.id_cliente = c.id
GROUP BY c.estado
HAVING media_qtde_vendas > 3;

# Item 13 ------------------------------
# Liste os clientes que compraram mais de um tipo de produto (diferentes subcategorias)
SELECT c.nome_cliente, COUNT(DISTINCT p.subcategoria) AS count_tipo_produto
FROM tb_vendas v
JOIN tb_clientes c ON v.id_cliente = c.id
JOIN tb_produtos p ON v.id_produto = p.id
GROUP BY c.nome_cliente
HAVING count_tipo_produto > 1;
/*
OBS: Consulta para validar o resultado acima
	 'Alexandre Camargo' fez 3 compras, mas em duas categorias diferentes
SELECT c.nome_cliente, p.*
FROM tb_vendas v
JOIN tb_clientes c ON v.id_cliente = c.id
JOIN tb_produtos p ON v.id_produto = p.id
ORDER BY c.nome_cliente, p.subcategoria
*/

# Item 14 ------------------------------
# Exiba os produtos vendidos por mais de 10 clientes distintos
# OBS: Alterado para > 5 para poder filtrar os resultados
SELECT p.nome_produto, COUNT(DISTINCT id_cliente) AS qtde_vendida_clientes_distintos
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
GROUP BY v.id_produto
HAVING qtde_vendida_clientes_distintos > 5;

# Item 15 ------------------------------
# Liste os canais de venda que tiveram vendas abaixo da média geral
SELECT v.canal_venda, ROUND(AVG(v.quantidade), 2) AS media_qtde_vendida
FROM tb_vendas v
GROUP BY v.canal_venda
HAVING media_qtde_vendida < (SELECT AVG(v2.quantidade) FROM tb_vendas v2);

# Item 16 ------------------------------
# Mostre os produtos vendidos por clientes do estado do Rio de Janeiro
SELECT DISTINCT p.nome_produto
FROM tb_vendas v
JOIN tb_clientes c ON v.id_cliente = c.id
JOIN tb_produtos p ON v.id_produto = p.id
WHERE c.cidade = 'Rio de Janeiro';

# Item 17 ------------------------------
# Liste os clientes que compraram produtos da marca “Samsung”
SELECT DISTINCT c.nome_cliente
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
JOIN tb_clientes c ON v.id_cliente = c.id
WHERE p.marca = 'Samsung';

# Item 18 ------------------------------
# Exiba os produtos que foram vendidos em todos os canais disponíveis
SELECT p.nome_produto, COUNT(DISTINCT v.canal_venda) AS qtde_canal_venda
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
GROUP BY p.id
HAVING qtde_canal_venda = (SELECT COUNT(DISTINCT v2.canal_venda) FROM tb_vendas v2);

# Item 19 ------------------------------
# Liste os clientes que compraram apenas uma vez
SELECT c.nome_cliente, COUNT(v.id_venda) AS qtde_compras
FROM tb_vendas v
JOIN tb_clientes c ON v.id_cliente = c.id
GROUP BY v.id_cliente
HAVING qtde_compras = 1;

# Item 20 ------------------------------
# Mostre os produtos com média de vendas superior a 2 unidades por transação
SELECT p.nome_produto, ROUND(AVG(v.quantidade), 2) AS media_vendas_transacao
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
GROUP BY v.id_produto
HAVING media_vendas_transacao > 2;
