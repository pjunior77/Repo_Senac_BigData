/* AULA12 - Atividades SQL */

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
SELECT p.id, p.nome_produto, SUM(v.quantidade) AS total_vendas, ROUND(AVG(v.quantidade), 2) AS media_qtde_produtos_vendidos
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
GROUP BY p.id
HAVING total_vendas > media_qtde_produtos_vendidos;

# Item 06 ------------------------------
# Exiba os clientes que realizaram mais de 5 compras
SELECT c.id, c.nome_cliente, SUM(v.quantidade) AS qtde_compras
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
SELECT DISTINCT p.id, p.nome_produto
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
#WHERE TRIM(v.canal_venda) = 'E-commerce'		#Não estava funcionando com esse comando
WHERE v.canal_venda LIKE 'E-commerce%'
ORDER BY p.nome_produto;

# Item 09 ------------------------------
# Exiba os clientes que compraram produtos da categoria “Smartphone”
SELECT c.id, c.nome_cliente
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

#Esta consulta não retorna nada porque todos os produtos possuem vendas
#SELECT COUNT(DISTINCT id_produto) FROM tb_vendas;
#SELECT COUNT(nome_produto) FROM tb_produtos;



