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
