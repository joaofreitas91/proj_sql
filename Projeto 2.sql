# excluir database projeto_2 caso ela exista
drop database if exists projeto_2;

# criar database projeto_2 caso ela não exista
create database if not exists projeto_2;

# usar database projeto_2
use projeto_2;

# excluir tabela usuario caso ela exista
drop table if exists usuario;

# criar tabela usuario caso não exista
create table if not exists usuario(
	id int not null auto_increment primary key,
    nome varchar(150) not null,
	imagem varchar(200) not null,
	nome_usuario varchar(100) not null,
	data_cadastro datetime not null
);

# inserir dados na tabela usuario
insert usuario values 
	(default, "Jeferson Santos", "http://caminho_da_imagem.com", "jef_san", now()),
	(default, "Matheus Fernandes", "http://caminho_da_imagem.com", "mat_san", now());

# buscar dados tabela usuario ordenada por nome
select * from usuario order by nome;

# excluir tabela cartao caso ela exista
drop table if exists cartao;

#criar tabela cartão caso ela não exita 
create table if not exists cartao(
	id int not null auto_increment primary key,
	numero char(16) not null,
	cvv char(3) not null,
	data_expiracao date,
	valido boolean,
	data_cadastro datetime
);

# inserir dados na tabela cartão
insert cartao values(default, "1234123412341234", "258", "2033-09-01", true, now()),
					(default, "9999555522221111", "258", "2033-09-01", false, now());

# buscar dados tabela cartao e mostrar somente os validos
select * from cartao where valido = true;                                        

# excluir tabela transacao caso ela exita
drop table if exists transacao;

# criar tabela transacao caso ela não exista
create table if not exists transacao(
	id int not null auto_increment primary key,
	id_usuario int not null,
	id_cartao int not null,
	valor decimal(8,2),
	data_cadastro datetime,
    foreign key (id_usuario) references usuario (id),
    foreign key (id_cartao) references cartao (id)
);

# inserir dados na tabela transacao
insert transacao values 
(default, 1, 1, 15.50, now()),
(default, 2, 2, 10.50, '2021-06-15 00:00:00');

# buscar dados nas tabelas transação,  usuario e cartão e mostrar id transacao, data cadastro, valor, nome, nome usuario e numero do cartao em ordem de data decrescente
select t.id, t.data_cadastro , t.valor, u.nome, u.nome_usuario, c.numero from transacao as t join usuario as u on t.id_usuario = u.id join cartao as c on t.id_cartao = c.id order by t.data_cadastro desc;

# limpar dados transacao
#truncate transacao;

# limpar dados usuario
#truncate usuario;


