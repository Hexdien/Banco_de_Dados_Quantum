

------------------- Arquivos para Esquema do banco


--- Excluindo as tabelas caso ja existam
drop table if exists docente,disciplina,aluno,turma,docente_turma,aluno_turma,docente_disciplina cascade; 

--- Criando Tabela para os Professores onde estará contido dados pessoais 
create table docente(
	id_docente serial primary key,
	nome varchar(150) not null,
	cpf bigint not null,
	telefone int not null
);

/*
 Tabela para as matérias onde estará
 contidos dados sobre as disciplinas,
 quantas horas cada disciplina possuirá
 e uma breve descrição */
 
create table disciplina(
	id_disciplina serial primary key,
	nome varchar(50) not null,
	ementa varchar(255) not null,
	carga_horario int not null
);



/*
	Tabela para as turmas,
 	Nesta tabela teremos:
	A sala que a turma estará contida
	o Nome da turma
	e o turno que haverá as aulas.
*/
create table turma(
	id_turma serial primary key,
	turno varchar(15) not null,
	sala varchar(10) not null,
	nome varchar(15) not null
);

/*
	Tabela de matrícula dos alunos
 	Teremos nesta tabela, dados pessoais
	e qual curso o aluno estará cursando. 
 */
create table aluno(
	id_matricula varchar(50) primary key,
	telefone int not null,
	nome varchar(155) not null,
	cpf bigint not null,
	curso varchar(55) not null
);


--- Tabela que fará a relação entre o Docente e quais as Disciplinas que o mesmo leciona 
CREATE TABLE docente_disciplina (
  id_docente_disciplina serial PRIMARY KEY,
  id_docente INT REFERENCES docente(id_docente),
  id_disciplina INT REFERENCES disciplina(id_disciplina)
);


--- Tabela que fará a relação entre o Docente e quais Turmas o mesmo leciona
CREATE TABLE docente_turma (
  id_docente_turma serial PRIMARY KEY,
  id_docente INT REFERENCES docente(id_docente),
  id_turma INT REFERENCES turma(id_turma)
);


--- Tabela para a relação dos alunos e quais são suas turmas
CREATE TABLE aluno_turma (
  id_aluno_turma serial PRIMARY KEY,
  id_matricula VARCHAR(50) REFERENCES aluno(id_matricula),
  id_turma INT REFERENCES turma(id_turma)
);


-- Criando views para facilitar analise de banco de dados

-- Esta view exibe Quais alunos estão Matriculados em quais turmas
create or replace view aluno_matriculado
 as 
 select a.nome as Aluno,t.nome as Turma from aluno as a
	join aluno_turma using(id_matricula)
	join turma as t using(id_turma);
	
-- Esta view exibe quais professores lecionam quais disciplinas e quais turmas receberão essas aulas
create or replace view docente_materia
as
select d.nome as "Docente",ds.nome as "Disciplina",t.nome as "Truma" from docente as d
join docente_disciplina using(id_docente)
join disciplina as ds using (id_disciplina)
join docente_turma using(id_docente)
join turma as t using(id_turma);


-- Esta view exibe quais os turnos e turmas que acontece as aulas de Física
create or replace view turno_turma_fisica
as
select d.nome as "Disciplina",t.nome as "Turma",t.turno from turma as t
join docente_turma using(id_turma)
join docente using(id_docente)
join docente_disciplina using(id_docente)
join disciplina as d using(id_disciplina)
where d.nome = 'Física';

-- Esta view exibe quais são as disciplinas de físicas, quantas tem e quais suas cargas horárias 
create or replace view fisica
as
select d.nome as "Disciplina",d.ementa,d.carga_horario from disciplina as d
where d.nome = 'Física'
order by 3 desc;

-- Esta view exibe quais as 3 primeiras carga horárias que mais se repetem nas disciplinas
create or replace view top_cargaHoraria
as
select carga_horario,count(carga_horario) as "Quantidade" from disciplina
group by 1
order by 2 desc;

-- Esta view exibe quais os alunos que estão cursando Medicina, quais suas turmas e professores
create or replace view alunos_medicina_docente
as
select a.nome as Aluno,t.nome as Turma ,d.nome as Docente from aluno as a
join aluno_turma using(id_matricula)
join turma as t using(id_turma)
join docente_turma using(id_turma)
join docente as d using(id_docente)
where a.curso = 'Medicina';


