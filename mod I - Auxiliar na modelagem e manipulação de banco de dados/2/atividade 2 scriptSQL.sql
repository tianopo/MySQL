create database hospital;
create table enfermeiro(
id int not null auto_increment primary key,
nome varchar(80) not null,
cpf int(11) not null,
CRE int(5) not null);
create table internacao(
id int not null auto_increment primary key,
data_entrada date not null,
data_prev_alta date not null,
data_saida date not null,
procedimento varchar(255));
create table enfermeiro__internacao(
id_internacao int not null,
id_enfermeiro int not null,
quantidade int not null,
primary key(id_internacao,id_enfermeiro),
foreign key(id_internacao) references internacao(id),
foreign key(id_enfermeiro) references enfermeiro(id));
create table quarto(
id int not null auto_increment primary key,
numero int(3),
tipo varchar(10));
create table tipo_quarto(
id int not null auto_increment primary key,
descricao varchar(1000),
valor_diaria decimal(5,2));