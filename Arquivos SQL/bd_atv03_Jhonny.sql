CREATE DATABASE atv3_bd3_Jhonny;

USE atv3_bd3_Jhonny;

# DROP DATABASE atv3_bd3_Jhonny;

CREATE TABLE tbl_turma (
	cod_turma INT UNSIGNED NOT NULL,
    sigla VARCHAR(10),
    nome VARCHAR(100)
);

CREATE TABLE tbl_disciplina (
	cod_disciplina INT UNSIGNED NOT NULL,
    cod_turma INT UNSIGNED NOT NULL,
    sigla VARCHAR(50)
);

CREATE TABLE tbl_aluno (
	cod_aluno INT UNSIGNED NOT NULL,
    cod_turma INT UNSIGNED NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    rg VARCHAR(9) NOT NULL,
    telefone_aluno VARCHAR(11),
    telefone_responsavel VARCHAR(11),
    email VARCHAR(100),
    data_nascimento TIMESTAMP(6) NOT NULL
);

CREATE TABLE tbl_aluno_bkp (
	cod_aluno INT UNSIGNED NOT NULL,
    cod_turma INT UNSIGNED NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    rg VARCHAR(9) NOT NULL,
    telefone_aluno VARCHAR(11),
    telefone_responsavel VARCHAR(11),
    email VARCHAR(100),
    data_nascimento TIMESTAMP(6) NOT NULL,
    date_delete DATETIME
);

CREATE TABLE tbl_frequencia (
	cod_aluno INT UNSIGNED NOT NULL,
    cod_disciplina INT UNSIGNED NOT NULL,
    data_chamada TIMESTAMP(6),
    frequencia DECIMAL(2,2)
);