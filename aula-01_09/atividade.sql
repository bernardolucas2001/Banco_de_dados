CREATE DATABASE atividade_1_setembro;
use atividade_1_setembro;

#Questão A : Defina a Primeira Forma Normal (1FN) em bancos de dados relacionais.
#Explique por que a 1FN é importante para a estruturação de dados.

#R: A normalização de dados é um processo importante no processo de modelagem de dados. A primeira parte da normalização é chamada de 1FN ou primeira forma normal, em uma escala que vai até cinco.
#Uma relação estará na primeira forma normal 1FN, se não houver grupo de dados repetidos, isto é, se todos os valores forem únicos. Em outras palavras podemos definir que a primeira forma normal não admite repetições ou campos que tenha mais que um valor.

#Os procedimentos mais recomendados para aplicar a 1FN são os seguintes:

#a) Identificar a chave primária da entidade;
#b) Identificar o grupo repetitivo e removê-lo da entidade;
#c) Criar uma nova entidade com a chave primária da entidade anterior e o grupo repetitivo.
#A chave primária da nova entidade será obtida pela concatenação da chave primária da entidade inicial e a do grupo repetitivo.

#QUESTÃO B Reescreva a tabela "Livros" na Primeira Forma Normal (1FN). :

#R: Para responder essa questão, devemos retirar a coluna "Autores" da tabela Livros e criar uma nova tabela, para colocar os campos 'id_livro' e 'Autores'.
#Vale ressaltar que não foi incluso o comando para criação e referencia da chave estrangeira, apenas demonstrando que uma nova tabela deverá ser criada para atender a 1FN.

CREATE TABLE livro(
   id integer primary key auto_increment,
   titulo varchar(200),
   ano int
);

CREATE TABLE autores_livro(
  id_livro integer primary key auto_increment,
  autores varchar(200)
);

# Inserção dos dados do exemplo nas 2 tabelas
INSERT INTO livro VALUES(null,"Aventuras", 2005);
INSERT INTO autores_livro VALUES(null, "Autor1, Autor2,
Autor3");
INSERT INTO livro VALUES(null,"Romance", 2010);
INSERT INTO autores_livro VALUES(null, "Autor4");
INSERT INTO livro VALUES(null,"Ficção Científica", 2015);
INSERT INTO autores_livro VALUES(null, "Autor5, Autor6");

#Exibição dos dados nas tabelas
SELECT * FROM livro;
SELECT * FROM autores_livro;

#Questão C: Suponha que você esteja projetando um banco de dados para uma biblioteca.
#Crie uma tabela chamada "Livros" que esteja na 1FN. A tabela deve conter
#informações sobre os livros, incluindo ID do livro, título, autor, ISBN e ano de
#publicação.

#Segue o script da solução do problema, onde teriamos que criar duas tabelas para deixar de acordo com a 1FN.

CREATE TABLE livros(
 id integer primary key auto_increment,
 titulo varchar(50),
 isbn varchar(17),
 ano int
);

CREATE TABLE autor_livros(
  id_livros integer primary key auto_increment,
  autor varchar(200)
);


#INSERT INTO livros VALUES(null, "Harry Potter","123-4-12-123456-1", 1999);
#INSERT INTO autor_livros VALUES(null, "J.K.ROLLING");
#SELECT * FROM livros;
#SELECT * FROM autor_livros;


#Questão D: Você está projetando um banco de dados para um sistema de gerenciamento
#de vendas de uma loja de eletrônicos. Crie uma tabela chamada "Produtos" na
#Primeira Forma Normal (1FN) para armazenar informações sobre os produtos
#que a loja vende. A tabela deve incluir pelo menos os seguintes campos: ID do
#produto, nome do produto, categoria do produto, quantidade e preço.

CREATE TABLE produtos(
  id integer primary key auto_increment,
  nome varchar(200),
  quantidade int,
  preco double
);

CREATE TABLE categoria_produtos(
  id_produtos integer primary key auto_increment,
  categoria varchar(200)
);

#INSERT INTO produtos value(null, "Chocolate", 5, 6.50);
#INSERT INTO categoria_produtos value(null, "Doces");
#SELECT * FROM produtos;
#select * FROM categoria_produtos;