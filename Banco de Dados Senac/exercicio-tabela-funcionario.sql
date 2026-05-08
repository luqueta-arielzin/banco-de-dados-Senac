create table Funcionario (
    id serial primary key,
    Nome varchar(100) not null,
    Cargo varchar(50) not null,
    Salario decimal(10,2) not null,
    DataAdmissao date not null
    
)

select * from Funcionario

insert into Funcionario
(Nome, Cargo, Salario, DataAdmissao)
values ('João Vitor', 'Gerente', 2100, '2022-06-09')

insert into Funcionario 
(Nome, Cargo, Salario, DataAdmissao)
values ('Neymar Junior', 'Engenheiro de Dados', 3200, '2025-01-01')

insert into Funcionario 
(Nome, Cargo, Salario, DataAdmissao)
values ('Sabrina Sato', 'Desenvolvedor', 3000, '2024-05-27')

select *
from Funcionario
where salario >= 3000

select * 
from Funcionario
where dataAdmissao >= '2025-01-01' 
and dataAdmissao <= '2025-12-31'

select Nome, Cargo
from Funcionario
where cargo = 'Desenvolvedor'

update Funcionario
set cargo = 'Gerente'
where id = 1

delete from Funcionario
where id = 4


select *
from funcionario
order by id asc



