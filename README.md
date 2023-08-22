
Banco de Dados da Padaria
Este é um banco de dados simples chamado Padaria, criado para gerenciar informações relacionadas a uma padaria. Ele consiste em quatro tabelas:

Funcionários: Armazena detalhes sobre os funcionários da padaria, como nome, cargo e salário.

TiposDeProduto: Contém os tipos de produtos oferecidos pela padaria.

Produtos: Armazena os produtos específicos disponíveis na padaria, associados aos tipos de produtos.

RegistroDePonto: Registra os horários de entrada/saída dos funcionários.

Tabelas e Campos
Funcionários:

id: Identificador único do funcionário (número).
nome: Nome do funcionário (texto).
cargo: Cargo do funcionário (texto).
salario: Salário do funcionário (número decimal).
TiposDeProduto:

id: Identificador único do tipo de produto (número).
nome: Nome do tipo de produto (texto).
Produtos:

id: Identificador único do produto (número).
nome: Nome do produto (texto).
tipo_id: ID do tipo de produto relacionado (número).
RegistroDePonto:

id: Identificador único do registro de ponto (número).
funcionario_id: ID do funcionário relacionado ao registro (número).
data_hora: Data e hora do registro de ponto (data e hora).
Exemplos
O banco de dados inclui alguns exemplos iniciais de tipos de produtos e produtos para ilustrar como ele funciona.


