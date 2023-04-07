CREATE DATABASE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
alune VARCHAR(255),
idade INT,
turma VARCHAR(255),
nota_final DECIMAL(6,2),

PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(alune, idade, turma, nota_final)
VALUES ("Isabella Martins", 16, "2° ano C", 7.00);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota_final > 7;

SELECT * FROM tb_estudantes WHERE nota_final < 7;

UPDATE tb_estudantes
SET alune = "Victor Santos"
WHERE id = 3;
