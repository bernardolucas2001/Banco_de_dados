create database exercicios_terceira_forma;
use exercicios_terceira_forma;

# Questão 1: Suponha uma tabela "Funcionários" com os atributos: ID do Funcionário (chave
# primária), Nome do Funcionário, Departamento e Localização do Departamento
# (cidade e estado). Determine se esta tabela está em 3FN e explique sua resposta.

#R: não estar na 3 FN pois o campo Localização do Departamento é determinado pelo Campo Departamento(que é uma atributo não chave). Ou seja não está de acordo com a 2 FN, assim, não estando tambem com a 3 FN.

# Questão 2 : Você tem uma tabela "Encomendas" com os seguintes atributos: Número da
# Encomenda (chave primária), ID do Cliente, Nome do Cliente, e Cidade de
# Entrega. Avalie se esta tabela está em 3FN ou não e explique seu raciocínio.

#R: não estar na 3 FN pois o campo nome do Cliente é dependente do ID do Cliente(que é um atributo não chave) e não da chave primária.

# Questão 3: Considere uma tabela "Produtos" com os atributos: ID do Produto (chave
# primária), Nome do Produto, Categoria do Produto e Nome do Fornecedor. Analise
# se esta tabela está em 3FN ou não e justifique sua resposta.

#R: Estar na 3 FN, pois estar de acordo com a 2 FN todas as dependencias transitivas foram eliminadas.

# Questão 4:  Dada uma tabela "Escolas" com os atributos: ID da Escola (chave primária),
# Nome da Escola, Nome do Diretor e Endereço do Diretor. Determine se esta tabela
# está em 3FN ou não, e forneça uma explicação. 

#R: não estar na 3 FN, pois o campo Endereço do Diretor(atributo não chave) possui pendencia do campo Nome do Diretor(que tambem é um atributo não chave) e não da Chave Primária(ID da Escola).

# Questão 5: Suponha uma tabela "Pedidos" com os atributos: Número do Pedido (chave
# primária), Produto, ID do Cliente, Nome do Cliente e Estado do Cliente. Avalie
# se esta tabela está em 3FN ou não e explique por quê.

#R: Não estar na 3 FN, pois os campos Nome do Cliente e Estado do Cliente são dependentes do ID do Cliente( que é um atributo não chave) e não da chave primária(Número do Pedido).

# Questão 6: Você possui uma tabela "Projetos" com os seguintes atributos: ID do
# Projeto (chave primária), Nome do Projeto, ID do Gerente do Projeto, Nome do
# Gerente e Departamento do Gerente. Determine se esta tabela está em 3FN e
# justifique sua resposta.

#R: não estar na 3 FN, pois os atributos Nome do Gerente e Departamento do Gerente são dependentes do atributo ID do Gerente de Projeto(que é um atributo não chave) e não da chave primária (ID do Projeto).

