create database exemplosegunda_forma_normal;
use exemplosegunda_forma_normal;

create table pedidos(
   idpedido int primary key auto_increment,
   nome_produto varchar(255),
   preco double,
   quantidade int,
   id_cliente int,
   constraint FK_id_cliente foreign key(id_cliente) 
   references cliente(idcliente)
);

create table cliente(
   idcliente int primary key auto_increment,
   nome varchar(150),
   data_nascimento varchar(200),
   cpf varchar(14) unique,
   genero varchar(10)
);

insert into cliente values(null, "Bernardo","26/03/1990","123.456.789-10","Masculino");

insert into pedidos values(null, "Chocolate", 8.50, 1, 1);