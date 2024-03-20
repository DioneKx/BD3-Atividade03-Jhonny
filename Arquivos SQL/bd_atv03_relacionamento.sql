#ARQUIVO PARA RELACIONAMENTOS ENTRA AS TABELAS DO BANCO atv2_bd3_Jhonny

ALTER TABLE tbl_turma ADD CONSTRAINT tbl_turma_id_pk
PRIMARY KEY (cod_turma);

ALTER TABLE tbl_turma ADD CONSTRAINT tbl_turma_un
UNIQUE (sigla);

ALTER TABLE tbl_disciplina ADD CONSTRAINT tbl_disciplina_id_pk
PRIMARY KEY (cod_disciplina);

ALTER TABLE tbl_disciplina ADD CONSTRAINT tbl_disciplina_cod_turma_fk
FOREIGN KEY (cod_turma) REFERENCES tbl_turma (cod_turma);

ALTER TABLE tbl_aluno ADD CONSTRAINT tbl_aluno_id_pk
PRIMARY KEY (cod_aluno);

ALTER TABLE tbl_aluno_bkp ADD CONSTRAINT tbl_aluno_bkp_id_pk
PRIMARY KEY (cod_aluno);

ALTER TABLE tbl_aluno ADD CONSTRAINT tbl_aluno_un
UNIQUE (cpf);

ALTER TABLE tbl_aluno ADD CONSTRAINT tbl_aluno_cod_turma_fk
FOREIGN KEY (cod_turma) REFERENCES tbl_turma (cod_turma);

ALTER TABLE tbl_frequencia ADD CONSTRAINT tbl_frequencia_id_pk
PRIMARY KEY (cod_aluno, cod_disciplina);

ALTER TABLE tbl_frequencia ADD CONSTRAINT tbl_frequencia_cod_aluno_fk
FOREIGN KEY (cod_aluno) REFERENCES tbl_aluno (cod_aluno);

ALTER TABLE tbl_frequencia ADD CONSTRAINT tbl_frequencia_cod_disciplina_fk
FOREIGN KEY (cod_disciplina) REFERENCES tbl_disciplina (cod_disciplina);