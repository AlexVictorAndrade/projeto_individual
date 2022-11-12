-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

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

create table selects (
/* em nossa regra de negócio, um aquario tem apenas um sensor */
	idSelects INT PRIMARY KEY AUTO_INCREMENT,
	fk_torcedor INT,
	FOREIGN KEY (fk_torcedor) REFERENCES torcedor(idTorcedor),
	torce_corinthians CHAR(3),
	emocao INT,
	criancas_mulheres CHAR(3),
	dinheiro INT,
	visao_campo CONSTRAINT chkVisao_campo CHECK(visao_campo IN ('Horizontal', 'Vertical'))
--fazer tudo como chk constraint
);

/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */

create table medida (
	id INT PRIMARY KEY AUTO_INCREMENT,
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT,
	FOREIGN KEY (fk_aquario) REFERENCES aquario(id)
);

