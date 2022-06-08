-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */

CREATE TABLE Personagem (
idPersonagem INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(60),
sobrenome VARCHAR(60),
força INT,
inteligência INT,
velocidade INT,
idade INT,
fkSuper INT,
FOREIGN KEY (fkSuper) REFERENCES Personagem(idPersonagem) 
);

CREATE TABLE Usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(60),
sobrenome VARCHAR(60),
email VARCHAR(60),
senha VARCHAR(60),
fkPersonagem INT,
FOREIGN KEY (fkPersonagem) REFERENCES Personagem(idPersonagem)
);

INSERT INTO Personagem VALUES 
(null, 'Sonic','Hedgehog', 2, 3, 5, 15, null),
(null, 'Miles Tails','Prower', 2, 5, 3, 8, null),
(null, 'Knuckles','Echidna', 5, 2, 3, 16, null);


/* para sql server - remoto - produção */

CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
); 

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	temperatura DECIMAL,
	umidade DECIMAL,
	momento DATETIME,
	fk_aquario INT
);


