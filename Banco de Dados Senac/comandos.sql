create table cliente (
    id serial primary key,
    Nome varchar(100) not null,
    Email varchar(100),
    Genero varchar(1) not null,
    DataNascimento date not null
)


insert into cliente 
(Nome, Email, Genero, DataNascimento)
values ('João da Silva', 'joao@email.com', 'M', '1990-05-12')


insert into cliente 
(Nome, Genero, DataNascimento)
values ('Maria Souza', 'F', '1988-09-23')


-- seleciona todas as colunas de cliente
select *
from cliente 

-- seleciona somente o nome e email de cliente
select Nome, Email
from cliente

select *
from cliente
where Nome = 'Maria Souza'

-- seleciona todas as colunas de cliente ordenando por DataNascimento
select *
from cliente
order by DataNascimento

--seleciona todas as colunas do cliente
--ordenando de forma descrescente por DataNascimento
select *
from cliente
order by DataNascimento desc

-- atualiza email de cliente cujo Id é igual 2
update cliente 
set Email = 'maria.souza@email.com'
where Id = 2



insert into cliente 
(Nome, Email, Genero, DataNascimento)
values ('joao@email.com','João da Silva', 'M', '1990-05-12')



delete from cliente
where id = 3


