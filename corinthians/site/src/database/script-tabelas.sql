/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

CREATE DATABASE vamos_ver_o_timao;

USE vamos_ver_o_timao;

CREATE TABLE torcedor (
	idTorcedor INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE aviso (
	idAviso INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_torcedor INT,
	FOREIGN KEY (fk_torcedor) REFERENCES torcedor(idTorcedor)
);


create table usuarioSetor(
id int primary key auto_increment,
setor varchar(45),
fk_torcedor INT,
	FOREIGN KEY (fk_torcedor) REFERENCES torcedor(idTorcedor));

select*from torcedor;


