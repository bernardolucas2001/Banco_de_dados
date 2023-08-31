CREATE DATABASE atividade2;
use atividade2;

CREATE table clientes(
  nome varchar(45),
  telefone varchar(20),
  endereco varchar(200),
  cpf varchar(14),
  email varchar(50),
  idade int
  
);

INSERT INTO clientes values("Juan","(66)997762123","Inglaterra", "080.090.171-00", null,38),
("Luan","(15)9880765432","Sobradinho/DF", "090.212.345-56", "juan@gmail.com", 18),
("Romano","(77)988976564", "Rio de Janeiro- Rj", "123.456.789-10", null, 25),
("Léo Dias", "(88)997654321", "Taguatinga Centro- DF", "109.876.543-21","leo@email.com", 30),
("Jonas Henrique", "(62)08009697", "Recife-PE", "108.786.555-44",null, 27),
("Carlos Alberto", "(66)978654123", "Buenos Aires", "231.123.432-12","carlos@email.com", 45),
("Jordan", "(21)966851123", "São Paulo- SP", "879.980.765-00", "jotinha@yahoo.com", 24),
("Donald Trump", "(15)44523922", "New York", "345.674.213-90", "donald@gmail.com", 36),
("Monique", "(61)8876543", "Asa norte - DF", "765.990.870-21", "monica@email.com", 28),
("Mario", "(21)997065743", "Rio de Janeiro - RJ", "888.888.888-88", "romario@gmail.com", 52),
("Bernardo",null, "Luziania-GO", "777.777.777-77", "bernardo@email.com", 30),
("Ronaldo", null, "Madri- Espanha","555.555.555-55", "ronaldo.gmail.com", 26),
("Maria","(77)988889999", "Palmas- To", "666.666.666-66", "docarmo@gmail.com", 90),
("Brad Pitt", "(64)97776666", "RIO GRANDE DO SUL", "434.434.434-43","brad.pit@gmail.com", 52),
("He Man", "(61)900001111","Ceilandia - DF", "333.333.333-33", "heman@email.com", 23);

select * from clientes;

select nome from clientes where telefone or email is null ;

