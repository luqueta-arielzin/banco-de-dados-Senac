select count(*) as TotalUsuarios
from usuario
where ativo = true



select *
from pedido

select max(preco) as Maior
from produto

select min(preco) as Menor
from produto


select avg(valortotal) as MediaSalarial
from pedido
where usuarioid = 4

select sum(Valortotal) as SomaValorTotalPedidos
from pedido 


-- 1
select nome, email
from usuario
where ativo = true

-- 2
select id, datapedido, valortotal
from pedido
where valortotal > 500

--3
select u.nome, p.valortotal
from pedido p 
inner join usuario u 
on p.usuarioid = u.id

--4
select count(*) as TotalUsuarios
from usuario
where email like '%gmail.com'
--5
select max(Valortotal) as maiorValor
from pedido 

-- 6 calcular a media de valor dos pedidos 
--feitos somente por usuarios ativos
select avg(Valortotal) as mediaValorPedido
from pedido p
inner join usuario u 
on p.usuarioid = u.id 
where u.ativo = true

--7
select sum(Valortotal) as SomaDosValores
from pedido p
inner join formapagamento f 
on p.formapagamentoid = f.id 
where f.nome ilike '%Pix%'


--8
select u.nome as NomeUsuario, p.datapedido, s.nomestatus
from pedido p
inner join usuario u
on p.usuarioid = u.id 

inner join status s 
on p.statusId = s.id
where nomestatus = 'Pendente'




--9
select u.nome as NomeUsuario, p.valortotal, fp.nome as formapagamento
from pedido p
inner join usuario u
on p.usuarioid = u.id 
inner join formapagamento fp
on p.formapagamentoid = fp.id
where fp.nome ilike '%Cartão%'
--where fp.id = 1 or fp.id = 2


--10
select u.nome as NomeUsuario, p.datapedido , p.valortotal 
from pedido p
inner join usuario u
on p.usuarioid = u.id 
where valortotal > 1000

--11
select u.nome as NomeUsuario
from pedido p
inner join usuario u
on p.usuarioid = u.id 
where ativo = true

--12
select u.nome as NomeUsuario, s.nomestatus, p.observacao
from pedido p
inner join usuario u
on p.usuarioid = u.id 
inner join status s
on p.statusid = s.id
where observacao is not null	


select *
from usuario 
--13
update usuario
set email = 'mariazinha.oliver@yahoo.com', telefone = '(51) 99922-8922'
where id = 2



