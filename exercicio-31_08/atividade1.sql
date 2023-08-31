CREATE DATABASE atividade;

use atividade;

create table agenda(
 nome varchar(60),
 telefone varchar(20),
 endereco varchar(200)
);

INSERT INTO agenda values("Luan","(66)997762123","Inglaterra"),
("Juan","(15)9880765432","Sobradinho/DF"),
("Roman","(77)988976564", "Rio de Janeiro- Rj"),
("Léo", "(88)997654321", "Taguatinga Centro- DF"),
("Jonas", "(62)08009697", "Recife-PE"),
("Carlos", "(66)978654123", "Buenos Aires"),
("Jotinha", "(21)966851123", "São Paulo- SP"),
("Donald", "(15)44523922", "New York"),
("Monica", "(61)8876543", "Asa norte - DF"),
("Romario", "(21)997065743", "Rio de Janeiro - RJ");

select * from agenda;

select count(*) AS "'QUANTIDADE DE REGISTROS" from agenda;

select concat(nome, " possui o telefone ", telefone, "e mora no endereço ", endereco) as "Informação" from agenda;