#ARQUIVO UTILIZADO PARA ARMAZENAR TRIGGERS DO BANCO atv2_bd3_Jhonny

USE atv3_bd3_Jhonny;

DELIMITER $

CREATE TRIGGER trg_delete_aluno BEFORE DELETE ON tbl_aluno
FOR EACH ROW

BEGIN

INSERT INTO tbl_aluno_bkp
SET
cod_aluno = OLD.cod_aluno,
cod_turma = OLD.cod_turma,
nome = OLD.nome,
cpf = OLD.cpf,
rg = OLD.rg,
telefone_aluno = OLD.telefone_aluno,
telefone_responsavel = OLD.telefone_responsavel,
email = OLD.email,
data_nascimento = OLD.data_nascimento,
date_delete = now();

END
$

# DELETE FROM tbl_aluno WHERE cod_aluno = 3;
# SELECT * FROM tbl_aluno_bkp;