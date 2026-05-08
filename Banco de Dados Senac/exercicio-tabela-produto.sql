create table Produto (
    id serial primary key,
    Nome varchar(100) not null,
    Preco decimal(10,2) not null,
    Estoque int default 0
)

insert into Produto 
(Nome, Preco, Estoque)
values ('Kaiser', '3.5', '50')

select *
from Produto


insert into Produto 
(Nome, Preco, Estoque)
values ('Jack Daniels', '170', '30')


insert into Produto 
(Nome, Preco, Estoque)
values ('Vinho Aurora', '42', '100')

update Produto
set Preco = '4.5'
where id = 1

delete from Produto
where id = 1


