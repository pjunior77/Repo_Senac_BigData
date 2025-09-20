USE CARAMELO;

/*
SELECT clientes.nome, pedidos.id AS id_pedido
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id
HAVING ISNULL(id_pedido)
*/
##############################################################
# Criação da tabela tb_clientes
##############################################################
CREATE TABLE tb_clientes (
id INT PRIMARY KEY AUTO_INCREMENT,
nome_cliente VARCHAR(100),
data_nascimento DATE,
sexo VARCHAR(30),
email VARCHAR(100),
telefone VARCHAR(30),
cidade VARCHAR(100),
estado VARCHAR(2),
data_cadastro DATE	);

SELECT * FROM tb_clientes;
# ALTER TABLE tb_clientes CHANGE COLUMN sexo sexo VARCHAR(30);
# ALTER TABLE tb_clientes CHANGE COLUMN nome nome_cliente VARCHAR(100);

##############################################################
# Criação da tabela tb_produtos
##############################################################
CREATE TABLE tb_produtos (
id INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(100),
categoria VARCHAR(50),
subcategoria VARCHAR(50),
marca VARCHAR(50),
preco_unitario DECIMAL(10,2)	);

SELECT * FROM tb_produtos;
# ALTER TABLE tb_produtos CHANGE COLUMN nome nome_produto VARCHAR(100);

##############################################################
# Criação da tabela tb_vendas
##############################################################
CREATE TABLE tb_vendas (
id_venda INT PRIMARY KEY,
data_venda DATE,
id_cliente INT,
id_produto INT,
quantidade INT,
forma_pagamento VARCHAR(30),
canal_venda VARCHAR(50),
FOREIGN KEY (id_cliente) REFERENCES tb_clientes(id),
FOREIGN KEY (id_produto) REFERENCES tb_produtos(id)		);

SELECT * FROM tb_vendas;



##############################################################
# Carregar asrquivos CSV nas tabelas
##############################################################
/* Permissão para acessar arquivos locais no servidor de Banco de Dados */
SET GLOBAL local_infile = 1;

/* Carregando os dados do arquivo CSV para a tabela tb_clientes */
LOAD DATA INFILE 'C:/Users/paulo.frederico/Documents/Repo_Senac_BigData/tb_clientes.csv'
INTO TABLE tb_clientes
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS																			#Ignora a primeira linha por causa do cabeçalho
(nome_cliente, data_nascimento, sexo, email, telefone, cidade, estado, data_cadastro);	#Tem que colocar porque a primeira coluna não existe no arquivo

SELECT * FROM tb_clientes;
/*
TRUNCATE TABLE tb_clientes;
DELETE FROM tb_clientes WHERE id < 1000;
*/

/* Carregando os dados do arquivo CSV para a tabela tb_produtos */
LOAD DATA INFILE 'C:/Users/paulo.frederico/Documents/Repo_Senac_BigData/tb_produtos.csv'
INTO TABLE tb_produtos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS														#Ignora a primeira linha por causa do cabeçalho
(nome_produto, categoria, subcategoria, marca, preco_unitario);		#Tem que colocar porque a primeira coluna não existe no arquivo

SELECT * FROM tb_produtos;
/*
DROP TABLE tb_vendas;
DROP TABLE tb_produtos;
DROP TABLE tb_clientes;
*/

/* Carregando os dados do arquivo CSV para a tabela tb_vendas */
LOAD DATA INFILE 'C:/Users/paulo.frederico/Documents/Repo_Senac_BigData/tb_vendas.csv'
INTO TABLE tb_vendas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;				#Ignora a primeira linha por causa do cabeçalho
							#Não precisa colocar as colunas, pois todas as colunas existem no arquivo
SELECT * FROM tb_vendas;