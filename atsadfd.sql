-- Criar base de dados
CREATE DATABASE Livraria;

-- Mostrar o banco de dados
SHOW DATABASES;

-- Acessando o banco de dados
USE Livraria;

-- Criar tabela
CREATE TABLE Livraria.Livros(
ID INT AUTO_INCREMENT, 
Livro VARCHAR(255) NOT NULL,
Autor VARCHAR(255) NOT NULL,
Sexo_Autor VARCHAR(10),
Qtde_pags INT NOT NULL,
Editora VARCHAR(255) NOT NULL,
Valor_Comum FLOAT NOT NULL,
Valor_Kindle FLOAT NOT NULL,
Ano_Publicacao INT NOT NULL,
PRIMARY KEY(ID)
);

-- Inserindo registros na tabela.
INSERT INTO
	Livraria.Livros
	(Livro, Autor, Sexo_Autor, Qtde_pags, Editora, Valor_Comum, Valor_Kindle, Ano_Publicacao)
VALUES
	('Pai Rico, Pai Pobre', 'Robert T.Kiyosaki', 'Masculino', 336, 'Alta Books', 61.53, 58.45, 2018),
    ('Mindset', 'Carol S.Dweck', 'Feminino', 312, 'Objetiva', 38.99, 14.95, 2017), 
    ('Como fazer amigos e influenciar pessoas', 'Dale Carnegie', 'Masculino', 256, 'Sextante', 38.99, 33.24, 2019),
    ('A Cabana', 'William P. Young', 'Masculino', 240, 'Arqueiro', 35.99, 17.90, 2008),
    ('O Poder do Hábito', 'Charles Duhigg', 'Masculino', 408, 'Objetiva', 42.99, 29.90, 2012),
    ('Código Limpo', 'Robert C. Martin', 'Masculino', 425, 'Alta Books', 91.99, 87.39, 2009),
    ('Essencialismo', 'Greg McKeown', 'Masculino', 272, 'Sextante', 53.58, 33.24, 2015),
    ('Me Poupe!', 'Nathalia Arcuri', 'Feminino', 176, 'Sextante', 32.86, 17.09, 2018),
    ('Comece pelo Porquê', 'Simon Sinek', 'Masculino', 256, 'Sextante', 50.58, 24.90, 2018),
    ('O Alquimista', 'Paulo Coelho', 'Masculino', 206, 'Paralela', 24.70, 14.70, 2017);
    
    
-- Mostrar registros da tabela
SELECT * FROM Livraria.livros;

-- Apagar tabela
DROP TABLE Livraria.Livros;

-- Trazer todos os dados.
select * from Livraria.Livros;

 -- Trazer o nome do livro e nome da editora.
 select livro, editora from Livraria.Livros;

-- Trazer o nome do livro, editora e autores do sexo masculino.
select livro,editora,autor
from Livraria.Livros
where sexo_autor = 'Masculino';


-- Trazer o nome do livro, número de páginas do livro e autores do sexo feminino;
select livro,qtde_pags,autor
from Livraria.Livros
where sexo_autor = 'Feminino';


 -- Trazer o nome do autor, editora e ano de publicação dos livros que tenham sido publicados a partir do ano 2017.
 select autor,editora, ano_publicacao
 from Livraria.Livros
 where Ano_publicacao >= 2017;

-- Trazer o nome dos autores do sexo masculino com livros publicados pela editora Sextante ou pela editora Altas Books.
SELECT autor,sexo_autor,editora
from Livraria.Livros
where Editora = 'Sextante' OR Editora = 'Alta Books';

-- Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum;
select livro , autor,qtde_pags,editora, ano_publicacao,valor_comum
from Livraria.Livros;

-- Trazer o nome do livro, autor, número de páginas e valor noKindle;
select Livro,Autor,Qtde_pags,Valor_kindle
from Livraria.Livros;


-- Trazer o nome dos autores com livros publicados pela editora Sextante;
select Autor,editora
from Livraria.Livros
where Editora = 'sextante';

-- Trazer o nome do livro, autores, valor com capa comum e valor no Kindle.
select Livro,Autor,valor_Comum,Valor_Kindle
from Livraria.Livros;