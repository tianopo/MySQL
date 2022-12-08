create database hospital;
use hospital;
create table medicos(
	id int not null auto_increment primary key,
	medico varchar(50) not null,
	especialidade varchar(50) not null
);
insert into medicos values
	(1,'Alex','pediatria'),
	(2,'Thais','clinica geral'),
	(3,'Morty','dermatologia'),
	(4,'Larissa','gastroenterologia'),
	(5,'Rita','geriatria'),
	(6,'Denis','onocologia'),
	(7,'Paulo','oftalmologia'),
	(8,'Luna','pediatra'),
	(9,'Coldy','dermatologia'),
	(10,'Leny','clinica geral');

create table pacientes(
	id int not null primary key auto_increment,
	nome varchar(50),
	cpf varchar(11));

insert into pacientes values
	(1,'Nicolas','26842467543'),
	(2,'Bruno','39059103658'),
	(3,'Aladin','26496958377'),
	(4,'Nelson','37489302083'),
	(5,'Borges','27365264829'),
	(6,'Antonio','37377894090'),
	(7,'Nery','28273665467'),
	(8,'Baltron','36277261542'),
	(9,'Jamily','28398472652'),
	(10,'Rafaela','37364899827'),
	(11,'Cibele','84940298028'),
	(12,'Nelina','47855940297'),
	(13,'Zilda','47382910473'),
	(14,'Karina','32390499872'),
	(15,'Flávia','37468392018');

create table consultas(
	id int not null primary key auto_increment,
	dia date,
	receituário varchar(255));

insert into consultas values
	(1,'2015-01-01',"paracetamol,ibuprofeno,diclofenaco"),
	(2,'2016-01-01',"dipirona,cetoprofeno"),
	(3,'2017-02-01',"dipirona,ácido mefenâmico"),
	(4,'2018-12-01',"paracetamol,ácido mefenâmico"),
	(5,'2019-11-24',"paracetamol,ibuprofeno,cetoprofeno"),
	(6,'2020-12-30',"ibuprofeno,cetoprofeno,dipirona"),
	(7,'2021-06-01',"paracetamol,diclofenaco,ácido mefenâmico"),
	(8,'2022-01-22',"ibuprofeno,dipirona"),
	(9,'2015-04-14',"dipirona,ibuprofeno,paracetamol"),
	(10,'2018-12-11',"diclofenaco,ibuprofeno,dipirona"),
	(11,'2017-03-06',"dipirona"),
	(12,'2015-08-05',"paracetamol"),
	(13,'2015-01-01',"ibuprofeno"),
	(14,'2019-01-22',"ácido mefenâmico"),
	(15,'2021-02-13',"cetoprofeno"),
	(16,'2022-10-17',"ibuprofeno"),
	(17,'2020-01-20',"diclofenaco"),
	(18,'2016-04-05',"diclofenaco"),
	(19,'2018-02-28',"dipirona"),
	(20,'2016-05-29',"paracetamol");

create table convenios (
	id int auto_increment primary key,
	nome varchar(50),
	cnpj varchar(14));

insert into convenios values
	(1,'assmed','37840274000185'),
	(2,'seisconv','18293093000143'),
	(3,'denconv','83959921000168'),
	(4,'paramed','10398877000191');

create table conv_cons_pac(
	id_convenios int not null,
	id_consultas int not null,
	id_pacientes int not null,
	primary key (id_convenios, id_consultas, id_pacientes),
	foreign key (id_consultas) references consultas(id),
	foreign key (id_pacientes) references pacientes(id),
    foreign key (id_convenios) references convenios(id));

insert into conv_cons_pac
	(id_convenios,id_consultas,id_pacientes) values
    (2,18,14),
    (3,17,10),
    (1,5,8),
    (4,3,12),
    (2,8,9);

create table internacao(
	id int not null auto_increment primary key,
	data_entrada date not null,
	data_prev_alta date not null,
	data_saida date not null,
	procedimento varchar(255));

insert into internacao values
	(1,'2016-05-01','2016-05-07','2016-05-06','drenagem toracica'),
    (2,'2018-05-09','2018-05-12','2018-05-13','acesso venoso central'),
    (3,'2019-12-14','2019-12-15','2019-12-14','cateterismo vesical'),
    (4,'2020-02-18','2020-02-20','2020-02-19','IOT'),
    (5,'2015-10-06','2015-10-09','2015-10-09','acesso venoso central'),
    (6,'2019-12-23','2019-12-24','2019-12-28','cateterismo vesical'),
    (7,'2021-08-09','2021-08-20','2021-08-19','Descanso pós-cirurgia');


create table tipo_quarto(
	id int not null auto_increment primary key,
	descricao varchar(100),
	valor_diaria int(3));
    
insert into tipo_quarto values
	(1,'apartamento',120),
	(2,'quartos duplo',180),
	(3,'enfermaria',100);

create table quarto(
	id_internacao int not null,
    id_tipo_quarto int not null,
    numero_quarto int(3) not null,
    primary key(id_internacao,id_tipo_quarto),
    foreign key(id_internacao) references internacao(id),
    foreign key(id_tipo_quarto) references tipo_quarto(id));
    
insert into quarto values
	(3,2,403),
    (2,1,101),
    (1,3,202);

create table enfermeiro(
	id int not null auto_increment primary key,
	nome varchar(80) not null,
	cpf varchar(11) not null,
	CRE int(5) not null);
    
insert into enfermeiro values
	(1,'Alice','29384938493',12939),
    (2,'Yury','48592039499',13940),
    (3,'Linda','58393090492',18493),
    (4,'Lúcia','38458302848',13294),
    (5,'Guilherme','99583929402',18476),
    (6,'Luiz','26647869802',19703),
    (7,'Ana','37465893095',10498),
    (8,'Kaue','26473895046',15477),
    (9,'Kelly','85930300593',17384),
    (10,'Nathan','37488538473',14859);
    
create table enfermeiro__internacao(
	id_internacao int not null,
	id_enfermeiro int not null,
	quantidade int not null,
	primary key(id_internacao,id_enfermeiro),
	foreign key(id_internacao) references internacao(id),
	foreign key(id_enfermeiro) references enfermeiro(id));

insert into enfermeiro__internacao values
	(1, 1 and 2, 2),
    (2, 3 and 4, 2),
    (3, 5 and 6, 2),
    (4, 7 and 8, 2),
    (5, 9 and 10, 2),
    (6, 2 and 5, 2),
    (7, 8 and 1, 2);

alter table medicos add em_atividade varchar(20) not null default('Ativo');
update medicos set em_atividade='Inativo' where id=2 or id=4;

update internacao set data_prev_alta = '2016-05-10' where id= 1;
update internacao set data_prev_alta = '2020-02-23' where id= 4;
update internacao set data_prev_alta = '2015-10-12' where id= 5;

update conv_cons_pac set id_convenios=1 where id_consultas = 3;
delete from convenios where id = 4;