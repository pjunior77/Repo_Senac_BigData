/* ------- AULA 10 - Atividades ------- */
SELECT * FROM vendas;

## Atividade 1 ----------
SELECT produto, valor_unitario
FROM vendas;

## Atividade 2 ----------
SELECT *
FROM vendas
WHERE cidade = 'São Paulo';

## Atividade 3 ----------
SELECT SUM(valor_unitario * quantidade ) AS valor_total_arrecadado
FROM vendas;

## Atividade 4 ----------
SELECT categoria, SUM(valor_unitario * quantidade) AS total_vendido
FROM vendas
GROUP BY categoria;

## Atividade 5 ----------
SELECT cliente, SUM(valor_unitario * quantidade) AS tot_valor_comprado
FROM vendas
GROUP BY cliente
HAVING tot_valor_comprado > 3000;

## Atividade 6 ----------
SELECT *
FROM vendas
WHERE cidade = 'Curitiba';

## Atividade 7 ----------
SELECT cliente, SUM(valor_unitario * quantidade) AS tot_valor_comprado
FROM vendas
GROUP BY cliente
HAVING tot_valor_comprado > 4000;

## Atividade 8 ----------
SELECT cliente, SUM(valor_unitario * quantidade) AS tot_valor_comprado
FROM vendas
GROUP BY cliente
HAVING tot_valor_comprado > 5000;
/*
OBS:
Não pode usar o WHERE porque a coluna "tot_valor_comprado" nao existe na tabela, ela só é criada quando executa o GROUP BY
*/





## Atividade 1 ----------
SELECT cliente, SUM(quantidade) AS quantidade_compras
FROM vendas
WHERE valor_unitario > 200
GROUP BY cliente;

## Atividade 2 ----------
SELECT estado, SUM(valor_unitario * quantidade) AS tot_vendido
FROM vendas
WHERE cidade IN ('Curitiba','Porto Alegre','Belo Horizonte')
GROUP BY estado
HAVING tot_vendido > 5000;

## Atividade 3 ----------
SELECT cliente, ROUND(AVG(valor_unitario * quantidade),2) AS valor_medio_gasto
FROM vendas
WHERE categoria = 'Informática'
GROUP BY cliente
HAVING valor_medio_gasto > 1000;
