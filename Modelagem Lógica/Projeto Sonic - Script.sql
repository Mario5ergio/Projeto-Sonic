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

CREATE TABLE Usuário (
idUsuário INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(60),
sobrenome VARCHAR(60),
email VARCHAR(60),
senha VARCHAR(60),
idade INT,
fkPersonagem INT,
FOREIGN KEY (fkPersonagem) REFERENCES Personagem(idPersonagem)
);

CREATE TABLE Score (
idScore INT AUTO_INCREMENT,
fkUsuário INT,
FOREIGN KEY (fkUsuário) REFERENCES Usuário(idUsuário), 
PRIMARY KEY (idScore, fkUsuário),
qtdEsmeralda INT,
dtInicio DATETIME,
dtFinal DATETIME
);