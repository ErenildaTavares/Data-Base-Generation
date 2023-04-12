CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
poder VARCHAR(255) NULL,
PRIMARY KEY (id)
);

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
