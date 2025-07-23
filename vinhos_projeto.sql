USE vinhos_projeto;

-- Criação de tabelas e inserção de dados
CREATE TABLE Regiao (
	codRegiao BIGINT PRIMARY KEY,
	nomeRegiao VARCHAR(100) NOT NULL,
	descricaoRegiao TEXT
);

INSERT INTO Regiao VALUES
	(1, 'Vale dos Vinhedos', 'Principal região vinícola do Brasil'),
	(2, 'Serra Gaúcha', 'Famosa por vinhos tintos encorpados'),
	(3, 'Campanha Gaúcha', 'Região com forte tradição vitivinícola'),
	(4, 'Planalto Catarinense', 'Clima favorável à produção de vinhos finos'),
	(5, 'Vale de São Francisco', 'Vinhedos irrigados no Nordeste');

CREATE TABLE Vinicolas (
	codVinicola BIGINT PRIMARY KEY,
	nomeVinicola VARCHAR(100) NOT NULL,
	descricaoVinicola TEXT,
	foneVinicola VARCHAR(20) NOT NULL,
	emailVinicola VARCHAR(50) NOT NULL,
	codRegiao BIGINT NOT NULL,
	FOREIGN KEY (codRegiao) REFERENCES Regiao(codRegiao)
);

INSERT INTO Vinicolas VALUES
	(1, 'Vinícola Aurora', 'Uma das maiores do Brasil', '(54) 3452-9888', 'aurora@gmail.com', 1),
	(2, 'Vinícola Miolo', 'Exportadora de vinhos nacionais', '(54) 3219-9456', 'miolo@gmail.com', 2),
	(3, 'Casa Valduga', 'Vinícola tradicional familiar', '(54) 3343-5334', 'valduga@gmail.com', 3),
	(4, 'Vinícola Pericó', 'Especializada em espumantes', '(49) 3145-7995', 'perico@gmail.com', 4),
	(5, 'Rio Sol', 'Produção de vinhos no semiárido', '(87) 3778-0990', 'riosol@gmail.com', 5);

CREATE TABLE Vinhos (
	codVinho BIGINT PRIMARY KEY,
	nomeVinho VARCHAR(50) NOT NULL,
	tipoVinho VARCHAR(30) NOT NULL,
	anoVinho INT NOT NULL,
	descricaoVinho TEXT,
	codVinicola BIGINT NOT NULL,
	FOREIGN KEY (codVinicola) REFERENCES Vinicolas(codVinicola)
);

INSERT INTO Vinhos VALUES
	(1, 'Aurora Reserva Tinto', 'Tinto', 2018, 'Vinho encorpado com notas de frutas vermelhas', 1),
	(2, 'Miolo Lote 43', 'Tinto', 2020, 'Um dos mais premiados do Brasil', 2),
	(3, 'Casa Valduga Chardonnay', 'Branco', 2023, 'Vinho branco seco fermentado em barrica', 3),
	(4, 'Pericó Espumante Brut', 'Espumante', 2015, 'Fresco e elegante', 4),
	(5, 'Rio Sol Syrah', 'Tinto', 2017, 'Vinho frutado produzido no Nordeste', 5);

-- Consulta das tabelas 
SELECT
	vinhos.nomeVinho,
	vinhos.tipoVinho,
	vinhos.anoVinho,
	vinhos.descricaoVinho,
	vinicolas.nomeVinicola,
	regiao.nomeRegiao
FROM
	vinhos
JOIN
	vinicolas ON vinhos.codVinicola = vinicolas.codVinicola
JOIN
	regiao ON vinicolas.codRegiao = regiao.codRegiao;
    
-- Criação do usuário
CREATE USER 'Somellier'@'localhost' IDENTIFIED BY 'teste123';

GRANT SELECT ON vinhos_projeto.Vinhos TO 'Somellier'@'localhost';

CREATE VIEW vinicolas_view AS SELECT codVinicola, nomeVinicola FROM Vinicolas;

GRANT SELECT ON vinhos_projeto.vinicolas_view TO 'Somellier'@'localhost';

ALTER USER 'Somellier'@'localhost' WITH MAX_QUERIES_PER_HOUR 40;