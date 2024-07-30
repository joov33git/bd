create table aluno(
sexo varchar(50),
nome varchar(50),
matricula int primary key
);

create table disciplina(
credito int,
nome varchar(50),
codigo int primary key
);

create table cursa(
nota decimal,
falta int,
semestreAno varchar(50),
codigo int,
matricula int,
primary key(codigo, matricula),
foreign key(codigo) references disciplina(codigo),
foreign key(matricula) references aluno(matricula)
);

insert into
aluno(matricula,nome,sexo)
values 
('1','joão da silva','mascilna'),
('2','maria santos','feminino'),
('3','carlos lima','masculino'),
('4','ana oliveira','feminino'),
('5','pedro souza','masculino'),
('6','sofia alves','feminino'),
('7','rafael pereira','masculino'),
('8','luana fernades','feminino'),
('9','licas rodrigues','masculino'),
('10','beatriz costa','feminino');
 
insert into
disciplina(codigo,nome,credito)
values
('1','estrutura de dados','4'),
('2','projeto integrador','6'),
('3','orientaçao de objetos','4'),
('4','requisitos de software','2'),
('5','sistema de banco de dados','4');

insert into
cursa(mattricula,codigo,semestreAno,nota,falta)
values
(1,1,1/2021,8.5,0),
(2,1,1/2021,4.0,3),
(3,2,1/2021,9.0,1),
(4,2,1/2021,7.8,2),
(5,3,1/2021,3.5,4),
(6,3,1/2021,8.2,1),
(7,1,1/2022,7.0,0),
(8,2,1/2022,4.2,2),
(9,4,1/2022,9.5,0),
(10,5,1/2022,8.8,1);