CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
	nome varchar(255),
    valor decimal(9,2),
    quantidade int,
    marca varchar(255),
	categoria_id bigint,
    
    primary key (id),
    
    -- duas maneiras de fazer a foreign key
    foreign key (categoria_id) REFERENCES tb_categorias(id)
    -- categoria_id bigint REFERENCES tb_categorias(id)
);

CREATE TABLE tb_categorias(
	id bigint auto_increment, 
    nome_categoria varchar(255),
    setor varchar(255),
	
    primary key(id)
);

select * from tb_produtos;

-- insert para a tabela de categorias
INSERT INTO tb_categorias(nome_categoria, setor) VALUES ("Anti-Inflamatório","Medicamentos");
INSERT INTO tb_categorias(nome_categoria, setor) VALUES ("Suplementos","Fitness");

-- atalho para rodar o linha de comando, cursor no final da linha ctrl + enter
-- atalho para rodar o bloco de comando, seleciona o bloco de codigo, ctrl + shift + enter
INSERT INTO tb_categorias(nome_categoria, setor) VALUES ("Antibiotico","Medicamento");


-- insert para a tabela de produtos
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Paracetabem", 30.00, 10, "Genérico", 1);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Amoxicimol", 100.00, 10, "Genérico", 3);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES ("Cretina", 180.00, 5, "Energia", 2);

-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
SELECT * from tb_produtos where valor > 50.00;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
SELECT * from tb_produtos where valor > 5.00 and valor < 60.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome
SELECT * from tb_produtos where nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;


SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
