
-- Iremos inserir os professores e seus dados pessoais

INSERT INTO docente (nome, cpf, telefone) VALUES
('Ana Silva', 12345678901, 987654321),
('Carlos Santos', 98765432102, 123456789),
('Mariana Oliveira', 54321098703, 111222333),
('Pedro Pereira', 11122233304, 543210987),
('Isabela Rodrigues', 44455566605, 555666777),
('Ricardo Carvalho', 55566677706, 444555666),
('Lúcia Souza', 77788899907, 999000111),
('Fernando Costa', 22233344408, 888999000),
('Marta Lima', 88899900009, 777888999),
('José Sousa', 99900011110, 777888999);


-- Iremos criar quais os curos que nossa faculdade oferece
INSERT INTO disciplina (nome, ementa, carga_horario) VALUES
('Matemática', 'Tópicos avançados de matemática', 60),
('História', 'História contemporânea', 45),
('Física', 'Física quântica', 75),
('Física', 'Leis de Newton', 60),
('Física', 'Mecânica', 90),
('Biologia', 'Biologia marinha', 30),
('Inglês', 'Conversação avançada', 90),
('Química', 'Química orgânica', 60),
('Geografia', 'Geopolítica', 45),
('Economia', 'Macroeconomia', 60),
('Filosofia', 'Ética e moral', 45),
('Artes', 'Pintura contemporânea', 30);


-- Definindo as turmas, suas salas e turnos
INSERT INTO turma (turno, sala, nome) VALUES
('Manhã', 'Sala 101', 'Turma A'),
('Tarde', 'Sala 102', 'Turma B'),
('Noite', 'Sala 103', 'Turma C'),
('Manhã', 'Sala 104', 'Turma D'),
('Tarde', 'Sala 105', 'Turma E'),
('Noite', 'Sala 106', 'Turma F'),
('Manhã', 'Sala 107', 'Turma G'),
('Tarde', 'Sala 108', 'Turma H'),
('Noite', 'Sala 109', 'Turma I'),
('Manhã', 'Sala 110', 'Turma J');


-- Inserindo os Alunos matriculados 
INSERT INTO aluno (id_matricula, telefone, nome, cpf, curso) VALUES
('1001', 123456789, 'João Silva', '12345678901', 'Engenharia Civil'),
('1002', 987654321, 'Maria Santos', '98765432102', 'Administração'),
('1003', 543210987, 'Carlos Pereira', '54321098703', 'Medicina'),
('1004', 111222333, 'Ana Oliveira', '11122233304', 'Psicologia'),
('1005', 444555666, 'Pedro Carvalho', '44455566605', 'Direito'),
('1006', 777888999, 'Lúcia Rodrigues', '77788899907', 'Ciência da Computação'),
('1007', 222333444, 'Fernando Sousa', '22233344408', 'Biologia'),
('1008', 888999000, 'Mariana Costa', '88899900009', 'Economia'),
('1009', 555666777, 'Ricardo Santos', '55566677706', 'Artes Plásticas'),
('1010', 999000111, 'Isabela Lima', '99900011110', 'Engenharia Elétrica');


-- Definindo quais professores irão lecionar quais disciplinas 
INSERT INTO docente_disciplina (id_docente, id_disciplina) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10);

-- Definindo quais turmas o professor dará as aulas
INSERT INTO docente_turma (id_docente, id_turma) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10);


-- Definindo as turmas que os alunos matriculados estarão
INSERT INTO aluno_turma (id_matricula, id_turma) VALUES
('1001', 1),
('1002', 2),
('1003', 3),
('1004', 4),
('1005', 5),
('1006', 6),
('1007', 7),
('1008', 8),
('1009', 9),
('1010', 10);



