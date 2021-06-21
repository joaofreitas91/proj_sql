# Exclusão database caso exista
drop database if exists projeto_1;

# Criação database do Projeto 1 caso não exista
create database if not exists projeto_1;

#selecionando database 1
use projeto_1;

#exclusão tabalela transação caso exista
drop table if exists transacao;


-- Criação tabela transação caso não exista
create table if not exists transacao(
	id int not null auto_increment,
    tipo enum("compra", "venda") not null,
    nome varchar(150) not null,
    valor decimal(8,2), 
    data_de_cadastro datetime not null,
    primary key (id)
);

#inserção de dados na tabela transação
insert into transacao(tipo, nome, valor, data_de_cadastro) values 
	("compra", "Produto 1", "10.30", "2021-06-03 23:02:04"),
    ("venda", "Produto 2", "5.99", now());

# buscar dados com filtro data e ordenação crescente por data
select *, date_format(data_de_cadastro, "%d/%m/%Y") from transacao order by data_de_cadastro asc;

# soma valores transação
select sum(valor) from transacao;

#limpar todos os dados da tabela transaçãotransacao
#truncate transacao;




