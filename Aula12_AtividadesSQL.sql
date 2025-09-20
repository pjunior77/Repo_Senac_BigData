/* AULA12 - Atividades SQL */

SELECT * FROM tb_clientes;
SELECT * FROM tb_produtos;
SELECT * FROM tb_vendas;

# Item 01 ------------------------------
SELECT v.forma_pagamento, SUM(v.quantidade * p.preco_unitario) AS valor_total_venda
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
GROUP BY v.forma_pagamento;

# Item 02 ------------------------------
SELECT v.canal_venda, ROUND(AVG(v.quantidade), 2) AS media_qtde_produtos_vendidos
FROM tb_vendas v
GROUP BY v.canal_venda;

# SELECT DISTINCT canal_venda FROM tb_vendas;

# Item 03 ------------------------------
SELECT v.canal_venda, SUM(v.quantidade) AS qtde_produtos_vendidos
FROM tb_vendas v
GROUP BY v.canal_venda
HAVING qtde_produtos_vendidos > 200;

# Item 04 ------------------------------
SELECT c.estado, SUM(v.quantidade) AS total_vendas
FROM tb_vendas v
JOIN tb_clientes c ON v.id_cliente = c.id
GROUP BY c.estado;

# Item 05 ------------------------------
SELECT p.id, p.nome_produto, SUM(v.quantidade) AS total_vendas, ROUND(AVG(v.quantidade), 2) AS media_qtde_produtos_vendidos
FROM tb_vendas v
JOIN tb_produtos p ON v.id_produto = p.id
GROUP BY p.id

