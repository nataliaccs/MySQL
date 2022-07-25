CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_atributos_estudantes(

	id BIGINT AUTO_INCREMENT,
    nome VARCHAR (30),
    idade INT NOT NULL,
    serie INT NOT NULL,
    nota FLOAT(1),
    PRIMARY KEY (id)
);

SELECT * FROM tb_atributos_estudantes;

INSERT INTO tb_atributos_estudantes(nome, idade, serie, nota)VALUES("Natália",12,8,8.4);
INSERT INTO tb_atributos_estudantes(nome, idade, serie, nota)VALUES("José",13,8,7.2);
INSERT INTO tb_atributos_estudantes(nome, idade, serie, nota)VALUES("Maria Luiza",13,8,6.7);
INSERT INTO tb_atributos_estudantes(nome, idade, serie, nota)VALUES("Lucas",12,8,9.1);
INSERT INTO tb_atributos_estudantes(nome, idade, serie, nota)VALUES("Rafael",13,8,7.8);
INSERT INTO tb_atributos_estudantes(nome, idade, serie, nota)VALUES("Laís",12,8,5.9);
INSERT INTO tb_atributos_estudantes(nome, idade, serie, nota)VALUES("André",12,8,7.0);
INSERT INTO tb_atributos_estudantes(nome, idade, serie, nota)VALUES("Carla",13,8,8.7);

SELECT * FROM tb_atributos_estudantes;

SELECT * FROM tb_atributos_estudantes WHERE nota>=7;
SELECT * FROM tb_atributos_estudantes WHERE nota<7;

UPDATE tb_atributos_estudantes SET nota=6.5 WHERE id=7;

SELECT * FROM tb_atributos_estudantes;
