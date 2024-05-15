use cadastro;
select * from cursos;

-- Selecionar todas as colunas e todas as linhas e ordernar hierarquicamente de acordo com os parametros de uma coluna
SELECT * FROM cursos
 ORDER BY nome; -- crescente.alter
 
 select * from cursos
 order by nome desc;	-- ordem decrescente
 
-- Se a sua intenção for mostrar somente algumas colunas, teremos agora as seguintes opções.alter
select ano,nome from cursos
order by ano;

/*
2024	python
2023	javacript
2022	SQL
2019	c
2016	Arroz com Feijão
2016	super fofos
2016	premier
2016	One Piece
2016	naruto
2016	linkedin
2016	facebook
2016	youtube
2013	direito
*/

-- Para especificar a busca

select * from cursos
where ano = '2016'
order by nome;

-- Teremos o seguinte resultado:
/*
13	Arroz com Feijão	cdceccccccccccccceeeeeeeee	12	50	2016
9	facebook	axwxwxxwxwxw	12	12	2016
8	linkedin	sxsxsxsxsxsxsx	5	10	2016
10	naruto	xsxsx	500	700	2016
11	One Piece	dededededededed	800	1100	2016
6	premier	djedekjdekdjedkjdkdjekdej	30	100	2016
12	super fofos	ssssd	33	80	2016
8	youtube	sxlçsxlsxmslxmsxls	10	34	2016
*/

-- Operadores Relacionais, para selecionar mediante uma relação de maior
select nome, ano from cursos
where ano > 2016
order by nome;
/*
c	2019
javacript	2023
python	2024
SQL	2022
*/
select nome, ano from cursos
where ano <> 2016
order by ano, nome;
/*
direito	2013
c	2019
SQL	2022
javacript	2023
python	2024
*/

select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;
/*
Arroz com Feijão	2016
facebook	2016
linkedin	2016
naruto	2016
One Piece	2016
premier	2016
super fofos	2016
youtube	2016
*/
select nome,ano from cursos
where ano in(2014,2016)
order by ano;
/*
Arroz com Feijão	2016
facebook	2016
linkedin	2016
naruto	2016
One Piece	2016
premier	2016
super fofos	2016
youtube	2016
*/

-- Além disso existe os comandos relacionais condicionais.alter
select nome, carga, totaulas from cursos
where carga > 70 and totaulas > 10;
/*
javacript	80	40
naruto	500	700
One Piece	800	1100
*/

select nome,carga, totaulas from cursos
where carga > 70 or totaulas > 10;
-- OR
/*
Arroz com Feijão	12	50
c	55	150
direito	30	30
facebook	12	12
javacript	80	40
naruto	500	700
One Piece	800	1100
premier	30	100
python	50	80
SQL	30	30
super fofos	33	80
youtube	10	34
*/
