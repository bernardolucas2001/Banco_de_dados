# Questão 1 :Suponha que você tem duas tabelas: "Clientes" e "Pedidos". Crie uma consulta que liste todos os
# pedidos juntamente com o nome do cliente que fez cada pedido usando um INNER JOIN;

CREATE TABLE Clientes (
id INT primary key auto_increment,
nome VARCHAR(60)
);

CREATE TABLE Pedidos (
 id INT PRIMARY KEY auto_increment,
 data_de_pedido date,
 clienteid int,
 constraint FK_Clientes_ID
 foreign key(clienteid) REFERENCES Clientes(id)
);

INSERT INTO Clientes values(null, "Bernardo");
INSERT INTO Pedidos values(null,"2023-06-05",1);

insert into Clientes values(null, "Luan");
insert into Pedidos values(null,"2022-05-06",2);

insert into Clientes values(null, "Renan");
insert into Pedidos values(null,"2021-04-03",3);




SELECT Pedidos.ID, Clientes.Nome, Pedidos.data_de_pedido FROM Pedidos INNER JOIN Clientes
ON Pedidos.ClienteID = Clientes.ID;

# Questão 2: Você possui duas tabelas: "Departamentos" e "Funcionários". Alguns funcionários não estão
# atribuídos a nenhum departamento. Crie uma consulta que liste todos os funcionários e seus
# respectivos departamentos, incluindo os funcionários que não estão atribuídos a nenhum
# departamento, usando um LEFT JOIN;

Create table Departamentos (
 id int primary key auto_increment,
 Nome varchar(60)
);

Create table Funcionarios (
 id int primary key auto_increment,
 Nome varchar(100),
 id_departamento int,
 constraint FK_ID_DEPARTAMENTO
 foreign key(id_departamento) REFERENCES Departamentos(id)
);

INSERT INTO Departamentos values(null, "RH");
INSERT INTO Funcionarios values(null, "Luan", 1);

INSERT INTO Departamentos values(null, "TI");
INSERT INTO Funcionarios values(null, "Bernardo", 2);

INSERT INTO Departamentos values(null, "Marketing");
INSERT INTO Funcionarios values(null, "Wlligton", 3);


SELECT Funcionarios.Nome, Departamentos.Nome AS NomeDepartamento FROM
Funcionarios LEFT JOIN Departamentos ON Funcionarios.id_departamento =
Departamentos.ID;

#Questão 3: Imagine que você tem duas tabelas: "Produtos" e "Vendas". Nem todos os produtos foram
# vendidos, mas você deseja saber quais produtos foram vendidos e quais não foram. Crie uma
# consulta que liste todos os produtos juntamente com as informações de vendas, incluindo os
# produtos que não foram vendidos, usando um RIGHT JOIN;

create table Produtos (
id int primary key auto_increment,
nome VARCHAR(60),
Quantidade_estoque int
);

CREATE TABLE Vendas (
id int primary key auto_increment,
Quantidade int, 
ProdutoId int,
constraint FK_ProdutosId
foreign key (ProdutoId) REFERENCES Produtos(id)
);



insert into Produtos values(null,"Chocolate",60);
insert into Vendas values(null, 5, 1);

insert into Produtos values(null,"Xbox", 50);
insert into Vendas values(null, 10, 2);

insert into Produtos values(null,"Coca - Cola", 200);
insert into Vendas values(null, 60, 3);


SELECT Produtos.Nome, Vendas.Quantidade FROM Produtos RIGHT JOIN Vendas ON
Produtos.ID = Vendas.ProdutoID;



