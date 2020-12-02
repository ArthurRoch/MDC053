create table departamento(
	codigo int not null,
	nome varchar(100) not null,
	primary key(codigo)
);

create table funcionario(
	matricula int not null,
	nome varchar(100) not null,
	salario decimal(10) not null,
	gerente int references funcionario(matricula),
	codigo int not null references departamento(codigo),
	primary key(matricula)
);