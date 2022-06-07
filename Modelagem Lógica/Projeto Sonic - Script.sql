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

CREATE TABLE Score (
idScore INT PRIMARY KEY AUTO_INCREMENT, 
sorte VARCHAR(45)
);

CREATE TABLE Usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(60),
sobrenome VARCHAR(60),
email VARCHAR(60),
senha VARCHAR(60),
fkPersonagem INT,
fkScore INT,
FOREIGN KEY (fkPersonagem) REFERENCES Personagem(idPersonagem),
FOREIGN KEY (fkScore) REFERENCES Score(idScore)
);

INSERT INTO Personagem VALUES 
(null, 'Sonic','Hedgehog', 2, 3, 5, 15, null),
(null, 'Miles Tails','Prower', 2, 5, 3, 8, null),
(null, 'Knuckles','Echidna', 5, 2, 3, 16, null);

INSERT INTO SCORE (sorte) VALUES
('sorte'),
('neutro'),
('azar');

INSERT INTO Usuario VALUES
(null, 'admin','admin','admin@email.com','admin123',1,1);

select * from score;

SELECT SUM(score.sorte) AS Sorte, count(idUsuario) AS 'Testes' FROM score JOIN Usuario ON fkScore = idScore group by fkScore;




