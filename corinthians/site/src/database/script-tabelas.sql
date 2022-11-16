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
	idSelects INT PRIMARY KEY AUTO_INCREMENT,
	fk_torcedor INT,
	FOREIGN KEY (fk_torcedor) REFERENCES torcedor(idTorcedor),
	torce_corinthians CHAR(3),
	emocao INT,
	criancas_mulheres CHAR(3),
	dinheiro INT,
	visao_campo varchar(45),
    CONSTRAINT chkVisao_campo CHECK(visao_campo IN ('Horizontal', 'Vertical'))
);

select*from torcedor;
