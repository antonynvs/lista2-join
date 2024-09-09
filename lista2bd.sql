-- Antony Novaes Cruz, 22B

-- 1. E-commerce e Gestão de Inventário

-- Exercício 1:

-- Escreva uma consulta SQL que recupere todos os pedidos juntamente com
-- o nome e o email dos clientes que fizeram esses pedidos. Utilize INNER
-- JOIN para combinar as tabelas de pedidos e clientes. 

use db_ecommerce_exam;

select pedidos.pedido_id, clientes.nome, clientes.email
from clientes
inner join pedidos
on clientes.cliente_id = pedidos.cliente_id;

-- 2. Sistema de Gestão de Relacionamento com o Cliente (CRM)

-- Exercício 3:

-- Elabore uma consulta para obter todos os clientes, incluindo os que não
-- participaram de nenhuma campanha. Utilize LEFT JOIN entre as tabelas de
-- clientes e participações de campanha.

use db_crm_exam;

select clientes.cliente_id, clientes.nome
from clientes
left join participacoes_campanha
on clientes.cliente_id = participacoes_campanha.cliente_id;


-- 3. Finanças e Controle Orçamentário

-- Exercício 5:
-- Crie uma consulta para obter o nome da conta, tipo de conta, tipo de
-- transação e o valor para todas as transações, utilizando INNER JOIN entre
-- as tabelas de contas e transações.

use db_financas_exam;

select contas.nome, contas.tipo, transacoes.tipo, transacoes.valor
from contas 
inner join transacoes
on contas.conta_id = transacoes.conta_id;

-- 4. Saúde e Gestão de Prontuários Eletrônicos

-- Exercício 3:
-- Desenvolva uma consulta que liste todas as consultas, incluindo o nome
-- do paciente e o motivo da consulta. Utilize INNER JOIN entre as tabelas de
-- consultas e pacientes.

use db_prontuario_exam;

select pacientes.paciente_id, pacientes.nome, consultas.motivo
from consultas
inner join pacientes
on consultas.paciente_id = pacientes.paciente_id;

-- 5. Logística e Cadeia de Suprimentos

--  Exercício 5:

-- Crie uma consulta para exibir todos os fornecedores e os produtos
-- fornecidos por eles, incluindo fornecedores que não forneceram produtos.
-- Utilize LEFT JOIN entre as tabelas de fornecedores e produtos.

use db_logistica_exam;

select fornecedores.nome, produtos.nome
from fornecedores
left join produtos
on fornecedores.fornecedor_id = produtos.fornecedor_id