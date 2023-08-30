CREATE DATABASE primeiro_banco_de_dados;

use primeiro_banco_de_dados;

create table pessoa(
   nome varchar(50),
   idade int,
   altura double,
   genero varchar(200)
);

show tables;

desc pessoa;

insert into pessoa values("Leornardo", 22, 1.90, "M");
insert into pessoa(nome, idade) values("Josivaldo", 98);
insert into pessoa values("Zé", 69, 1.50, "M"),
("Wanessa", 32, 1.85,"F");

select * from pessoa;

#Varchar = carcteres variantes
#char = tamanho fixo
#binary = numeros binarios
#bloob = salvar imagens
#longtext = textos longos A PARTIR DE 255 CARACTERES
#4,294,967,295 numero maximo de carecteres
#enum = dados predefinidos 

create table pedido(
   nome_produto varchar(100),
   quantidade integer,
   preco double(6,2),
   pedido_status enum("preparando", "A caminho", "Entregue", "cancelado")
   
); 

insert into pedido values("Chocolate", 2, 3.5267890, "preparando");
insert into pedido(nome_produto, preco) values("Café", 2.503243215434);
insert into pedido values("Pizza", 2, 25.32151435314, "A caminho"),
("Morango", 1, 2.531454534, "cancelado"),
("A", 1, 2.4353145341513, "preparando");

select * from pedido;

#drop table pedido;


select nome, idade from pessoa;

select(3*2);

select nome, idade from pessoa  where genero = "M";
select idade from pessoa where nome = "Zé";

insert into pessoa values("Maria da silva", 55, 1.60, "F");

select * from pessoa;

select nome, idade from pessoa where nome = "Maria";
select nome, idade from pessoa where nome like "%Maria%";

#drop table pessoa;

#inserir 10 dados na tabela de cliente
#nome, idade, cpf, endereço, telefone

create table cliente (
 nome varchar(65),
 idade int,
 cpf varchar(11),
 telefone varchar(20),
 endereco varchar(100)
 
);

insert into cliente values("Luan",33,"12345678910","(21)999999999", "Sao paulo 55, rUA PAULA TEJANO"),
("José",33,"10987654321","(11)8888888888", "Brasilia, Asa Norte, 70123-981"),
("Renan",33,"12345678910","(31)777777777", "Belo Horizonte Rua das pedras"),
("Mia Khalifa", 22, "4321344678", "(61)987655432","Libano"),
("Juan", 36, "12337643223", "(15)40028922", "bAHIA, RUA DO ACARAJE"),
("jOHN",21, "45678909010", "(66)999999999", "Minas Gerais, Bahia"),
("John lenon",11,"8789901234", "(62)554455445", "Inglaterra"),
("Luan Gameplay",21, "34521322234", "(81)989092114", "Santa Catarina"),
("André",15, "23432187654", "(44)997081867", "Russia 0 Moscou"),
("Carlos",17, "23421654321","(62)99778865", "Goiania Rua 10");

INSERT INTO cliente VALUES("João Kleber", null, "45613126677", null, 'Rua do Silva 20, Rio de Janeiro');

select * from cliente;
#drop table cliente;

select nome, telefone from cliente where idade > 24 and cpf like "%123%";
select nome, telefone from cliente where idade > 24 or cpf like "%123%";

#as = alias, mostre o dado como
select count(*) as "contador de cadastro" from cliente;

select count(telefone), nome from cliente group by nome order by nome;

select nome from cliente where telefone is null  ;

update cliente set telefone ="61-98522-7777";

update cadastro set telefone = "61-98522-7777" where nome = "João Kleber";

set sql_safe_updates = 0;

select * from telefone;

create table errada(
  nome varchar(50),
  autura double, 
  pezo double
);

alter table errada add cpf varchar(20);

desc errada;

alter table errada drop column autura;

alter table errada rename column pezo to peso;

alter table errada modify column peso double not null;

insert into errada values("Bernardo", 80.0, "12345678910");

alter table errada modify column peso double not null first;
alter table errada modify column peso double not null after cpf;

select concat(nome , " pesa " , peso, " e seu cpf é: ", cpf) as "Informaçaõ" from errada;

delete from cliente where nome = "João Kleber";

select * from errada;