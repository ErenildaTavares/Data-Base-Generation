CREATE DATABASE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR(255),
quantidade INT,
peso VARCHAR (255),
valor DECIMAL(8,2),

PRIMARY KEY(id)
);

INSERT INTO tb_produtos(produto, quantidade, peso, valor)
VALUES ("Salto Alto Stiletto", 1200, "1,3kg", 2199.90);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos 
SET quantidade = 10
WHERE id = 6;
