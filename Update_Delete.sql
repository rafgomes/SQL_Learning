/*-------------------------UPDATE-------------------------*/
SELECT * FROM Aula

UPDATE Aula SET nome = 'teste' --Altera toda a coluna NOME

UPDATE Aula SET nome = 'teste2' WHERE id = 3 --Altera apenas um campo

/*-------------------------DELETE-------------------------*/
SELECT * FROM Aula

DELETE FROM Aula Where nome = 'teste2' --Apaga apenas a linha correspondete ao nome indicado

DELETE FROM Aula --Apaga todas as linhas da tabela