--Criar novas tabelas no banco de dados YOUTUBE

--Criar tabela CANAL:
CREATE TABLE Canal(
	CanalID int Primary Key,
	Nome VARCHAR(150) NOT NULL,
	ContagemInscritos INT DEFAULT 0,
	DataCriacao DATETIME NOT NULL
);

--Criar tabela VIDEO:
CREATE TABLE Video (
	Videold INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	Vizualizacoes INT DEFAULT 0,
	Likes INT DEFAULT 0,
	Dislikes INT DEFAULT 0,
	Duracao INT NOT NULL,
	Canalid INT FOREIGN KEY REFERENCES Canal(CanalID)
);