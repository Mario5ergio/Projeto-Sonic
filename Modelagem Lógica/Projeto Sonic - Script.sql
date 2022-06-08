CREATE DATABASE ProjetoSonic;
USE ProjetoSonic;

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

SELECT Personagem.nome AS Personagem, COUNT(idUsuario) AS voto from Usuario JOIN Personagem on Usuario.fkPersonagem = Personagem.idPersonagem group by fkPersonagem;





