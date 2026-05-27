--EXERCICIOZAO


--1


select valortotal 
from pedido
where valortotal between 100 and 500


--2

select count(*) as TotalUsuariosOutlook
from usuario
where email like '%outlook.com'

--3

select max(valortotal) as MaiorValor
from pedido

--4

select min(preco) as MenorPreco
from produto

--5

select avg(preco) as Media
from produto prod
inner join pedidoproduto pp
on prod.id = pp.produtoid 



-- 6

select p.id,
p.valortotal,
u.id,
pr.id,
pr.nome as produto
from pedido p 
inner join usuario u 
on p.usuarioid = u.id 
inner join produto pr
on p.id = pr.id 
where p.valortotal > 300






--7

select u.nome, c.nome, c.estado
from usuario u 
inner join cidade c 
on u.cidadeid = c.id 
where ativo = false


select *
from produto


--8
update produto 
set preco = preco * 1.15
where descricao in ('Mouse RGB 7200 DPI', 'Mousepad extra grande')


--9

select count(valortotal) as quantidadetotal
from pedido p 
inner join usuario u 
on p.usuarioid = u.id


--10
select sum(preco)
from produto prod


--11
select distinct u.id, u.nome
from usuario u 
inner join pedido p 
on u.id = p.usuarioid 
where p.valortotal > (
  select avg(valortotal)
  from pedido p
);



--12

select *
from produto
where preco > 838




