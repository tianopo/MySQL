use hospital;

use hospital;

select * from consultas,conv_cons_pac,convenios,enfermeiro,
enfermeiro__internacao,internacao,medicos,pacientes,quarto,tipo_quarto;

select avg(preco) from consultas where dia like '2020%';

select cons.dia,cons.preco,ccp.id_convenios,ccp.id_consultas,
avg(cons.preco) as media from consultas as cons join 
conv_cons_pac as ccp on cons.id = ccp.id_consultas;

select avg(cons.preco) as media from consultas as cons join 
conv_cons_pac as ccp on cons.id = ccp.id_consultas;

select * from internacao where data_saida > data_prev_alta;

select c.dia,c.receituário from consultas as c where id = 1;

select min(c.preco) as consulta_mais_barata,
max(c.preco) as consulta_mais_cara from consultas as c join
conv_cons_pac as co on co.id_consultas <> co.id_convenios;

insert into quarto (id_internacao,id_tipo_quarto,numero_quarto) values
(4,2,302),(5,1,110),(6,3,501),(7,3,304);

select i.data_entrada,i.data_prev_alta,i.data_saida,t.descricao,
t.valor_diaria,
datediff(i.data_entrada,i.data_saida) * t.valor_diaria as total
from quarto as q join internacao as i on q.id_internacao= i.id 
join tipo_quarto as t on q.id_tipo_quarto = t.id;

select i.data_entrada,i.procedimento, q.numero_quarto, t.descricao
from quarto as q join internacao as i on q.id_internacao= i.id 
join tipo_quarto as t on q.id_tipo_quarto = t.id
where t.descricao = 'apartamento';

alter table pacientes add column nascimento date not null;
update pacientes set nascimento = '1998-01-13' where id = 1;
update pacientes set nascimento = '2000-10-23' where id = 2;
update pacientes set nascimento = '2012-04-30' where id = 3;
update pacientes set nascimento = '2016-07-03' where id = 4;
update pacientes set nascimento = '2001-07-15' where id = 5;
update pacientes set nascimento = '2001-12-09' where id = 6;
update pacientes set nascimento = '1948-06-02' where id = 7;
update pacientes set nascimento = '1977-05-15' where id = 8;
update pacientes set nascimento = '1998-11-07' where id = 9;
update pacientes set nascimento = '1999-02-09' where id = 10;
update pacientes set nascimento = '2005-10-28' where id = 11;
update pacientes set nascimento = '2003-02-23' where id = 12;
update pacientes set nascimento = '1988-01-30' where id = 13;
update pacientes set nascimento = '1987-10-19' where id = 14;
update pacientes set nascimento = '2013-08-15' where id = 15;

alter table consultas add column especialidade varchar(30) not null;

update consultas set especialidade = 'pediatria' where id = 1;
update consultas set especialidade = 'clinica_geral' where id = 2;
update consultas set especialidade = 'dermatologia' where id = 3;
update consultas set especialidade = 'geriatria' where id = 4;
update consultas set especialidade = 'pediatria' where id = 5;
update consultas set especialidade = 'oftalmologia' where id = 6;
update consultas set especialidade = 'clinica_geral' where id = 7;
update consultas set especialidade = 'pediatria' where id = 8;
update consultas set especialidade = 'oncologia' where id = 9;
update consultas set especialidade = 'gastroenterologia' where id = 10;
update consultas set especialidade = 'oftalmologia' where id = 11;
update consultas set especialidade = 'clinica_geral' where id = 12;
update consultas set especialidade = 'dermatologia' where id = 13;
update consultas set especialidade = 'pediatria' where id = 14;
update consultas set especialidade = 'geriatria' where id = 15;
update consultas set especialidade = 'oftalmologia' where id = 16;
update consultas set especialidade = 'clinica_geral' where id = 17;
update consultas set especialidade = 'clinica_geral' where id = 18;
update consultas set especialidade = 'gastroenterologia' where id = 19;
update consultas set especialidade = 'geriatria' where id = 20;

select p.nome,m.medico,i.data_entrada,i.procedimento
from pacientes p join internacao i join tipo_quarto tq
on p.id = i.id join medicos m on m.id = p.id
where m.especialidade <> "gastroenterologia" and
tq.descricao = "enfermaria";

alter table medicos add column CRM int(5) not null;

update medicos set crm = 29384 where id=1;
update medicos set crm = 74662 where id=2;
update medicos set crm = 38476 where id=3;
update medicos set crm = 37489 where id=4;
update medicos set crm = 01380 where id=5;
update medicos set crm = 27830 where id=6;
update medicos set crm = 38499 where id=7;
update medicos set crm = 27384 where id=8;
update medicos set crm = 10938 where id=9;
update medicos set crm = 10004 where id=10;

select m.medico, m.CRM, count(c.especialidade = m.especialidade) as Atendimento 
from medicos m join consultas c on c.id = m.id 
where c.especialidade like '%pediatria%';
select m.medico, m.CRM, count(c.especialidade = m.especialidade) as Atendimento 
from medicos m join consultas c on c.id = m.id
where c.especialidade like '%dermatologia%';
select m.medico, m.CRM, count(c.especialidade = m.especialidade) as Atendimento 
from medicos m join consultas c on c.id = m.id
where c.especialidade like '%gastroenterologia%';
select m.medico, m.CRM, count(c.especialidade = m.especialidade) as Atendimento 
from medicos m join consultas c on c.id = m.id
where c.especialidade like '%geriatria%';
select m.medico, m.CRM, count(c.especialidade = m.especialidade) as Atendimento 
from medicos m join consultas c on c.id = m.id
where c.especialidade like '%oncologia%';
select m.medico, m.CRM, count(c.especialidade = m.especialidade) as Atendimento 
from medicos m join consultas c on c.id = m.id
where c.especialidade like 'clinic_%';

update enfermeiro__internacao set id_enfermeiro = 2 where id_internacao=2;
update enfermeiro__internacao set id_enfermeiro = 3 where id_internacao=3;
update enfermeiro__internacao set id_enfermeiro = 1 where id_internacao=4;
update enfermeiro__internacao set id_enfermeiro = 4 where id_internacao=5;
update enfermeiro__internacao set id_enfermeiro = 7 where id_internacao=6;
update enfermeiro__internacao set id_enfermeiro = 4 where id_internacao=7;

select e.nome, e.CRE from enfermeiro e 
join enfermeiro__internacao ei on e.id = ei.id_enfermeiro
where ei.id_enfermeiro = 4 or ei.id_enfermeiro = 1;