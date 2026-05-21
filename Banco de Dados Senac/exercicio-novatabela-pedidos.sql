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




CREATE TABLE Usuario (
    Id SERIAL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(11) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Telefone VARCHAR(20),
    DataCadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Ativo BOOLEAN DEFAULT TRUE
);


CREATE TABLE Pedido (
    Id SERIAL PRIMARY KEY,
    UsuarioId INT NOT NULL,
    DataPedido timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ValorTotal DECIMAL(10,2) NOT NULL,
   StatusId int NOT null default 4,
    FormaPagamentoId int not NULL,
    Observacao VARCHAR(200) NULL,
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(Id),
    foreign key (FormaPagamentoId) references FormaPagamento(Id),
    foreign key (StatusId) references Status(Id)
);


INSERT INTO Usuario (Nome, CPF, Email, Telefone, Ativo)
VALUES
('João Silva', '12345678901', 'joao.silva@gmail.com', '(11) 99876-1234', TRUE),
('Maria Oliveira', '23456789012', 'maria.oliveira@yahoo.com', '(21) 99765-4321', TRUE),
('Carlos Souza', '34567890123', 'carlos.souza@hotmail.com', '(31) 99654-3210', FALSE),
('Ana Pereira', '45678901234', 'ana.pereira@gmail.com', '(41) 99543-2109', TRUE),
('Fernanda Lima', '56789012345', 'fernanda.lima@outlook.com', '(51) 99432-1098', FALSE),
('Ricardo Gomes', '67890123456', 'ricardo.gomes@gmail.com', '(61) 99321-0987', TRUE),
('Patricia Alves', '78901234567', 'patricia.alves@yahoo.com', '(71) 99210-9876', TRUE),
('Lucas Martins', '89012345678', 'lucas.martins@hotmail.com', '(81) 99109-8765', FALSE),
('Juliana Rocha', '90123456789', 'juliana.rocha@gmail.com', '(91) 99098-7654', TRUE),
('Bruno Carvalho', '01234567890', 'bruno.carvalho@outlook.com', '(92) 98987-6543', TRUE);




INSERT INTO Pedido (UsuarioId, ValorTotal, StatusId, FormaPagamentoId, Observacao)
VALUES
(1, 250.75, 1, 1, 'Entrega expressa'),
(2, 89.90, 4, 3, 'Cliente pediu embalagem presente'),
(3, 560.00, 2, 4, NULL),
(4, 120.50, 3, 2, 'Pagamento não aprovado'),
(2, 999.99, 1, 3, 'Entrega agendada'),
(2, 45.00, 4, 5, NULL),
(1, 310.20, 2, 1, 'Entregar após 18h'),
(3, 780.40, 1, 4, NULL),
(1, 150.00, 4, 3, 'Primeira compra do cliente'),
(5, 67.89, 1, 2, NULL);


select *
from pedido

select pedido.Id, pedido.usuarioId, usuario.nome, pedido.datapedido 
from pedido
inner join usuario 
on pedido.usuarioId = usuario.Id
where usuario.Id = 2

select p.id, u.nome, p.datapedido
from Pedido p
inner join usuario u
on p.usuarioId = u.Id



INSERT INTO Pedido (UsuarioId, ValorTotal, Status, FormaPagamento, Observacao)
VALUES
(4, 12.99, 'Pago', 'Pix', null);


select *
from pedido 



CREATE TABLE Pedido (
    Id SERIAL PRIMARY KEY,
    UsuarioId INT NOT NULL,
    DataPedido timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ValorTotal DECIMAL(10,2) NOT NULL,
    StatusId int NOT null default 4,
    FormaPagamentoId int not NULL,
    Observacao VARCHAR(200) NULL,
    FOREIGN KEY (UsuarioId) REFERENCES Usuario(Id),
    foreign key (FormaPagamentoId) references FormaPagamento(Id),
    foreign key (StatusId) references Status(Id)
);








create table FormaPagamento (
    id int primary key,
    nome varchar(30)
);


insert into FormaPagamento(id, nome) values
(1, 'Cartão de Crédito'),
(2, 'Cartão de Débito'),
(3, 'PIX'),
(4, 'Boleto'),
(5, 'Dinheiro');



create table status(
id int primary key,
nomeStatus varchar(30)
)

insert into status(id, nomeStatus) values
(1, 'Pago'),
(2, 'Enviado'),
(3, 'Cancelado'),
(4, 'Pendente');




select p.id as pedidoId,
p.usuarioId as UsuarioId,
u.nome as NomeUsuario,
p.datapedido,
fp.nome as FormaPagamento,
s.nomestatus as Status,
p.valortotal 
from pedido p
inner join usuario u
on p.usuarioId = u.id 
inner join status s
on p.statusid = s.id 
inner join formapagamento fp
on p.formapagamentoid = fp.id





