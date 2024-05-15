-- Criar mais uma tabela

create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int,
ano year default '2016'
) default charset = utf8;

alter table cursos 
add column idcurso int first;

alter table cursos
add primary key (idcurso);

describe cursos;


-- alter table drop apaga coluna
-- se o comando for drop apaga uma tabela, exemplo:


create table if not exists teste(
one int,
two char,
three int
);

drop table teste;

-- Tabela não existe mais.



