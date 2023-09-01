

create database banco_primeira_forma;
use banco_primeira_forma;

create table pessoa(
  id integer primary key auto_increment,
  cpf varchar(14) unique,
  telefone varchar(20),
  logradouro varchar(100),
  estado varchar(2),
  numero_casa varchar(10),
  bairro varchar(50),
  cep varchar(10)
);

insert into pessoa value(null, "123.456.789-10","(61)966666666", "Avenida dos que não foram ", "DF", "H12","DO NUNCA","77333-00");
