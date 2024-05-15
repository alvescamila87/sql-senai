CREATE DATABASE db_empresa;

use db_empresa;

drop table cliente;

create table cliente (
cliente_id int primary key,
nome varchar(100) not null,
email varchar (40) not null unique
);

create table cliente (
cliente_id int primary key,
nome varchar(100),
email varchar (40)
);

desc cliente;

alter table cliente change id cliente_id int primary key;
alter table cliente modify nome varchar (100);
alter table cliente change email emailNome varchar (30);  /* mudar nome de coluna */
alter table cliente modify email varchar (100);

drop table pedido;

create table pedido (
id int primary key,
cliente_id int,
data_pedido date,
valor decimal(10,2),
foreign key (cliente_id) references cliente (cliente_id) /* cria FK */
);

desc pedido;

insert into cliente values
(1, "Ana Silva", "ana.silva@email.com"),
(2, "João Souza", "joao.souza@email.com"),
(3, "Maria Costa", "maria.costa@email.com");

insert into pedido values 
(101, 1, '-05-01', 300.00),
(102, 2, '2024-05-03', 150.00),
(103, 1, '2024-05-04', 450.00);

SELECT * FROM pedido;

SELECT * FROM cliente;

/* resposta 1 - forma 1 sem inner join */
SELECT pedido.id, pedido.cliente_id, pedido.data_pedido, pedido.valor, cliente.nome
from pedido, cliente 
where pedido.cliente_id=cliente.cliente_id; 

/* resposta 1 - forma 1 sem inner, renomeando a coluna cliente_id para cliente e recebendo o nome*/
SELECT pedido.id, cliente.nome AS cliente, pedido.data_pedido, pedido.valor
from pedido, cliente 
where pedido.cliente_id=cliente.cliente_id; 

/* resposta 2 */
SELECT id, cliente, data_pedido, valor from pedido inner join cliente on nome=cliente_id; 






