/*Comando de criação de banco de dados*/
CREATE DATABASE db_escola;

/**Comando para usar o banco de dados selecionado
Sem o banco de dados não tem tabela*/
USE db_escola;

/*Comando para criação de tabela*/
CREATE TABLE tb_alunes( /*atributos*/
id bigint auto_increment primary key,
nome varchar(255), /*varchar é igual o Spring do java*/
data_nascimento date, /*ano, mês e dia*/
turma int,
nota decimal(4,2) /*o 4 representa o totsal de números que terá, o 2 representa o número depois da virgula*/
);

SELECT * FROM tb_alunes; /*Comando de consultas*/
/*registros*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Thais Oliveira","1995-02-16", 57, 10);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Isabela Brandão","1999-10-31", 57, 9.9);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Ruriê Miguel","1997-02-05", 57, 8.8);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Raphaela Oliveira","1999-10-15", 57, 7.5);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jessica Lopes","1999-09-17", 57, 5);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Vanilda Pereira","1970-01-15", 57, 6.5);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Haroldo Oliveira","1975-03-23", 57, 6);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Maycon Rocha","1990-12-03", 57, 5.5);

/*Seleciona todos os dados da tabela de alunes ONDE a nota for maior que 7*/
SELECT * FROM tb_alunes WHERE nota > 7;

/*Seleciona todos os dados da tabela de alunes ONDE a nota for menor que 7*/
SELECT * FROM tb_alunes WHERE nota < 7; /*LIMIT 100 (para limitar a busca de dados, onde aparece os 100 primeiros resultados)*/

UPDATE tb_alunes SET nota = 7 WHERE id=5; /*Comando para atualizar dados*/

/*SET SQL_SAFE_UPDATES = 0 / DESATIVA A PROTEÇÃO DO BANCO DE DADOS*/
SET SQL_SAFE_UPDATES = 1; /*VOLTA A PROTEÇÃO DO BANCO DE DADOS*/
