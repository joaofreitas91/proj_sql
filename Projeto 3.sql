# Excluir database projeto_3 caso ela exista 
drop database if exists projeto_3;

#create database projeto_3 caso ela não exista
create database if not exists projeto_3;

#selecionar database projeto_3
use projeto_3;

#excuindo tabela buscas caso exista
drop table if exists buscas;

#criando tabela buscas
create table if not exists buscas(
	id int not null auto_increment primary key,
    squad varchar(255) not null,
    hashtag varchar (255) not null,
    data_buscas datetime not null
);

#excuindo tabela sobre caso exista
drop table if exists sobre;

#criando tabela sobre
create table if not exists sobre(
	id int not null auto_increment primary key,
    squad varchar(255) not null,
    sobre varchar(255) not null
);

#excuindo tabela equipe caso exista
drop table if exists equipe;

#criando tabela equipe
create table if not exists equipe(
	id int not null auto_increment primary key,
    squad varchar(255),
    nome varchar(255),
    descricao varchar(255),
    github varchar (255),
    email varchar (255),
    linkedin varchar (255),
    imagem_perfil varchar (255)
);

#excuindo tabela login caso exista
drop table if exists login;

#criando tabela login
create table if not exists login(
	id int not null auto_increment primary key,
    email varchar (255),
    senha varchar (255)
);

