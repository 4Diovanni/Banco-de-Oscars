# Banco-de-Oscars

# E o Oscar vai para...
Atividade para analisar e fazer alterações em um banco de dados já criado, proposta pelo professor Gabriel Augusto para o Instituto PROA.



# 1) Quantas vezes Natalie Portman foi indicada ao Oscar?

R:Natalie Portman foi indicada ao Oscar 3 vezes.

SELECT COUNT(id_movie) from movies where movies.`name` = 'Natalie Portman';


# 2) Quantos Oscars Natalie Portman ganhou?

R:Natalie Portman ganhou um Oscar.

SELECT COUNT(id_movie) from movies where movies.`name` = 'Natalie Portman' and movies.winner = 'true';

# 3) Amy Adams já ganhou algum Oscar?

R:Não.

SELECT COUNT(id_movie) from movies where category = 'actor' and winner = 'true' and `name` = 'Amy Adams';

# 4) A série de filmes Toy Story ganhou um Oscar em quais anos?

R:Toy Story 3 ganhou dois Oscar's no ano de 2011.

SELECT year_ceremony FROM movies WHERE (film = 'Toy Story' or film ='Toy Story 2' or film = 'Toy Story 3') AND winner = '1';

# 5) Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?

R: A Categoria "Melhor Filme" tem mais oscar's.

SELECT count(id_movie) from movies where category = 'actor' and winner = '1';
<br/>
SELECT COUNT(id_movie) FROM movies WHERE (category = 'best picture' OR category = 'outstanding picture' OR category = 'outstanding production' OR category = 'outstanding motion picture' OR category = 'best motion picture') AND winner='1';

# 6) O primeiro Oscar para melhor Atriz foi para quem? Em que ano?

R: O primeiro Oscar de melhor atriz foi para Janet Gaynor, na cerimonia de 1928. 

SELECT * FROM movies WHERE category = 'actress' and winner = '1' ORDER BY year_ceremony;

# 7) Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.

R:
UPDATE movies SET winner=0 WHERE winner="false";
<br/>
UPDATE movies SET winner=1 WHERE winner="true";
<br/>
SELECT * FROM movies;

# 8) Em qual edição do Oscar "Crash" ganhou o prêmio principal?

R: Na edição de numero 78, no ano de 2006.

SELECT * FROM movies WHERE winner = '1' AND film = 'Crash' AND (category = 'best picture' OR category = 'outstanding picture' OR category = 'outstanding production' OR category = 'outstanding motion picture' OR category = 'best motion picture');

# 9) Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
R: Eu daria o Oscar de Melhor Filme de Animação para O Gato de Botas 2: O Ultimo Desejo.

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2023', '2024', '95', 'ANIMATED FEATURE FILM', 'Joel Crawford', 'Gato de Botas 2: O Ultimo Desejo', '1');

# 10) O filme Central do Brasil aparece no Oscar?

R:Central do Brasil não aparece no Oscar.

SELECT * FROM movies WHERE film ='central do brasil';

# 11) Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. 
R: Eu adicionei: O Homem que Copiava, Scott Pilgrim Contra o Mundo e Bacurau.

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2003', '2024', '95', 'BEST PICTURE', 'Jorge Furtado', 'O Homem que Copiava', '1');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2010','2024','95','DIRECTING','Edgar Wright','Scott Pilgrim Contra o Mundo', '1');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2019','2004','95','WRITING (Original Screenplay)','Kleber Mendonça Filho','Bacurau','1');
<br/>

SELECT * FROM movies where ceremony='95';

# 12) Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.

R: Eu criei as categorias: MELHOR FILME BRASILEIRO, MELHOR ADAPTAÇÃO DE QUADRINHOS E ROTEIRO MAIS FORA DA CURVA.

UPDATE movies SET category = 'MELHOR FILME BRASILEIRO' WHERE film = 'O Homem que Copiava';
<br/>
UPDATE movies SET category = 'MELHOR ADAPTAÇÃO DE QUADRINHOS' WHERE film = 'Scott Pilgrim Contra o Mundo';
<br/>
UPDATE movies SET category = 'ROTEIRO MAIS FORA DA CURVA' WHERE film = 'Bacurau';
<br/>

SELECT * FROM movies where ceremony='95';

# 13) Qual foi o primeiro ano a ter um prêmio do Oscar?

R: O primeiro ano a ter uma cerimônia do Oscar foi em 1928.

SELECT * FROM movies;

# 14) Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?

R: No ano em que eu nasci, que é 2003, A melhor atriz foi Nicole Kidman com o filme "The Hours", melhor Direção foi para Roman Polanski com "The Pianist", e melhor filme foi para Martin Richards, produtor com Chicago.

SELECT * FROM movies WHERE year_ceremony = '2003' AND (category = 'best picture' OR category = 'outstanding picture' OR category = 'outstanding production' OR category = 'outstanding motion picture' OR category = 'best motion picture' OR category ='directing' OR category='actress in a leading role') AND winner ='1';

# 15) Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.
R:

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2017', '2024', '95', 'ACTRESS IN A LEADING ROLE', 'Mone Kamishiraishi', 'Kimi no Nawa', '0');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2016', '2024', '95', 'ACTRESS IN A SUPPORTING ROLE', 'Bae Doona', 'Teo-neol', '0');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2016', '2024', '95', 'ACTRESS IN A LEADING ROLE', 'Saori Hayami', 'Koe no Katachi', '0');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2014', '2024', '95', 'ACTRESS IN A LEADING ROLE', 'Shin Min-a', 'My Love, My Bride', '0');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1998', '2024', '95', 'ACTRESS IN A LEADING ROLE', 'Junko Iwao', 'Perfect Blue', '0');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1998', '2024', '95', 'ACTRESS IN A SUPPORTING ROLE', 'Rica Matsumoto', 'Perfect Blue', '0');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1995', '2024', '95', 'ACTRESS IN A LEADING ROLE', 'Atsuko Tanaka', 'Ghost in The Shell', '0');
<br/>

SELECT * FROM movies where ceremony='95';

# 16) Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? 

R: Uma pessoa que eu admiro é a minha mãe, que se chama Isnete. Obviamente, ela sempre cuidou de mim e dos meus irmãos, e apesar do jeito bem "estressado" dela, ela sempre amou e ama muito a gente, e fez de tudo pra que nunca faltasse nada pra gente. O premio que eu daria pra ela é de "Melhor Mãe do Mundo".

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1968', '2024', '95', 'MELHOR MÃE DO MUNDO', 'Isnete Alves Gabriel', 'A Vida Inteira Dela', '1');

select * from movies where `name` = 'Isnete Alves Gabriel';
