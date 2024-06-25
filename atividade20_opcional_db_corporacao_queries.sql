/* criar o banco */
create database db_corporacao;
use db_corporacao;

/* Listar nome e sobrenome ordenado por sobrenome */

select * from funcionarios;
select primeironome as nome, segundonome as nomedomeio, ultimonome as sobrenome from funcionarios
order by sobrenome;

/* Listar todos os campos de funcionários ordenados por cidade */
select * from funcionarios
order by cidade;

/* Liste os funcionários que têm salário superior 
a R$ 1.000,00 ordenados pelo nome completo */

select 
	codigo, 
    concat_ws(' ', primeironome, ifnull(segundonome, ' '), ultimonome) as nome_completo,
    salario    
from funcionarios
where salario > '1000.00'
order by nome_completo;

/* Liste a data de nascimento e o primeiro nome dos funcionários ordenados do mais novo
para o mais velho */

select * from funcionarios;

select codigo, primeironome as nome_funcionario, datanasci as data_nascimento
from funcionarios
order by data_nascimento desc;

/* Liste os funcionários como uma listagem telefônica */
select ultimonome as sobrenome, primeironome as nome, segundonome as nomedomeio, fone 
from funcionarios
order by sobrenome;

/* Liste o total da folha de pagamento */
select sum(salario) as folha_pagamento from funcionarios;

/* Liste o nome, o nome do departamento e a função de todos os funcionários */

select f.primeironome as nome_funcionario, d.nome as departamento, f.funcao
from departamentos d 
join funcionarios f on f.codigodepartamento = d.codigo
order by nome_funcionario;

/* Liste todos departamentos com seus respectivos gerentes */

select * from departamentos;

select d.nome as departamento, f.primeironome as gerente
from departamentos d
join funcionarios f on f.codigo = d.codigofuncionariogerente;

/* Liste o valor da folha de pagamento de cada departamento (nome) */

select d.nome, sum(f.salario) as folha_pagamento
from funcionarios f
join departamentos d on d.codigo = f.codigodepartamento
group by d.nome
order by d.nome;

/* Liste os departamentos dos funcionários que têm a função de supervisor */

select d.nome, f.funcao
from funcionarios f
join departamentos d on d.codigo = f.codigodepartamento
where f.funcao = 'supervisor';

/* Liste a quantidade de funcionários desta empresa */
select count(*) from funcionarios;

/* Liste o salário médio pago pela empresa */
select avg(salario) from funcionarios;

/* Liste o menor salário pago pela empresa em cada departamento */

select d.nome, min(f.salario) as menor_salario 
from funcionarios f 
join departamentos d on d.codigo = f.codigodepartamento
group by d.nome
order by d.nome;

/* Liste o nome completo de todos os funcionários que não tenham segundo nome */

select primeironome as nome, segundonome as nomedomeio, ultimonome as sobrenome 
from funcionarios
where segundonome is null
order by nome;

select concat_ws(' ', primeironome, segundonome, ultimonome) as nome_completo
from funcionarios
where segundonome is null
order by primeironome;

/* Liste o nome do departamento e do funcionário ordenados por departamento e
funcionário */

select d.nome as departamento, f.primeironome as funcionario
from funcionarios f
join departamentos d on d.codigo = f.codigodepartamento
order by d.nome, f.primeironome;

/* Liste os nomes dos funcionários que moram em Recife e que exerçam a função de
Telefonista */

select f.primeironome as funcionario, cidade, funcao
from funcionarios f
where cidade = 'Recife' and funcao = 'Telefonista'
order by funcionario;

select * from funcionarios;

/* Liste os nomes dos funcionários que trabalham no departamento Pessoal */
select f.primeironome as funcionario, d.nome as departamento
from funcionarios f
join departamentos d on d.codigo = f.codigodepartamento
where d.nome = 'Pessoal';

/* Liste o nome e o departamento de todos os funcionários que ganham mais do que algum
gerente */

select f.primeironome as funcionario, f.funcao, f.salario, d.nome as departamento
from funcionarios f 
join departamentos d on d.codigo = f.codigodepartamento
where f.funcao != 'Gerente' and f.salario > '4500.00'
order by f.funcao;

select * from departamentos;




