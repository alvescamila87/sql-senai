create database db2_escola;
use db2_escola;

create table alunos (
	matricula int primary key auto_increment,
    nome varchar(50),
    data_nascimento date,
    serie varchar(10),
    turma char(1),
    media_geral decimal(3,2)    
);

desc alunos;

insert into alunos (nome, data_nascimento, serie, turma, media_geral) values
('Ana Pereira', '2009-04-05', '5º', 'A', 8.5),
('Bruno Silva', '2008-06-15', '5º', 'B', 7.4),
('Carlos Souza', '2010-09-12', '6º', 'A', 6.9),
('Daniel Oliveira', '2007-01-22', '7º','B', 9.2),
('Elena Pereira', '2009-11-30', '5º', 'A', 9.5),
('Fabio Lima', '2011-02-14', '6º', 'B', 5.7),
('Gabriele Costa', '2008-05-23', '5º', 'C', 6.8),
('Henrique Pereira', '2012-03-04', '8º', 'A', 9.1),
('Isabela Fernandes', '2009-07-19', '6º', 'A', 7.8),
('João Silva', '2007-10-25', '7º', 'C', 8.3),
('Larissa Moura', '2010-12-30', '5º', 'B', 6.2),
('Marcos Pereira', '2008-04-08', '8º', 'B', 5.9),
('Natália Santos', '2009-01-19', '5º', 'A', 7.1),
('Otávio Ribeiro', '2011-08-22', '6º', 'C', 6.0),
('Paula Almeida', '2007-03-17', '7º', 'A', 8.7),
('Rafael Duarte', '2012-09-02', '8º', 'C', 7.5),
('Sofia Araújo', '2009-11-14', '6º', 'B', 8.2),
('Thiago Martins', '2008-02-07', '5º', 'A', 9.8),
('Vanessa Silva', '2007-09-11', '7º', 'B', 7.3),
('Yuri Oliveira', null, '8º', 'A', 6.4);

select * from alunos;

select matricula, nome, serie, turma from alunos
order by nome asc;

select nome, serie, turma from alunos
where serie = '5º' and turma = 'A'
order by nome;

select nome, data_nascimento, serie, turma
from alunos
where data_nascimento < '2010-01-01' and serie = '6º'
order by nome asc;

select media_geral, nome, serie, turma
from alunos
where media_geral > 9.0 || media_geral < 6.0
order by media_geral desc;

select nome, serie
from alunos
where nome like '%Pereira'
order by nome;

select data_nascimento, nome, serie, turma 
from alunos
where data_nascimento is null;

select serie 
from alunos
group by serie
order by serie;

select * from alunos
order by serie asc;