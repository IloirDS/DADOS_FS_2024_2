#Criando DATABASE do Desafio
CREATE DATABASE desafioFS;

USE desafioFS;

#Criando tabelas e inserindo dados nela.
CREATE TABLE aluno(  matricula varchar(15) primary key,  nome varchar(60),  cpf varchar(30),  sexo varchar(30), turma varchar(30),FOREIGN KEY ( turma ) REFERENCES sala ( idSala )   );

insert aluno(matricula,nome,cpf,sexo) values('001','Roberto','111.111.111-11','M','1');

insert aluno(matricula,nome,cpf,sexo) values('002','Roberta','222.222.222-22','M','2');

insert aluno(matricula,nome,cpf,sexo) values('003','Vanessa','333.333.333-33','F','3');

insert aluno(matricula,nome,cpf,sexo) values('004','Cleber','444.444.444-44','M','4');

insert aluno(matricula,nome,cpf,sexo) values('005','Natan','555.555.555-55','M','5');


CREATE TABLE professor(  registroProfessor varchar(15) primary key,  nome varchar(60),  cpf varchar(30),  sexo varchar(30), leciona int FOREIGN KEY ( leciona ) REFERENCES materia ( idMateria )  );

insert professor(registroProfessor,nome,cpf,sexo) values('01','Mauricio','666.666.666-66','M',1);

insert professor(registroProfessor,nome,cpf,sexo) values('02','Marcos','777.777.777-77','M',2);

insert professor(registroProfessor,nome,cpf,sexo) values('03','Ana Clara','888.888.888-88','F',3);

insert professor(registroProfessor,nome,cpf,sexo) values('04','Maria Clara','999.999.999-99','F',4);

insert professor(registroProfessor,nome,cpf,sexo) values('05','Rubens','000.000.000-00','M',5);


CREATE TABLE materia(  idMateria int primary key,  area varchar(60),  nome varchar(30)  );

insert materia(idMateria,area,nome) values(1,'Humanas','Historia');

insert materia(idMateria,area,nome) values(2,'Humanas','Portugues');

insert materia(idMateria,area,nome) values(3,'Humanas','Geografia');

insert materia(idMateria,area,nome) values(4,'Exatas','Matematica');

insert materia(idMateria,area,nome) values(5,'Exatas','Fisica');


CREATE TABLE sala(  idSala varchar(15) primary key,  bloco varchar(60),  numero int  );

insert sala(idSala,Bloco,numero) values('1','A',10);

insert sala(idSala,Bloco,numero) values('2','B',5);

insert sala(idSala,Bloco,numero) values('3','B',20);

insert sala(idSala,Bloco,numero) values('4','C',2);

insert sala(idSala,Bloco,numero) values('5','C',8);

#Selecionando todas as linhas e colunas da tabela Aluno
SELECT * FROM aluno LIMIT 0, 1000;

#Contando pelo número de matricula quantos alunos tem matriculado
SELECT COUNT(matricula) as alunosMatriculados FROM aluno LIMIT 0, 1000;

#Atualizando o erro da aluna com a matricula 002
UPDATE aluno set sexo = 'F' where matricula = '002';
