#ARQUIVO COM SELECTS DO BD atv2_bd3_Jhonny

CREATE VIEW vw_aluno_turma AS (
	SELECT a.nome AS nome_aluno, a.telefone_aluno, a.telefone_responsavel, a.email, b.nome AS nome_turma, b.sigla
	FROM tbl_aluno AS a
	INNER JOIN tbl_turma AS b ON b.cod_turma = a.cod_turma
);

CREATE VIEW vw_disciplina_turma AS (
	SELECT b.nome, b.sigla AS sigla_turma, a.sigla AS sigla_disciplina
	FROM tbl_disciplina AS a
	INNER JOIN tbl_turma AS b ON b.cod_turma = a.cod_turma
);

CREATE VIEW vw_aluno_turma_disciplina AS (
	SELECT a.nome AS nome_aluno, a.telefone_aluno, a.telefone_responsavel, a.email, b.nome AS nome_turma, b.sigla AS sigla_turma, c.sigla AS sigla_disciplina
    FROM tbl_aluno AS a
    INNER JOIN tbl_turma AS b ON b.cod_turma = a.cod_turma
    INNER JOIN tbl_disciplina AS c ON c.cod_turma = b.cod_turma
);

SELECT * FROM vw_aluno_turma;
SELECT * FROM vw_disciplina_turma;
SELECT * FROM vw_aluno_turma_disciplina;