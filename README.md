# Banco-de-Oscars

# E o Oscar vai para...
Atividade para analisar e fazer alterações em um banco de dados já criado, proposta pelo professor Gabriel Augusto para o Instituto PROA.


# 1) Quantas vezes Natalie Portman foi indicada ao Oscar?

Natalie Portman indicada ao Oscar 3 vezes.

SELECT COUNT(id_movie) from movies where movies.`name` = 'Natalie Portman';


# 2) Quantos Oscars Natalie Portman ganhou?

Natalie Portman ganhou 1 oscar

SELECT COUNT(id_movie) from movies where movies.`name` = 'Natalie Portman' and movies.winner = 'true';

# 3) Amy Adams já ganhou algum Oscar?

Não.

SELECT COUNT(id_movie) from movies where category = 'actor' and winner = 'true' and `name` = 'Amy Adams';

# 4) A série de filmes Toy Story ganhou um Oscar em quais anos?

Toy Story 3 ganhou dois Oscars em 2011.

SELECT year_ceremony FROM movies WHERE (film = 'Toy Story' or film ='Toy Story 2' or film = 'Toy Story 3') AND winner = '1';

# 5) Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?

A Categoria "Melhor Filme" tem mais oscars.

SELECT count(id_movie) from movies where category = 'actor' and winner = '1';
<br/>
SELECT COUNT(id_movie) FROM movies WHERE (category = 'best picture' OR category = 'outstanding picture' OR category = 'outstanding production' OR category = 'outstanding motion picture' OR category = 'best motion picture') AND winner='1';

# 6) O primeiro Oscar para melhor Atriz foi para quem? Em que ano?

O primeiro Oscar de melhor atriz foi para Janet Gaynor em 1928.

SELECT * FROM movies WHERE category = 'actress' and winner = '1' ORDER BY year_ceremony;

# 7) Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.

UPDATE movies SET winner=0 WHERE winner="false";
<br/>
UPDATE movies SET winner=1 WHERE winner="true";
<br/>
SELECT * FROM movies;

# 8) Em qual edição do Oscar "Crash" ganhou o prêmio principal?

Na edição de numero 78, no ano de 2006.

SELECT * FROM movies WHERE winner = '1' AND film = 'Crash' AND (category = 'best picture' OR category = 'outstanding picture' OR category = 'outstanding production' OR category = 'outstanding motion picture' OR category = 'best motion picture');

# 9) Bom... dê um Oscar para um filme que merece muito, mas não ganhou.

Eu daria o Oscar de Melhor Filme de Animação para Shrek 2.

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2004, 2005, 77, 'Best Animated Feature', 'Shrek 2', 'Shrek 2', 'False');

# 10) O filme Central do Brasil aparece no Oscar?

Central do Brasil não aparece no Oscar.

SELECT * FROM movies WHERE film ='central do brasil';

# 11) Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. 

One Piece: Clockwork Island Adventure, One Piece: The Movie, One Piece: Baron Omatsuri and the Secret Island

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES (2000, 2001, 73, 'Best Animated Feature', 'One Piece: The Movie', 'One Piece: The Movie', 'False'),
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES (2002, 2003, 75, 'Best Animated Feature', 'Clockwork Island Adventure', 'One Piece: Clockwork Island Adventure', 'False'),
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES (2004, 2005, 77, 'Best Animated Feature', 'Baron Omatsuri and the Secret Island', 'One Piece: Baron Omatsuri and the Secret Island', 'False');
<br/>

SELECT * FROM movies where ceremony='73';

# 12) Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.

categorias: 
Melhor filme de anime de todos os tempos, Melhor animação de filme de anime, Melhor roterizado.

UPDATE movies SET category = 'Melhor filme de anime de todos os tempos' WHERE film = 'One Piece: Baron Omatsuri and the Secret Island';
<br/>
UPDATE movies SET category = 'Melhor animação de filme de anime' WHERE film = 'One Piece: The Movie';
<br/>
UPDATE movies SET category = 'Melhor roterizado' WHERE film = 'One Piece: Baron Omatsuri and the Secret Island';
<br/>
SELECT * FROM movies where ceremony='95';

# 13) Qual foi o primeiro ano a ter um prêmio do Oscar?

O primeiro ano com o proemio ao oscar foi em 1928

SELECT * FROM movies;

# 14) Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?

Nasci no ano de 2004 e não possui nenhum premio nesta data : (

SELECT * FROM movies WHERE year_ceremony = '2004' AND (category = 'best picture' OR category = 'outstanding picture' OR category = 'outstanding production' OR category = 'outstanding motion picture' OR category = 'best motion picture' OR category ='directing' OR category='actress in a leading role') AND winner ='1';

# 15) Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2000, 2001, 73, 'Best Supporting Actress', 'Zhang Ziyi', 'Crouching Tiger, Hidden Dragon', 'False');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2006, 2007, 79, 'Best Supporting Actress', 'Rinko Kikuchi', 'Babel', 'False');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2003, 2004, 76, 'Best Supporting Actress', 'Shohreh Aghdashloo', 'House of Sand and Fog', 'False');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2004, 2005, 77, 'Best Actress', 'Catalina Sandino Moreno', 'Maria Full of Grace', 'False');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2011, 2012, 84, 'Best Supporting Actress', 'Berenice Bejo', 'The Artist', 'False');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2018, 2019, 91, 'Best Actress', 'Yalitza Aparicio', 'Roma', 'False');
<br/>
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2004, 2005, 77, 'Best Supporting Actress', 'Gong Li', 'Memoirs of a Geisha', 'False');
<br/>
SELECT * FROM movies where ceremony='95';

# 16) Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? 

Eu sou o incrivel Giovanni Moreira e a pessoa que eu mais mao e admiro é a minha namorada, ela mudou minha vida e o meu jeito de pensar, sempre estou em busca de ser mais: 

INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)
VALUES (2005, 2024, 96, 'Melhor namorada do mundo', 'Gabrielle Porto Silva', 'Meu Coração é Seu', 'True');

select * from movies where `name` = 'Gabrielle Porto Silva';
