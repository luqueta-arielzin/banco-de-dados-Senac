create table Pedidos (
    id serial primary key,
    NomeCliente varchar(100) not null,
    DataPedido timestamp default current_timestamp t,
    ValorTotal decimal(10,2) not null,
    Status varchar(20) not null,
    FormaPagamento varchar(30) not null,
    Observacao varchar(200) 
)

insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Claúdio da Silveira', 89.90, 'Pendente', 'Pix', 'Entrega Rápida')

select * from pedidos


insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao )
values ('Diego Costa', '100', 'Pago', 'Pix', null)

insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Cristiano Ronaldo', '290', 'Pendente', 'Pix', null)


insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Lionel Messi', '5.00', 'Pendente', 'Dinheiro', null)


insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Neymar Júnior', '570', 'Pago', 'Pix', null)


insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Ronaldo Nazário', '900', 'Pendente', 'Cartão', null)

insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Ronaldinho Gaúcho', '50', 'Pendente', 'Pix', null)

insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Andrés Iniesta', '90', 'Pendente', 'Dinheiro', null)


insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Paul Pogba', '120', 'Pendente', 'Cartão', null)

insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Fernando Alonso', '75', 'Pendente', 'Dinheiro', null)


insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Vinicius Júnior', '20', 'Pendente', 'Dinheiro', null)


insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Gabriel Magalhães', '150', 'Pago', 'Cartão', null)


insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Alisson Becker', '55', 'Pago', 'Pix', null)


insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Bruno Guimarães', '700', 'Pendente', 'Dinheiro', null)


insert into Pedidos
(NomeCliente, Valortotal, Status, FormaPagamento, Observacao  )
values ('Marquinhos', '49', 'Pago', 'Pix', null)




select *
from pedidos
order by valortotal desc


update pedidos  
set valortotal = 800
where id = 8


delete from pedidos 
where valortotal < 100

select Nomecliente, datapedido, valortotal
from pedidos
where datapedidos >= '2025-01-01' and datapedido <= '2025-01-31'
order by valortotal


select *
from pedidos
where formapagamento = 'Pix'
order by datapedido desc

select *
from pedidos
where observacao like '%Entrega rápida%'


select *
from pedidos
order by valortotal desc
limit 2



