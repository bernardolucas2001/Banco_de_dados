create database terceira_FORMA_NORMAL;
use terceira_forma_normal;

create table cliente(
  idcliente int primary key auto_increment,
  nome_cliente varchar(255)
);

create table cidade(
     idcidade int primary key auto_increment,
     cidade varchar(150),
     estado varchar(2)
);
alter table cidade add id_cliente int;
alter table cidade add constraint fk_id_cliente_cidade 
foreign key (id_cliente) references cliente(idcliente);

create table produto(
  idproduto int primary key auto_increment,
  nome_produto varchar(100),
  quantidade int,
  valor double
);

create table pedido(
idpedido int primary key auto_increment,
id_cliente int,
id_produto int,
constraint FK_Id_cliente foreign key(id_cliente)
references cliente(idcliente),
constraint FK_id_produto foreign key(id_produto)
references produto(idproduto)


);

insert into cliente values(null, "Luan");
insert into cidade values(null,"Goiania", "GO", 1);
insert into produto values(null,"Chocolate",50,7.50);
insert into pedido values(null,1,1);

select * from cliente;
select * from cidade;
select * from produto;
select * from pedido;