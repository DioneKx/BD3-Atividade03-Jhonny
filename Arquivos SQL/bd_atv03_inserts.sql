#ARQUIVO PARA INSERTS NAS TABELAS DO atv2_bd3_Jhonny

INSERT INTO tbl_turma (cod_turma, sigla, nome) VALUES (1, "Turma A", "Turma A - 1° DS"), (2, "Turma B", "Turma B - 2° DS");

INSERT INTO tbl_disciplina (cod_disciplina, cod_turma, sigla) VALUES (1, 2, "PW"), (2, 1, "BD"), (3, 1, "PY"), (4, 2, "SSI"), (5, 2, "IP"), (6, 1, "SE"), (7, 1, "IOT"), (8, 2, "JAVA");

INSERT INTO tbl_aluno (cod_aluno, cod_turma, nome, cpf, rg, telefone_aluno, telefone_responsavel, email, data_nascimento)
VALUES (1, 1, "Josivaldo Nogueira", "00000000000", "00001112X", "11958741551", "11988741334", "josivaldo08@gmail.com", 952905),
(2, 2, "Max Stell", "10000000111", "000011589", "11958741231", "11988741444", "josivaldo01@gmail.com", 152903997),
(3, 1, "Linux Oliveira", "20000000222", "110011892", "11958741231", "11988741596", "josivaldo02@gmail.com", 922903997),
(4, 2, "Kaindo Kaiu", "30000000333", "23001112B", "11958741231", "11985541357", "josivaldo10@gmail.com", 852903997),
(5, 2, "Lonevaldo Costa", "40000000555", "78001112T", "11958741231", "11944741331", "josivaldo9@gmail.com", 482903997),
(6, 1, "Crhis Odineiro", "50000000999", "030012229", "11958741231", "11989971784", "josivaldo55@gmail.com", 582903997),
(7, 2, "Valdecido Valneia", "60000000777", "110011897", "11958741231", "11984741556", "alerquino@gmail.com", 332903997),
(8, 1, "Henri Henri", "70000000444", "02551199B", "11958741231", "11988743966", "oliveiro@gmail.com", 882903887),
(9, 1, "Gabriell Elisangelo", "80000000666", "05501982R", "11958741231", "11944741888", "oliveira01@gmail.com", 777903557),
(10, 2, "Juão Geovanni", "90000000101", "00501144X", "11958741231", "11966758333", "linux@gmail.com", 662903991);

SELECT * FROM tbl_aluno;