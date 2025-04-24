CREATE DATABASE PWII_floricultura;
USE PWII_floricultura;

CREATE TABLE usuario(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    dataNascimento DATE NOT NULL,
    CPF INT,
    CNPJ INT,
    razaoSocial VARCHAR (255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha INT NOT NULL
);

CREATE TABLE login(
	id_login INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    hash_senha INT NOT NULL,
    CONSTRAINT fk_login_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);


INSERT INTO
	usuario(nome, dataNascimento, CPF, CPNJ, razaoSocial, email, senha)
VALUES
	('Talita', '30.06.2008', 333.333-22, 121.212-2, 'razão social', 'taalitat.gmail.com', 122211);

select * from usuario;