/* A consulta do médico 1 com o paciente 4 passou para às
12:00 horas do dia 4 de Julho de 2006 */

select * from consultas;

select m.codm as crm, m.nome as medico, p.codp as codigo_paciente, p.CPF cpf_cliente, p.nome as paciente, c.data as data_consulta, c.hora as hora_consulta
from medicos m
join consultas c on c.codm = m.codm
join pacientes p on p.codp = c.codp;

update consultas 
set data = '2006-06-04', hora = '12:00:00'
where codm = 1 and codp = 4;

/* O paciente Paulo mudou-se para Ilhota */

select * from pacientes;

update pacientes 
set cidade = 'Ilhota'
where codp = 2 and nome = 'Paulo';

/* A paciente Ana fez aniversário e sua doença agora é câncer. */

select * from pacientes;

update pacientes
set idade = 21, doenca = 'câncer'
where codp = 1 and nome = 'Ana';

/* A consulta do médico Pedro (codf = 3) com o 
paciente Carlos (codf = 4) passou para uma hora e meia depois */

select m.codm as crm, m.nome as medico, p.codp as codigo, p.nome as paciente, c.data as consulta, c.hora as horário
from consultas c
join medicos m on m.codm = c.codm
join pacientes p on p.codp = c.codp
order by m.nome;

update consultas 
set hora = '20:30:00'
where codm = 3 and codp = 4;

/* O funcionário Carlos (codf = 4) deixou a clínica */

select * from funcionarios;

delete from funcionarios 
where codf = 4;

/* As consultas marcadas após as 19 horas foram canceladas */

select * from consultas
where hora > '19:00:00';


delete from consultas
where hora > '19:00:00';

/* Os pacientes com câncer ou idade inferior a 10 anos deixaram a clínica */ 

select * from pacientes;

select * from consultas;

select m.codm as crm, m.nome as medico, p.codp as codigo, p.nome as paciente, c.data as consulta, c.hora as horário
from consultas c
join medicos m on m.codm = c.codm
join pacientes p on p.codp = c.codp
order by p.nome;

select * from consultas
where codp = 1;

select * from pacientes
where doenca = 'câncer' || idade < 10;

delete from pacientes
where doenca = 'câncer' || idade < 10;

/* Os médicos que residem em Biguacu e Palhoca deixaram a clínica */ 

select * from medicos;

select m.codm as crm, m.nome as medico, p.codp as codigo, p.nome as paciente, c.data as consulta, c.hora as horário
from consultas c
join medicos m on m.codm = c.codm
join pacientes p on p.codp = c.codp
order by m.nome;

select * from medicos
where cidade = 'Biguaçu' || 'Palhoça';

delete from medicos
where cidade = 'Biguaçu' || 'Palhoça';

select * from consultas
where codm = 5;

delete from consultas
where codm = 5;

/*  Buscar o nome e o CPF dos médicos com menos de 40 anos ou com especialidade
diferente de traumatologia. */

use clinica;
select * from medicos;

select nome, cpf, idade, especialidade
from medicos
where idade < 40 || especialidade != 'traumatologia';

/* 2. Buscar todos os dados das consultas marcadas no período da tarde após
o dia 19/06/2006 */

select * from consultas;

select * from consultas
where data = '2006-06-19' and hora > '12:00';

/* 3. Buscar o nome e a idade dos pacientes que não residem em Florianópolis. */

select * from pacientes;

select nome, idade, cidade
from pacientes
where cidade != 'Florianopolis';

/* Buscar a hora das consultas marcadas antes do dia 14/06/2006 e depois
do dia 20/06/2006 */

select data, hora
from consultas
where data < '2006-06-14' || data > '2006-06-20';

/* Buscar o nome e a idade (em meses) dos pacientes */
select * from pacientes;

select nome as paciente, idade * (12) as 'idade (em meses)'
from pacientes
order by nome;

/* Em quais cidades residem os funcionários? */

select nome as funcionario, cidade
from funcionarios
group by cidade
order by cidade;

select * from funcionarios;

/* Qual o menor e o maior salário dos funcionários da Florianópolis? */

select max(salario) as maior_salario,  min(salario) as menor_salario
from funcionarios
where cidade = 'Florianópolis'
limit 1;

/* Qual o horário da última consulta marcada para o dia 13/06/2006? */

select data, hora
from consultas
where data = '2006-06-13'
limit 1;

/* Qual a média de idade dos médicos e o total de ambulatórios atendidos por eles? */

select avg(idade) as media_idade, count(nroa) as total_ambulatorios
from medicos;

/* Buscar o código, o nome e o salário líquido dos funcionários. O salário líquido é
obtido pela diferença entre o salário cadastrado menos 20% deste mesmo salário */

select 
	codf as codigo, 
    nome as funcionario, 
    salario as salario_bruto, 
    round(salario * 0.80) as salario_liquido
from funcionarios;

/* Buscar o nome dos funcionários que terminam com a letra “a” */
select nome 
from funcionarios
where nome like '%a'
order by nome;

/* Buscar o nome e CPF dos funcionários que não possuam a seqüência “00000”
em seus CPFs */

select nome, cpf
from funcionarios
where cpf like '00000%'
order by nome;

/* Buscar o nome e a especialidade dos médicos cuja segunda e a última letra de
seus nomes seja a letra “o” */

select nome, especialidade
from medicos
where nome like '_o%o'
order by nome;

/* Buscar os códigos e nomes dos pacientes com mais de 25 anos que estão com
tendinite, fratura, gripe e sarampo */

select codp as codigo, nome as paciente, idade, doenca
from pacientes
where doenca = 'tendinite' || 'fratura' || 'gripe' || 'sarampo' and idade > 25;

select * from funcionarios;