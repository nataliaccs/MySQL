CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255),
    subcategoria VARCHAR(255)
);

CREATE TABLE tb_cursos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(255),
    certificado BOOLEAN,
    valor DECIMAL(6,2), 
    plataforma VARCHAR(255),
    
    categoria_id BIGINT,
    FOREIGN KEY(categoria_id)REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias(categoria,subcategoria)VALUES("Esoterismo","Espiritualismo");
INSERT INTO tb_categorias(categoria,subcategoria)VALUES("Ciências Exatas","Astronomia");
INSERT INTO tb_categorias(categoria,subcategoria)VALUES("Auto-ajuda","Meditação e Reflexão");
INSERT INTO tb_categorias(categoria,subcategoria)VALUES("Arquitetura e decoração","Design de interiores");
INSERT INTO tb_categorias(categoria,subcategoria)VALUES("Idiomas","Francês");
SELECT * FROM tb_categorias;

SELECT * FROM tb_cursos;
INSERT INTO tb_cursos(nome_curso,certificado,valor,plataforma,categoria_id)VALUES("Despertar da consciência",true,225.90,"Além",1);
INSERT INTO tb_cursos(nome_curso,certificado,valor,plataforma,categoria_id)VALUES("Francês Básico",true,750.00,"Aprender línguas",5);
INSERT INTO tb_cursos(nome_curso,certificado,valor,plataforma,categoria_id)VALUES("Za-Zen",false,379.90,"Relax",3);
INSERT INTO tb_cursos(nome_curso,certificado,valor,plataforma,categoria_id)VALUES("Projeto de interiores",true,845.99,"Projex",4);
INSERT INTO tb_cursos(nome_curso,certificado,valor,plataforma,categoria_id)VALUES("Via Láctea e Galáxias",false,150.90,"Astrotour",2);
INSERT INTO tb_cursos(nome_curso,certificado,valor,plataforma,categoria_id)VALUES("Como ensinar francês",true,990.90,"ProfessorMassa",5);
INSERT INTO tb_cursos(nome_curso,certificado,valor,plataforma,categoria_id)VALUES("Projeto de vida",false,365.90,"Mais+",3);
INSERT INTO tb_cursos(nome_curso,certificado,valor,plataforma,categoria_id)VALUES("Práticas esotéricas",false,72.90,"RAJ",1);
SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE valor > 500;
SELECT * FROM tb_cursos WHERE valor >= 600 AND valor <=1000;
SELECT * FROM tb_cursos WHERE nome_curso LIKE '%j%';

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id WHERE tb_categorias.id = 3;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id WHERE tb_categorias.id = 2;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id WHERE tb_categorias.id = 1;