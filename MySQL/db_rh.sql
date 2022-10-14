/*Colocar os comandos sempre em caps look, por conta do robô da GEN*/

CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_colaboradores(
id bigint auto_increment primary key, nome varchar(255), email varchar(255), formacao varchar(255), 
cargo varchar(255), salario decimal(8,2));

INSERT INTO tb_colaboradores(nome, email, formacao, cargo, salario)VALUES("Thais Oliveira","thaisoliveira@rh.com.br","Gestão de Recursos Humanos","Supervisora", 10500.0);
INSERT INTO tb_colaboradores(nome, email, formacao, cargo, salario)VALUES("Raphaela Oliveira","raphaelaoliveira@rh.com.br","Administração","Analista Sênior", 8500.00);
INSERT INTO tb_colaboradores(nome, email, formacao, cargo, salario)VALUES("Vanilda Pereira","vanildapereira@rh.com.br","Psicologia","Analista Pleno", 6000.00);
INSERT INTO tb_colaboradores(nome, email, formacao, cargo, salario)VALUES("Haroldo Oliveira","haroldoliveira@rh.com.br","Serviço Social","Analista Júnior", 4000.00);
INSERT INTO tb_colaboradores(nome, email, formacao, cargo, salario)VALUES("Maycon Rocha","mayconrocha@rh.com.br","Administração","Estagiário", 1500.00);

SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 1950.00 WHERE id = 5;
