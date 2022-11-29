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
(null, 'Alex', 'a@', 123),
(null, 'bruno', 'b@', 123),
(null, 'carolina', 'c@', 123),
(null, 'alexsandro', 'a@', 123),
(null, 'cristhian', 'c@', 123),
(null, 'emillie', 'e@', 123),
(null, 'vinicius', 'v@', 123),
(null, 'erick', 'e@', 123),
(null, 'luan', 'l@', 123);

insert into aviso VALUES
(null, 'Minha experiência no setor norte do estádio', 'Foi no último corinthians x são paulo neste domingo, eu segui as intruções da plataforma e fui para o setor norte. Estar com as organizadas foi incrível, com certeza voltarei ao estádio!', '1');

insert into usuarioSetor values
(null , 'norte' , '1'),
(null , 'sul' , '2'),
(null , 'leste' , '3'),
(null , 'oeste' , '4'),
(null , 'oesteB' , '5'),
(null , 'visitante' , '6'),
(null , 'norte' , '7'),
(null , 'leste' , '8'),
(null , 'norte' , '9');

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