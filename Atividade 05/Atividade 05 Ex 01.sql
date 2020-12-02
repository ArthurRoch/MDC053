create table curso(
	id_curso serial not null,
	nome_curso varchar(100) not null, 
	carga_horaria smallint, 
	primary key(id_curso)
);

create table professor(
	id_professor serial not null, 
	nome_professor varchar(100) not null, 
	titulacao_professor char(3), 
	primary key(id_professor)
);

create table aluno(
	id_aluno serial not null,
	nome_aluno varchar(100) not null,
	email_aluno varchar(100), 
	fone_contato char(14), 
	primary key(id_aluno)
);

create table turma(
	id_turma serial not null,
	id_curso int not null references curso(id_curso),
	id_professor int not null references professor(id_professor),
	id_aluno int not null references aluno(id_aluno),
	data_matricula date not null,
	primary key(id_turma)
);