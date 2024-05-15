-- manipular linhas

use cadastro;

-- As linhas são os registros
-- Colunas são os campos, ou atributos.alter
-- Aula de manipular linhas.alter
describe cursos;
use cadastro;
insert into cursos values
('1','dirito','curso de justiça','30', '30', '2013'),
('2','myppl','analise de dados','30', '30', '2022'),
('3','javacript','full stack','80', '40', '2023'),
('4','pthon','framework django','30', '80', '2024'),
('5','c','microcontrolador msp430','55', '150', '2019');

select * from cursos;


-- Nosso banco de dados tem o cadastro de duas coisas, cadrasto de usuários e cursos

-- primeira modificação é na linha 1:
-- Com o comando Update


-- Se tiver dando problema, não esqueça de desmarca a opção:alter
-- Edit -. Preferences -> SQL editor -> "safe update"
-- Reconnect DBMS
UPDATE cursos 
SET nome = 'Javascript' 
WHERE idcurso = '2';

update cursos
set nome = 'direito'
where idcurso = '1';

select * from cursos;


update cursos
set nome = 'python', carga = '50'
where idcurso = '4';

update cursos
set nome = 'SQL'
where idcurso ='2';

update cursos
set nome = 'SQL'
where idcurso ='2'
limit 1; -- é uma medida de segurança pra não alterar varias coisas de uma vez

select * from cursos





