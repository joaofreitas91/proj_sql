# Excluir database projeto_3 caso ela exista 
drop database if exists projeto_3;

# create database projeto_3 caso ela não exista
create database if not exists projeto_3;

# usar database projeto_3
use projeto_3;

######### INICIO CRUD TABELA BUSCAS #########

# excuindo tabela buscas caso exista
drop table if exists buscas;

# criando tabela buscas caso não exista
create table if not exists buscas(
	id int not null auto_increment primary key,
    hashtag varchar (255) not null,
    data_buscas datetime not null
);

# inserindo dados na ta tabela buscas
insert buscas values
	(default, "#mysql", '2020-01-01 00:00:00'),
    (default, "#react", now()),
    (default, "#developer", now());
    
# buscando informações na tabela buscas
select * from buscas order by data_buscas;

# atualizando dados na tabela buscas
update buscas set hashtag = "#angular" where id = 2;

# buscando informações na tabela buscas
select * from buscas order by data_buscas;

# excluindo dados na tabela buscas referenciando id
delete from buscas where id = 2;

# buscando informações na tabela buscas
select * from buscas order by data_buscas;

######### FIM CRUD TABELA BUSCAS #########

######### INICIO CRUD TABELA SOBRE #########

# excuindo tabela sobre caso exista
drop table if exists sobre;

# criando tabela sobre
create table if not exists sobre(
	id int not null auto_increment primary key,
    sobre text(500) not null
);

# inserindo dados na tabela sobre
insert sobre values
	(default,"aqui irão ter informções sobre o projeto"),
    (default,"esse campo será excluido");

# buscando informações na tabela sobre
select * from sobre;

# atualizando dados na tabela sobre
update sobre set sobre = "Hashtag Finder ! Projeto pensado em facilitar as buscas de Hashtags o famoso '#'! 
	Visamos tornar de forma eficaz e com visual atraente as buscas do twitter que você mais busca salvando seus históricos de pesquisas de Hashtags!
	Então navegue em nossa página e conheça mais sobre o nosso projeto e quem desenvolveu !" where id = 1;

# buscando informações na tabela sobre
select * from sobre;

# excluindo dados na tabela buscas referenciando id
delete from sobre where id = 2;

# buscando informações na tabela sobre
select * from sobre;

######### FIM CRUD TABELA SOBRE #########

######### INICIO CRUD TABELA EQUIPE #########
#excuindo tabela equipe caso exista
drop table if exists equipe;

#criando tabela equipe
create table if not exists equipe(
	id int not null auto_increment primary key,
    nome varchar(255),
    descricao varchar(255),
    github varchar (150),
    email varchar (150),
    linkedin varchar (150),
    imagem_perfil varchar (255)
);

# inserindo dados na tabela equipe
insert equipe values
	(default,
    "João Paulo Freitas",
    "Sempre fui apaixonado por tecnologia e hoje estou dedicando todo o meu tempo a programação, tenho estudado muito e estou ansioso por uma oportunidade no setor de desenvolvimento de software.",
    "https://github.com/joaofreitas91",
    "jp.contatoprofissional@gmail.com",
    "https://www.linkedin.com/in/joaopfreitas91/",
    "http://link_imagem_equipe.com"
    ),
    (default,
    "Michael Ronald",
    "Programador por natureza, sou um eterno aprendiz do que amo: tecnologia. Contribuí com esse projeto desenvolvendo a página Home e a parte de busca por hashtags.",
    "https://github.com/MRonald",
    "ronaldmichael918@gmail.com",
    "https://www.linkedin.com/in/mr-dev/",
    "http://link_imagem_equipe.com"
    ),
    (default,
    "Michael Ronald 2",
    "Programador por natureza, sou um eterno aprendiz do que amo: tecnologia. Contribuí com esse projeto desenvolvendo a página Home e a parte de busca por hashtags.",
    "https://github.com/MRonald",
    "ronaldmichael918@gmail.com",
    "https://www.linkedin.com/in/mr-dev/",
    "http://link_imagem_equipe.com"
    );
    
# buscando informações na tabela equipe
select * from equipe order by nome;

# atualizando informação na tabela equipe
update equipe set nome = "Andy Silva" where id = 3;

# buscando informações na tabela equipe
select * from equipe order by id;

# removendo dados tabela equipe
delete from equipe where id = 3;

# buscando informações na tabela equipe
select * from equipe order by nome;

######### FIM CRUD TABELA EQUIPE #########

######### INICIO CRUD TABELA LOGIN #########

#excuindo tabela login caso exista
drop table if exists login;

#criando tabela login
create table if not exists login(
	id int not null auto_increment primary key,
    email varchar (255),
    senha varchar (255)
);

# inserindo dados na tabela login
insert login values 
	(default, "contato@newtab.academy", "123456"),
    (default, "contato@newtab.academy", "123456"),
    (default, "contato@newtab.academy", "123456");

# buscando informações na tabela login
select * from login;

# atulizando informações na tabela login
update login set email = "contato2021@newtab.academy" where id = 2;

# buscando informações na tabela login
select * from login;

# removendo informações na tabela login
delete from login where id = 2;

# buscando informações na tabela login
select * from login;

######### FIM CRUD TABELA LOGIN #########




