create database exercicio_2_forma;
use exercicio_2_forma;

#Questão 1 :Considere
#uma tabela de banco de dados chamada "Pedidos" com os seguintes
#: ID do Pedido (chave primária), Nome do Cliente, Endereço do Cliente
#e Produto do Pedido. Explique
#se esta tabela está em 2FN ou não, e justifique sua resposta.

#R: a tabela não estar de acordo com a 2 forma nomrla, visto que ela ja não se encontra na 1 forma normal, visto que a tabela possui um atributo multivalorado, que é o endereço.
#Além disso, ela possue o atributo Nome do Cliente que é parcialmente dependente da chave primária(ID do pedido).Assim o idela que a tabela pedidos fosse criada com apenas os campos: ID do Pedido e Produto do Pedido.Os demais campos seriam criados em outra tabela, no caso uma tablea Clientes, por exemplo.


#Questão 2: Você possui uma tabela "Livros" com os seguintes atributos: ISBN (chave
#primária), Título do Livro, Autor e Editora. Analise
#se esta tabela está em 2FN ou não, e explique seu raciocínio.

#R: #R: A tabela estar na 2 FN, pois primeiramente, ela estar de acordo com a 1 FN, e não possui nenhum campo está parcialmente ou toltalmente dependente de outro campo.


#Questão3: Dada uma tabela "Funcionários" com os atributos: ID do Funcionário (chave
#primária), Nome do Funcionário, Departamento e Endereço do Departamento,
#determine se a tabela está em 2FN ou não, e forneça uma explicação.

#R: A tabela Funcionários não estar de acordo com a 2 FN, pois tambem não está de acordo com a 1 FN, visto que o atributo Endereço do Departamento é multivalorado.Além disso, o atributo Endereço do Departamento é parcialmente dependente do Campo Departamento.

# Questão 4: .Suponha uma tabela "Cursos" com os seguintes atributos: Código do Curso (chave
# primária), Nome do Curso, Professor e Departamento do Professor. Avalie se esta
# tabela está em 2FN ou não e explique sua conclusão.

#R: A tabela não estar na 2 FN, pois o atributo Departamento do Professor é dependente do campo Professor.


# Questão 5: Considere uma tabela "Pedidos" com os atributos: Número do Pedido (chave
# primária), Produto, Nome do Cliente e Cidade do Cliente. Determine se esta
# tabela está em 2FN ou não, e dê razões para sua resposta.

#R: a tabela não está na 2 FN, pois o Nome do Cliente e Cidade do Cliente são dependentes . O ideal seria a criação de outra tabela Clientes para armazenar essas informações.


# Questão 6:Você tem uma tabela "Vendas" com os seguintes atributos: Número da Venda
# (chave primária), Produto Vendido, Nome do Vendedor, Departamento do Vendedor e
# Cidade do Cliente. Avalie se esta tabela está em 2FN ou não e explique por quê.

#R: a tabela não está na 2 FN , pois os campos Nome do Vendedor . Nome do Vendedor e Departamento do vendedor são pendentes de outros campos. O idela seria a criação de 1 tabela Cliente e outra Vendedor para colocar esses campos.