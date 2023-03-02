/* Tabela de Produto*/ 
create table Produto (  
	id int identity(1,1) primary key,
    status int(1),  
	descricao varchar(120),  
	estoque_minimo int(11),  
	estoque_maximo int(11)
);

insert into Produto
(id, status, descricao, estoque_minimo, estoque_maximo) values
(105, 'A', 'manga', 10, 100), (109, 'A', 'melancia', 25, 100), 
(107, 'I', 'morango', 10, 200), (131, 'I', 'Pera', 10, 50);

/*Tabela de Entrada de Produtos*/

create table Entrada_Produto (  
	id int identity(1,1) primary key,
    id_produto int(11),  
	qtde int(11),  
	valor_unitario decimal(9,2),  
	data_entrada date
);

insert into Entrada_Produto
(id, id_produto, qtde, valor_unitario, data_entrada)
values(1, 109, 100, 2.5, '01-02-2023'),
(2, 131, 50, 1.90, '01-02-2023'),
(3, 105, 60, 3.20, '01-02-2023'),
(4, 107, 200, 2.00, '01-02-2023');

/*Tabela de Saída de Produtos*/

create table saida_produto (  
	id int identity(1,1) primary key,
    id_produto int(11),  
	qtde int(11),  
	valor_unitario decimal(9,2),  
	data_saida date
);

insert into saida_produto
(id, id_produto, qtde, valor_unitario, data_saida)
values(1, 131, 50, 1.90, '05-02-2023'),
(2, 107, 200, 2.00, '03-02-2023'),
(3, 109, 60, 2.50, '09-02-2023'),
(4, 105, 25, 3.20, '06-02-2023');


/*Tabela de Estoque*/

create table estoque (  
	id int identity(1,1) primary key,
    id_produto int(11),  
	qtde int(11),  
  	constraint fk_id_produtos foreign key(id_produto) references produto (id)
);