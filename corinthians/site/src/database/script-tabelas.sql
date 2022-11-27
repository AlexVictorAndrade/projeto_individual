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

CREATE TABLE endereco (
    idEndereco INT PRIMARY KEY AUTO_INCREMENT,
    logradouro varchar(50),
    numero INT,
    bairro varchar(20),
    cidade varchar(20),
    fk_torcedor INT,
    FOREIGN KEY (fk_torcedor) REFERENCES torcedor(idTorcedor)
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

select*from usuarioSetor;
select*from aviso;
select*from torcedor;


select count(fk_torcedor) as quantidade, setor from usuarioSetor  group by setor;

select count(fk_torcedor) as quantidade, setor from usuarioSetor where setor = 'visitante';

insert into torcedor values
(null, 'a', 'a@', 123),
(null, 'b', 'a@', 123),
(null, 'c', 'a@', 123),
(null, 'a', 'a@', 123),
(null, 'a', 'a@', 123),
(null, 'a', 'a@', 123),
(null, 'a', 'a@', 123),
(null, 'a', 'a@', 123),
(null, 'a', 'a@', 123);


insert into usuarioSetor values
(null , 'norte' , '3'),
(null , 'sul' , '4'),
(null , 'leste' , '5'),
(null , 'oeste' , '6'),
(null , 'oesteB' , '7'),
(null , 'visitante' , '8'),
(null , 'norte' , '9'),
(null , 'leste' , '10'),
(null , 'norte' , '11');

SELECT 
            a.idAviso AS idAviso,
            a.titulo,
            a.descricao,
            a.fk_torcedor,
            u.idTorcedor AS id_torcedor,
            u.nome,
            u.email,
            u.senha
        FROM aviso a
            INNER JOIN torcedor u
                ON a.fk_torcedor = u.idTorcedor;