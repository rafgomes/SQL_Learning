--Cria tabela Aula
CREATE TABLE Aula(
	id int primary key,
	nome varchar(200)
);

--Insere os valores na tabela Aula
INSERT INTO Aula(id, nome)
	VALUES(1, 'Aula 1')

--Insere varias linhas ao mesmo tempo
INSERT INTO Aula(id, nome)
	VALUES(2, 'Aula 2'),
		  (3, 'Aula 3'),
		  (4, 'Aula 4'),
	      (5, 'Aula 5');

SELECT * FROM Aula

--Insere todos os dados da tabela Aula na NovaTabela
SELECT * INTO TabelaNova FROM AULA

SELECT * FROM TabelaNova