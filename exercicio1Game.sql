CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
poder VARCHAR(255) NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (tipo, poder)
VALUES("Guerreiro", "Força");

INSERT INTO tb_classes (tipo, poder)
VALUES("Curandeiro", "Cura");

INSERT INTO tb_classes (tipo, poder)
VALUES("Xamã", "Se transformar em animais");

INSERT INTO tb_classes (tipo, poder)
VALUES("Dançarina", "Invisibilidade");

INSERT INTO tb_classes (tipo, poder)
VALUES("Dragões", "Fogo");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
nick VARCHAR(255)NOT NULL,
defesa INT (10) NULL,
ataque INT(10)NULL,
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome, nick, defesa, ataque)
VALUES("Victor", "Bob_1",1100, 2200);

INSERT INTO tb_personagens(nome, nick, defesa, ataque)
VALUES("Ellen", "liss01",3000, 5000);

INSERT INTO tb_personagens(nome, nick, defesa, ataque)
VALUES("Gustavo", "claus_00",900, 1500);

INSERT INTO tb_personagens(nome, nick, defesa, ataque)
VALUES("Marcos", "clic",1000, 1500);

INSERT INTO tb_personagens(nome, nick, defesa, ataque)
VALUES("Laura", "looc",10000, 9000);

INSERT INTO tb_personagens(nome, nick, defesa, ataque)
VALUES("Lucas", "brian",200, 1000);

INSERT INTO tb_personagens(nome, nick, defesa, ataque)
VALUES("Maria", "Mary",40000, 60000);

INSERT INTO tb_personagens(nome, nick, defesa, ataque)
VALUES("Izaac", "isaaaac",80000, 7000);


SELECT * FROM tb_personagens;

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.id ="Guerreiro";
