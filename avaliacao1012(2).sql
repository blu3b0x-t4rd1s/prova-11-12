create database avaliacao1012;
use avaliacao1012;

create table Paciente (
codPaciente int not null auto_increment,
nomePaciente varchar(45),
dataNascimento date,
convenio varchar(45),
constraint pkcodPaciente primary key (codPaciente));

show tables;
describe Paciente;


create table Medico (
crm int not null,
nomeMedico varchar(45),
especialidade varchar(45),
constraint pkcrm primary key (crm));

show tables;
describe Medico;


create table TipoExame (
codExame int not null auto_increment,
nomeExame varchar(45),
valorBase float,
setor varchar(45),
constraint pkcodExame primary key (codExame));

show tables;
describe TipoExame;


create table Consulta (
codConsulta int not null auto_increment,
codPaciente int not null,
crm int not null,
dataConsulta date,
constraint pk_consulta primary key (codConsulta),
constraint fk_consulta_paciente foreign key (codPaciente) references Paciente(codPaciente),
constraint fk_consulta_medico foreign key (crm) references Medico(crm)

show tables;
describe Consulta;
select * from Consulta;
 
 create table SolicitacaoExame(
 codSolicitacao int not null auto_increment,
 codConsulta int not null,
 codExame int not null,
dataColeta date,
 statusExame varchar(45),
 constraint pkcodSolicitacao primary key (codSolicitacao),
 constraint fkcodConsulta foreign key (codConsulta) references Consulta (codConsulta),
constraint fkcodExame foreign key (codExame) references TipoExame (codExame));

show tables;
describe SolicitacaoExame;
select * from SolicitacaoExame;

create table ResultadoExame (
codResultado int not null auto_increment,
codSolicitacao int not null,
codUnidade int not null,
dataLiberacao date,
valorResultado float,
referencia varchar(45),
constraint pkcodResultado primary key (codResultado),
constraint fkcodSolicitacao foreign key (codSolicitacao) references SolicitacaoExame(codSolicitacao),
constraint fkcodUnidade foreign key (codUnidade) references Unidade(codUnidade)

show tables;
describe ResultadoExame;
select * from SolicitaResultadoExamecaoExame;

create table Unidade (
codUnidade int not null auto_increment,
nomeUnidade varchar(45),
endereco varchar(45),
constraint pkcodUnidade primary key (codUnidade));

show tables;
describe Unidade;


create table Convenio (
nomeConvenio varchar(45),
cnpj varchar(45),
descontoPadrao float,
constraint pknomeConvenio primary key (nomeConvenio));

show tables;
describe Convenio;
select * from Convenio;

/*tabela Paciente*/
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (1, 'Jose','2002-02-05','Unimed');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (2, 'Mia','1985-03-15','Unimed');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (3, 'Maria','1992-07-22','SulAmérica');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (4, 'Ana','1978-11-08','Bradesco Saúde');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (5, 'João','2001-05-30','Hapvida');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (6, 'Antônio','1965-09-12','NotreDame');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (7, 'Maria Alice','1989-01-04','Golden Cross');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (8, 'Francisca','2005-12-18','Porto Seguro Saúde');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (9, 'Pedro','1974-04-27','Assim Saúde');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (10, 'Helena','1997-06-14','Cassi');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (11, 'Thais','1982-10-09','Omint');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (12, 'Laura','2008-02-25','Intermédica ');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (13, 'Valentina','1969-08-03','SAMI');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (14, 'Júlia','1994-11-19','Care Plus');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (15, 'Fernanda','1980-07-11','Medial Saúde');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (16, 'Patrícia','2003-03-07','Qualicorp');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (17, 'Miguel','1976-12-01','Dix Amico');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (18, 'Lucas','1990-05-16','São Lucas Copa');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (19, 'Gabriel','2000-09-28','Prece');
insert into Paciente (codPaciente,nomePaciente,dataNascimento,convenio) values (20, 'Sofia','1987-01-21','Blue');
select * from Paciente;

/*tabela Medico*/
insert into Medico (crm,nomeMedico,especialidade) values ('123456','Dr. Carlos Silva','Cardiologia');
insert into Medico (crm,nomeMedico,especialidade) values ('987654','Dra. Laura Santos','Clínica Médica');
insert into Medico (crm,nomeMedico,especialidade) values ('345670','Dr. Carlos Almeida','Cardiologista');
insert into Medico (crm,nomeMedico,especialidade) values ('098765','Dra. Mariana Silva','Dermatologia');
insert into Medico (crm,nomeMedico,especialidade) values ('543226','Dr. Felipe Costa','Endocrinologia');
insert into Medico (crm,nomeMedico,especialidade) values ('098765','Dra. Camila Pereira','Ginecologia e Obstetrícia');
insert into Medico (crm,nomeMedico,especialidade) values ('876543','Dr. Bruno Rocha','Ortopedia');
insert into Medico (crm,nomeMedico,especialidade) values ('098765','Dra. Juliana Santos','Pediatria');
insert into Medico (crm,nomeMedico,especialidade) values ('123456','Dr. Thiago Oliveira','Neurologia');
insert into Medico (crm,nomeMedico,especialidade) values ('654321','Dra. Larissa Fernandes','Oftalmologia');
insert into Medico (crm,nomeMedico,especialidade) values ('765432','Dr. Gabriel Martins','Psiquiatria');
insert into Medico (crm,nomeMedico,especialidade) values ('098765','Dra. Aline Ribeiro','Nefrologia');
insert into Medico (crm,nomeMedico,especialidade) values ('987654','Dr. Marcelo Gonçalves','Gastroenterologia');
insert into Medico (crm,nomeMedico,especialidade) values ('700098','Dra. Patrícia Lima','Oncologia');
insert into Medico (crm,nomeMedico,especialidade) values ('543267','Dra. Vanessa Carvalho','Otorrinolaringologia');
insert into Medico (crm,nomeMedico,especialidade) values ('756438','Dra. Renata Barros','Reumatologia');
insert into Medico (crm,nomeMedico,especialidade) values ('098243','Dr. André Nascimento','Urologia');
insert into Medico (crm,nomeMedico,especialidade) values ('765298','Dr. Rafael Moreira','Hematologia');
insert into Medico (crm,nomeMedico,especialidade) values ('654328','Dra. Beatriz Torres','Infectologia');
insert into Medico (crm,nomeMedico,especialidade) values ('987657','Dra. Sofia Almeida','Endoscopia');
select * from Medico;

/*tabela TipoExame*/
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('1','Hemograma Completo','400','Laboratório Clínico');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('2','Glicemia (Jejum)','250','Laboratório Clínico');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('3','Colesterol Total','400','Laboratório Clínico');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('4','TSH (Hormônio Tireoidiano)','600','Endocrinologia/Laboratório Clínico');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('5','Creatinina','350','Nefrologia/Laboratório Clínico');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('6','Urina Tipo I','300','Laboratório Clínico');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('7','Eletrocardiograma (ECG)','800','Cardiologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('8','Ecocardiograma','350','Cardiologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('9','Raio-X de Tórax','100','Radiologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('10','Ultrassonografia Abdominal','250','Radiologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('11','Tomografia Computadorizada (Tórax)','600','Radiologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('12','Ressonância Magnética (Cérebro)','1200','Radiologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('13','Endoscopia Digestiva Alta','4500','Gastroenterologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('14','Colonoscopia','700','Gastroenterologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('15','Teste de Esforço','300','Cardiologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('16''Holter 24h', 350, 'Cardiologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('17','Mamografia','70','Ginecologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('18','Densitometria Óssea','180','Radiologia/Ginecologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('19','Sorologia para HIV','250','Reumatologia/Osteologia');
insert into TipoExame (codExame,nomeExame,valorBase,setor) values ('20','Papanicolau','500','Infectologia/Laboratório Clínico');
select * from TipoExame;

/*tabela Consulta*/

describe consulta;
select * from medico;
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (1, 1, 123456, '2025-01-12');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (2, 2, 987654, '2025-02-03');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (3, 3, 345670, '2025-02-18');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (4, 4, 098765, '2025-03-09');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (5, 5, 543226, '2025-03-21');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (6, 6, 876543, '2025-04-10');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (7, 7, 098765, '2025-04-28');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (8, 8, 123456, '2025-05-03');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (9, 9, 654321, '2025-05-18');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (10, 10, 765432, '2025-06-09');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (11, 11, 098243, '2025-06-25');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (12, 12, 987654, '2025-07-04');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (13, 13, 700098, '2025-07-19');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (14, 14, 543267, '2025-08-03');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (15, 15, 756438, '2025-08-22');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (16, 16, 765298, '2025-09-01');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (17, 17, 654328, '2025-09-17');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (18, 18, 987657, '2025-10-05');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (19, 19, 098765, '2025-10-27');
insert into Consulta (codConsulta, codPaciente, crm, dataConsulta) values (20, 20, 345670, '2025-11-14');
select*from Consulta;

/*tabela  SolicitacaoExame*/

describe  SolicitacaoExame;
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (1,1,1,'2026-02-15',"pendente");
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (2,2,2,'2025-11-09','em andamento');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (3,3,3,'2026-04-17','concluido');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (4,4,4,'2026-02-14','em andamento');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (5,5,5,'2026-05-07','pendente');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (6,6,6,'2026-07-01','concluido');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (7,11,13,'2025-10-15','pendente');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (8,13,11,'2025-08-13','concluido');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (9,12,14,'2026-03-27','pendente');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (10,14,12,'2025-06-23','pendente');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (11,15,20,'2025-10-16','em andamento');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (12,20,15,'2025-07-07','concluido');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (13,18,17,'2025-08-25','pendente');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (14,17,18,'2025-04-03','concluido');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (20,20,20,'2025-05-22','em andamento');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (16,16,19,'2025-03-19','pendente');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (17,14,19,'2026-02-21','pendente');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (18,19,14,'2026-04-13','em andamento');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (19,20,13,'2025-07-11','concluido');
insert into  SolicitacaoExame (codSolicitacao,codConsulta,codExame,dataColeta,statusExame) values (20,15,7,'2025-09-01','pendente');
select * from  SolicitacaoExame;

/*Unidade*/
insert into Unidade (codUnidade,nomeUnidade,endereco) values (1,'Clínica Vida Plena','Rua das Bromélias, 128');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (2,'Centro Médico Horizonte','Avenida Horizonte, 950');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (3,'Hospital São Gabriel','Travessa do Cedro, 45 –');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (4,'Unidade de Saúde Primavera','Rua Serra Dourada, 712');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (5,'Instituto Médico Alpha','Alameda Cristalina, 301');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (6,'Clínica Bem Cuidar','Rua dos Ipês, 889');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (7,'Hospital Nova Esperança','Avenida Mar do Norte, 1560');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (8,'Centro Integrado de Saúde Vitalis','Rua Três Lagoas, 223');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (9,'Clínica Serra Azul','Rua Pedra Azul, 77');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (10,'Hospital Lumière','Alameda Flor de Lis, 560');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (11,'Unidade Médica Santo Amaro','Rua dos Girassóis, 92');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (12,'Clínica Coração do Vale','Avenida Arco-Íris, 1840');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (13,'Centro Médico Vivacité','Rua Monte Verde, 310');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (14,'Hospital Terra Nova','Travessa Andorinhas, 64');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (15,'Instituto de Saúde Atlântida','Rua das Acácias, 501');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (16,'Clínica Bem-Estar Total','Avenida Sol Nascente, 2002');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (17,'Unidade de Atendimento Vida Bela','Rua Lago Sereno, 145');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (18,'Centro Médico São Lucas','Rua Horizonte Sul, 930');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (19,'Clínica Horizonte Verde','Alameda Ventos do Leste, 278');
insert into Unidade (codUnidade,nomeUnidade,endereco) values (20,'Hospital Stella Maris','Avenida Estrela Polar, 3100');
select * from Unidade;

/*ResultadoExame*/
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (2, 5, 3, '2026-02-18', 350, 'Referência padrão');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (3, 7, 10, '2026-03-01', 120, 'Dentro dos padrões');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (4, 2, 12, '2026-01-22', 89, 'Valor normal para adultos');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (5, 8, 5, '2026-02-11', 510, 'Faixa recomendada: 400–600');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (6, 12, 9, '2026-03-14', 75, 'Referência laboratorial padrão');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (7, 9, 1, '2026-01-27', 340, 'Valores estáveis');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (8, 3, 14, '2026-04-20', 150, 'Intervalo normal: 120–180');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (9, 11, 7, '2026-03-05', 960, 'Valor acima da média');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (10, 14, 4, '2026-02-28', 210, 'Faixa adequada');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (11, 1, 6, '2026-03-22', 410, 'Normal para o exame solicitado');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (12, 10, 2, '2026-02-19', 180, 'Limite superior aceitável');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (13, 6, 13, '2026-01-31', 320, 'Parâmetros fisiológicos estáveis');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (14, 4, 11, '2026-03-17', 540, 'Referência: 450–600');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (15, 13, 16, '2026-04-04', 270, 'Dentro da normalidade');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (16, 20, 8, '2026-05-02', 130, 'Referência: 90–140');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (17, 17, 19, '2026-04-14', 390, 'Valores adequados ao exame');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (18, 16, 18, '2026-03-29', 620, 'Leve alteração detectada');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (19, 18, 20, '2026-02-25', 85, 'Parâmetros saudáveis');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (20, 19, 15, '2026-04-10', 470, 'Referência clínica segura');
insert into ResultadoExame (codResultado,codSolicitacao,codUnidade,dataLiberacao,valorResultado,referencia) values (21, 7, 17, '2026-03-07', 110, 'Resultado dentro do intervalo esperado');
select * from ResultadoExame;

alter table TipoExame
add column Tempojejum int;

update Tipoexame
set valorBase = valorBase * 1.15
where setor = 'Hematologia'
and valorBase < 50.00;

delete from Medico
where especialidade = 'Clinico Geral'
or nomeMedico like 'j%';


select crm as RegistroProfissional,
nomeMedico from Medico
order by especialidade desc;

select nomePaciente,dataNascimento
from Paciente
where dataNascimento between '1969-08-03' and '2000-09-28';

select nomeExame,setor
from TipoExame
where nomeExame not like '%Glicose%';
and setor like '%Bio%';

select nomeUnidade,endereco
from Unidade
where endereco in ('Bairro Central','Zona Sul','Centro');

select nomePaciente, convenio
from Paciente
where convenio not in ('Unimed','Bradesco Saúde','Particular');

select p.nomePaciente,m.nomeMedico,c.dataConsulta
from Consulta c
inner join Paciente p on c.codPaciente = p.codPaciente
inner join Medico m on c.crm = m.crm
where c.dataConsulta > '2025-09-01';

select p.nomePaciente,t.nomeExame,u.nomeUnidade
from Paciente p
inner join Consulta c on p.codPaciente = c.codPaciente
inner join SolicitacaoExame s on c.codConsulta = s.codConsulta
inner join ResultadoExame r on s.codSolicitacao = r.codSolicitacao
inner join TipoExame t on s.codExame = t.codExame
inner join Unidade u on r.codUnidade = u.codUnidade
where r.valorResultado >15
and t.nomeExame = 'Hemograma Completo';

select m.nomeMedico,m.especialidade,t.nomeExame
from Medico m
inner join Consulta c on m.crm = c.crm
inner join SolicitacaoExame s on c.codConsulta = s.codConsulta
inner join TipoExame t on s.codExame = t.codExame
where m.especialidade = 'Cardiologia'
or t.setor = 'Urgencia';

select m.nomeMedico, count(c.codConsulta) as TotalConsultas
from Medico m
inner join Consulta c on m.crm = c.crm
group by m.nomeMedico;

select setor, min(valorBase) as ValorMinimo
from TipoExame
group by setor;

select p.nomePaciente, max(r.valorResultado) as ResultadoMaximo
from Paciente p
inner join Consulta c on p.codPaciente = c.codPaciente
inner join SolicitacaoExame s on c.codConsulta = s.codConsulta
inner join ResultadoExame r on s.codSolicitacao = r.codSolicitacao
 group by p.nomePaciente;
 
 select p.nomePaciente, t.nomeExame
from Paciente p
inner join Consulta c on p.codPaciente = c.codPaciente
inner join SolicitacaoExame s on c.codConsulta = s.codConsulta
inner join TipoExame t on s.codExame = t.codExame
where p.dataNascimento >= '1990-01-01'
  and c.crm not between 5000 and 8000;

select nomeUnidade, endereco
from Unidade
where nomeUnidade like 'Laboratório%'
  and codUnidade between 10 and 50;
  
  select p.nomePaciente, m.nomeMedico, t.nomeExame, s.statusExame
from Paciente p
inner join Consulta c on p.codPaciente = c.codPaciente
inner join Medico m on c.crm = m.crm
inner join SolicitacaoExame s on c.codConsulta = s.codConsulta
inner join TipoExame t on s.codExame = t.codExame
inner join ResultadoExame r on s.codSolicitacao = r.codSolicitacao
where s.statusExame in ('Liberado', 'Em Análise')


order by r.dataLiberacao desc;










