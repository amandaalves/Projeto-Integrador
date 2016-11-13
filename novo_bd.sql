create table Usuario(
	id uniqueidentifier not null,
	nome varchar(250),
	dataDeNascimento date,
	enderecoFoto varchar(500),
	primary key(id)
)

create table Tarefa(
	id int identity(1,1) not null,
	descricao varchar(140) not null,
	cumprida bit not null,
	prioritaria bit not null,
	horarioDeEnvio datetime default getdate(),
	usuario_id uniqueidentifier not null,
	primary key(id),
	foreign key(usuario_id) references Usuario(id)
)

create table Anotacao(
	id int identity(1,1) not null,
	titulo varchar(100),
	descricao varchar(200) not null,
	favorito bit not null,
	horarioDeEnvio datetime default getdate(),
	usuario_id uniqueidentifier not null,
	primary key(id),
	foreign key(usuario_id) references Usuario(id)
)

create table Arquivo(
	id int identity(1,1) not null,
	descricao varchar(120) not null,
	endereco varchar(500) not null,
	usuario_id uniqueidentifier not null,
	primary key(id),
	foreign key(usuario_id) references Usuario(id)
)

create table Agenda(
	id int identity(1,1) not null,
	titulo varchar(100) not null,
	descricao varchar(200),
	diaEvento date default getdate(),
	usuario_id uniqueidentifier not null,
	primary key(id),
	foreign key(usuario_id) references Usuario(id)
)

create table Sala(
	id int identity(1,1) not null,
	descricao varchar(60) not null,
	senha varchar(100) not null,
	primary key(id)
)

create table UsuariosSala(
	usuario_id uniqueidentifier not null,
	sala_id int not null,
	primary key(usuario_id, sala_id)
)

create table Mensagem(
	id int identity(1,1) not null,
	descricao varchar(3000) not null,
	horarioDeEnvio datetime default getdate(),
	usuario_id uniqueidentifier not null,
	sala_id int not null,
	primary key(id),
	foreign key(usuario_id) references Usuario(id),
	foreign key(sala_id) references Sala(id)
)

create table Boletim(
	id int identity(1,1) not null,
	descricao varchar(100) not null,
	usuario_id uniqueidentifier not null,
	primary key(id),
	foreign key(usuario_id) references Usuario(id)
)

create table Disciplina(
	id int identity(1,1) not null,
	descricao varchar(100) not null,
	duracao varchar(100) not null,
	media float,
	usuario_id uniqueidentifier not null,
	boletim_id int not null,
	primary key(id),
	foreign key(usuario_id) references Usuario(id),
	foreign key(boletim_id) references Boletim(id)
)