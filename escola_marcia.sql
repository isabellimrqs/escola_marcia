CREATE DATABASE ESCOLA_MARCIA;

-- Criação da tabela de Professores
CREATE TABLE Professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Criação da tabela de Turmas
CREATE TABLE Turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

-- Criação da tabela de Atividades
CREATE TABLE atividade (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

-- Inserindo dados nas tabelas
INSERT INTO escola_marcia.atividade (id_atividade, numero, descricao, id_turma)
VALUES (1, '1', 'criando app em react native', 1 ),
(2, '2', 'aprendendo a cortar ferro', 2 );

 -- 1) Criar um novo professor
INSERT INTO escola_marcia.professor (id_professor, nome, email, senha)
VALUES (3, 'Vanessa', 'vanessa@bosch.com', 'uiuxismypassion' );

 -- 2) Ler informações de uma turma
 SELECT * FROM turma WHERE id_turma = '1';
 
-- 3) Atualizar a descrição de uma atividade
UPDATE Atividade
SET descricao = 'app de react native quase pronto'
WHERE id_atividade = '1';
  
SELECT * FROM Atividade;
  
  -- 4) Deletar um professor
DELETE FROM professor WHERE id_professor = '3';
  
SELECT * FROM professor;
  
-- 5) Associar uma atividade a uma turma
INSERT INTO atividade (id_atividade,numero, descricao, id_turma)
VALUES (3, '2', 'solid works esfera', 2);

SELECT * FROM atividade;

-- 6) Listar todas as atividades de uma turma 
SELECT * FROM atividade WHERE id_turma = '2';

-- 7) Alterar o professor responsável pela turma
UPDATE turma
SET id_professor = '3'
WHERE id_professor = '2';

SELECT * FROM turma;

-- 8) Liste o nome de cada turma junto com o nome do professor responsável por ela. Inclua o número de indentificação da turma e o e-mail do professor.
SELECT turma.nome, professor.nome, turma.id_turma, professor.email
FROM turma
INNER JOIN professor on professor.id_professor = turma.id_professor

-- 9) Liste o nome do professor e as atividades passadas por ele



  

 
