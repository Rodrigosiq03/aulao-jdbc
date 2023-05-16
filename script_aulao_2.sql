create database aulaoTeste;

use aulaoTeste;

create table userAulao (
	idUser char(10) primary key,
    nameUser varchar(255),
    ageUser int
);

create table course (
	idCourse int primary key auto_increment,
    nameCourse varchar(255)
);

create table userAulao_course(
	idCourse int, 
    idUser char(10),
    primary key (idCourse, idUser),
    foreign key (idCourse) references course(idCourse),
    foreign key (idUser) references userAulao(idUser)
);


insert into userAulao (idUser, nameUser, ageUser) values ('22.00580-0', "Rodrigo Siqueira", 20);
insert into userAulao (idUser, nameUser, ageUser) values ('22.01290-7', "Leonardo Cazotto Stuber", 19);
insert into userAulao (idUser, nameUser, ageUser) values ('22.01082-3', "Mateus Capaldo Martins", 20);
insert into userAulao (idUser, nameUser, ageUser) values ('22.01102-0', "Luigi Guimaraes Trevisan", 18);
insert into userAulao (idUser, nameUser, ageUser) values ('22.01211-7', "Carlos Henrique Lucena Barros", 19);

insert into course (nameCourse) values ("Ciência da Computação");
insert into course (nameCourse) values ("Sistemas de Informação");
insert into course (nameCourse) values ("Engenharia da Computação");
insert into course (nameCourse) values ("Administração");

insert into userAulao_course (idCourse, idUser) values (1, '22.00680-0');
insert into userAulao_course (idCourse, idUser) values (1, '22.01290-7');
insert into userAulao_course (idCourse, idUser) values (4, '22.01082-3');
insert into userAulao_course (idCourse, idUser) values (2, '22.01102-0');
insert into userAulao_course (idCourse, idUser) values (4, '22.01211-7');