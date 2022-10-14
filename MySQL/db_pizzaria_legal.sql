CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment primary key, descricao varchar(255), tamanho varchar(255), borda_recheada boolean);

CREATE TABLE tb_pizzas(
id bigint auto_increment primary key, sabor varchar(255), preco decimal(6,2), massa varchar(255), quantidade int,
categoria_id bigint,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Brotinho", true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Brotinho", false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Média", true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Média", false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgado","Grande", true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgado","Grande", false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Brotinho",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Brotinho", false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Média",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Média", false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Grande",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Grande", false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana","Brotinho", true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana","Brotinho", false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana","Média", true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana","Média", false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana","Grande", true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana","Grande", false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegana","Brotinho", false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegana","Média", false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegana","Grande",false);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Frango c/ Catupiry", 30.00,"Tradicional", 5, 1);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Mussarela", 40.59, "Tradicional", 5, 2);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Prestígio", 50.99, "Tradicional", 2, 8);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Lombo C/ Catupiry", 60.99, "Tradicional", 3, 5);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Brocolis C/ Catupiry", 40, "Tradiconal", 4, 6);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Calabresa", 45.99,"Tradicional", 5, 1);

/*estrutura de uma consulta: SELECT - CONDIÇÃO - ORDENAÇÃO*/
SELECT * FROM tb_pizzas WHERE preco > 45.00; /*ORDER BY savor ASC --> Para ordernar por ordem alfabetica partindo do sabor*/
SELECT * FROM tb_pizzas WHERE preco < 45.00; /*ORDER BY savor DESC 	--> Para ordenar poo ordem descrecenste a partir do sabor*/

SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <= 100.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
/*SELECT sabor FROM tb_pizzas WHERE preco BETWEEN 50.00 and 100.00 (Trás apenas os sabores das pizzas que tenham essa condição de valor)*/

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%"; /* %m% --> que contenha a letra/ %m --> que termina a letra/ m% --> que começa com a letra*/

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.id = 8 /*>= 7 AND tb_categorias.id <= 12;*/