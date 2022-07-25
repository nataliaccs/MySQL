-- comando para criar banco de dados

CREATE DATABASE db_lojinha;
USE db_lojinha;
CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_produto VARCHAR(255),
	valor DECIMAL(8,2),
    quantidade INT,
    pagamento_cartao BOOLEAN
	-- PRIMARY KEY(id) * outra forma de indicar a primary key
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Camiseta", 425.59,5,true);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Camisa polo", 349.99,10,false);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Bermuda", 780.00,20,true);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Short", 445.80,4,true);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Vestido", 599.90,6,false);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Calça", 815.00,30,false);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Bonés", 115.99,15,true);
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Sapato", 669.90,5,true);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor>500;
SELECT * FROM tb_produtos WHERE valor<500;

UPDATE tb_produtos SET nome_produto="Tênis" WHERE id=8;

SELECT * FROM tb_produtos;
