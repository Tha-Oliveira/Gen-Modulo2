CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_ecommerce(
id bigint auto_increment primary key, categoria varchar(255), produto varchar(255), 
marca varchar(255), valor decimal(6,2), estoque int);

INSERT INTO tb_ecommerce(categoria, produto, marca, valor, estoque)VALUES("Cabelo","Shampoo Morte Súbita","Lola Cosmetics", 25.99, 50);
INSERT INTO tb_ecommerce(categoria, produto, marca, valor, estoque)VALUES("Corpo e Banho","Kit Sabonete Líquido Rose 200ml + Loção Hidratante Corporal Rose 250ml","Victoria Secret", 95.89, 40);
INSERT INTO tb_ecommerce(categoria, produto, marca, valor, estoque)VALUES("Skincare","Aparelho de Limpeza Facial Elétrico","Océane", 175.90, 35);
INSERT INTO tb_ecommerce(categoria, produto, marca, valor, estoque)VALUES("Mãos e Pés","Kit Sabonete + Creme de Mãos + Esfoliantes para os Pés","Phebo", 96.19, 25);
INSERT INTO tb_ecommerce(categoria, produto, marca, valor, estoque)VALUES("Maquiagem","Paleta de Sombras Art Library +  Prime Fix","MAC", 578.49, 15);
INSERT INTO tb_ecommerce(categoria, produto, marca, valor, estoque)VALUES("Perfume","Perfume Good Girl Eau de Parfum 50ml","Carolina Herrera", 507.51, 10);
INSERT INTO tb_ecommerce(categoria, produto, marca, valor, estoque)VALUES("Perfume","Perfume 212 VIP Rose Eau Parfum 80ml","Carolina Herrera", 630.40, 10);
INSERT INTO tb_ecommerce(categoria, produto, marca, valor, estoque)VALUES("Acessórios","Conjunto de Colar + Brinco em Zircônia","Morana", 129.90, 50);

SELECT * FROM tb_ecommerce;
SELECT * FROM tb_ecommerce WHERE valor > 500.00;
SELECT * FROM tb_ecommerce WHERE valor < 500.00;

UPDATE tb_ecommerce SET estoque = 3 WHERE id = 6;