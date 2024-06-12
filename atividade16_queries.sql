create database db_loja;

use db_loja;

create table produto (
id_nf int,
id_item int,
cod_prod int,
valor_unit decimal (10,2) ,
quantidade int,
desconto int
);

desc produto;

insert into produto values 
(1, 1, 1, 25.00, 10, 5),
(1, 2, 1, 13.50, 3, null),
(1, 3, 3, 15.00, 2, null),
(1, 4, 4, 10.00, 1, null),
(1, 5, 5, 30.00, 1, null),
(2, 1, 3, 15.00, 4, null),
(2, 2, 4, 10.00, 5, null),
(2, 3, 5, 30.00, 7, null),
(3, 1, 1, 25.00, 5, null),
(3, 2, 4, 10.00, 4, null),
(3, 3, 5, 30.00, 5, null),
(3, 4, 2, 13.50, 7, null),
(4, 1, 5, 30.00, 10, 15),
(4, 2, 4, 10.00, 12, 5),
(4, 3, 1, 25.00, 13, 5),
(4, 4, 2, 13.50, 15, 5),
(5, 1, 3, 15.00, 3, null),
(5, 2, 5, 30.00, 6, null),
(6, 1, 1, 25.00, 22, 15),
(6, 2, 3, 15.00, 25, 20),
(7, 1, 1, 25.00, 10, 3),
(7, 2, 2, 13.50, 10, 4),
(7, 3, 3, 15.00, 10, 4),
(7, 4, 5, 30.00, 10, 1);

select count(*) from produto;

select id_nf, id_item, cod_prod, valor_unit, (valor_unit * (desconto/100)) as valor_vendido 
from produto 
where desconto is not null;

select id_nf, id_item, cod_prod, valor_unit
from produto 
where desconto is null;

select count(*)
from produto 
where desconto is null;

update produto 
set desconto = 0.00
where desconto is null;

select * from produto;

select id_nf, id_item, cod_prod, valor_unit, 
quantidade * valor_unit as valor_total, 
desconto, 
(valor_unit - (valor_unit * (desconto/100))) as valor_vendido
from produto;

select id_nf, id_item, cod_prod, valor_unit, quantidade, 
quantidade * valor_unit as valor_total, 
desconto, 
(valor_unit - (valor_unit * (desconto/100))) as valor_vendido
from produto;

select id_nf, quantidade * valor_unit as valor_total
from produto
order by valor_total desc;

select count(id_nf), 
sum(quantidade * valor_unit) as valor_total
from produto
order by valor_total desc;

select count(id_nf), 
(valor_unit - (valor_unit * (desconto / 100))) as valor_vendido,
quantidade * valor_unit 
from produto
order by valor_vendido desc;

select * from produto;

select if_nf, cod_produ, quantidade * valor_unit as valot_total 
from produto;

select id_nf, sum(quantidade * valor_unit) as valor_total
from produto
group by id_nf
order by valor_total desc;

select id_nf, 
sum(quantidade * valor_unit) as valor_total,
sum(valor_unit - (valor_unit * (desconto / 100))) as valor_vendido
from produto
group by id_nf
order by valor_vendido desc;

select cod_prod, sum(quantidade) 
from produto
group by cod_prod
order by quantidade desc;

select * from produto
where cod_prod = 3;

select id_nf, sum(quantidade * valor_unit) as valor_total
from produto
group by id_nf
having sum(quantidade * valor_unit) > 500.00
order by valor_total desc;

select id_nf, cod_prod, quantidade
from produto
where quantidade > 10
group by id_nf, cod_prod
order by quantidade desc;

select * from produto
order by desconto desc;

select cod_prod, min(desconto) as menor, max(desconto) as maior, avg(desconto) as media 
from produto
group by cod_prod
limit 1;

select id_nf, count(id_item) as quantidade
from produto
group by id_nf
having count(id_item) > 3
order by quantidade desc;

select * from produto
order by quantidade desc;
