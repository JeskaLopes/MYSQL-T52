CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    -- varchar equivale ao String
    nome_produto varchar(255),
    -- Equivale ao double
    valor decimal(5,2),
    marca varchar(255),
    quantidade int,
    cor varchar(255),

	primary key (id)
);

select * from tb_produtos;

INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUES("Camiseta",100.50,"Nique", 10,"Bege");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUES("Calça",120.50,"Ardidas", 5,"Preta");
INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,cor)VALUES("Meia",200.50,"Superemo", 2,"Vermelha");

SELECT * from tb_produtos where valor > 500;
SELECT * from tb_produtos where valor < 500;

UPDATE tb_produtos SET nome_produto = "Guti";

SET SQL_SAFE_UPDATES = 0;

-- comando utilizado para modificar uma coluna na minha tabela
ALTER TABLE tb_produtos
MODIFY COLUMN valor decimal(9,2);