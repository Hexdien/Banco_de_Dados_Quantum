------------------------------------ Selects para verificar se todas as tabelas possuem 10 Rows
select * from Aluno									-- 10 rows
select * from aluno_turma							-- 10 rows
select * from turma									-- 10 rows
select * from docente_turma							-- 10 rows
select * from docente								-- 10 rows
select * from docente_disciplina					-- 10 rows
select * from disciplina							-- 10 rows
--------------------------------------------------------------------------------------------------


-------- Quais alunos estão Matriculados em quais turmas?
select * from aluno_matriculado

-- Ou

select a.nome,t.nome from aluno as a
join aluno_turma using(id_matricula)
join turma as t using(id_turma)


-------- Quais professores lecionam quais disciplinas e quais turmas receberão essas aulas
select * from docente_materia

-- Ou

select d.nome,ds.nome,t.nome from docente as d
join docente_disciplina using(id_docente)
join disciplina as ds using (id_disciplina)
join docente_turma using(id_docente)
join turma as t using(id_turma)

-- Resposta 			: 10 Rows
-- Primeiro Resultado 	: "Ana Silva"			"Matemática"		"Turma B"
-- Último resultado		: "Isabela Rodrigues"	"Artes"				"Turma I"

-------- Quais os turnos e turmas que acontece as aulas de Física
select * from turno_turma_fisica

-- Ou

select d.nome,t.nome,t.turno from turma as t
join docente_turma using(id_turma)
join docente using(id_docente)
join docente_disciplina using(id_docente)
join disciplina as d using(id_disciplina)
where d.nome = 'Física'

-- Resposta 			: 2 Rows
-- Primeiro Resultado 	: "Física"	"Turma C"	"Noite"
-- Último resultado		: "Física"	"Turma D"	"Manhã"


------- Quais são as disciplinas de físicas, quantas tem e quais suas cargas horárias 
select * from fisica


-- Ou

select d.nome,d.ementa,d.carga_horario from disciplina as d
where d.nome = 'Física'
order by 3 desc

-- Resposta 			: 3 Rows
-- Primeiro Resultado 	: 	"Física"	"Mecânica"			90
-- Último Resultado 	: 	"Física"	"Leis de Newton"	60


------ Quais as 3 primeiras carga horárias que mais se repetem nas disciplinas
select * from top_cargahoraria

-- Ou

select carga_horario,count(carga_horario) from disciplina
group by 1
order by 2 desc

-- Resposta 			: 5 Rows
-- Primeiro Resultado 	: 60		3
-- Último resultado		: 75		1


----- Quais os alunos que estão cursando Medicina, quais suas turmas e professores?
select * from alunos_medicina_docente

-- Ou

select a.nome as Aluno,t.nome as Turma ,d.nome as Docente from aluno as a
join aluno_turma using(id_matricula)
join turma as t using(id_turma)
join docente_turma using(id_turma)
join docente as d using(id_docente)
where a.curso = 'Medicina'

-- Resposta 			: 1 Row
-- Primeiro Resultado 	: "Carlos Pereira"	"Turma C"	"Carlos Santos"

