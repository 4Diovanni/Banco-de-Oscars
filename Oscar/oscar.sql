-- SELECT COUNT(id_movie) from movies where movies.`name` = 'Natalie Portman'; -- // Quantas vezes Natalie Portman foi indicada ao Oscar?

-- SELECT COUNT(id_movie) from movies where movies.`name` = 'Natalie Portman' and movies.winner = 'true'; -- // Quantos Oscars Natalie Portman ganhou?

-- SELECT COUNT(id_movie) from movies where category = 'actor' and winner = 'true' and `name` = 'Amy Adams'; --  // Amy Adams já ganhou algum Oscar?

-- SELECT year_ceremony FROM movies WHERE (film = 'Toy Story' or film ='Toy Story 2' or film = 'Toy Story 3') AND winner = '1'; -- // A série de filmes Toy Story ganhou um Oscar em quais anos?

-- SELECT count(id_movie) from movies where category = 'actor' and winner = '1';
-- SELECT COUNT(id_movie) FROM movies WHERE (category = 'best picture' OR category = 'outstanding picture' OR category = 'outstanding production' OR category = 'outstanding motion picture' OR category = 'best motion picture') AND winner='1'; -- // Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?
    
-- SELECT * FROM movies WHERE category = 'actress' and winner = '1' ORDER BY year_ceremony; -- // O primeiro Oscar para melhor Atriz foi para quem? Em que ano?

-- UPDATE movies SET winner=0 WHERE winner="false";
-- UPDATE movies SET winner=1 WHERE winner="true";
-- SELECT * FROM movies; -- // Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.

-- SELECT * FROM movies WHERE winner = '1' AND film = 'Crash' AND (category = 'best picture' OR category = 'outstanding picture' OR category = 'outstanding production' OR category = 'outstanding motion picture' OR category = 'best motion picture'); -- // Em qual edição do Oscar "Crash" ganhou o prêmio principal?

-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2004, 2005, 77, 'Best Animated Feature', 'Shrek 2', 'Shrek 2', 'False'); -- // Bom... dê um Oscar para um filme que merece muito, mas não ganhou.

-- SELECT * FROM movies WHERE film ='central do brasil'; -- // O filme Central do Brasil aparece no Oscar?


-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)VALUES (2000, 2001, 73, 'Best Animated Feature', 'One Piece: The Movie', 'One Piece: The Movie', 'False'),
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)VALUES (2002, 2003, 75, 'Best Animated Feature', 'Clockwork Island Adventure', 'One Piece: Clockwork Island Adventure', 'False'),
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)VALUES (2004, 2005, 77, 'Best Animated Feature', 'Baron Omatsuri and the Secret Island', 'One Piece: Baron Omatsuri and the Secret Island', 'False');
-- SELECT * FROM movies where ceremony='73'; -- // Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. 

-- UPDATE movies SET category = 'Melhor filme de anime de todos os tempos' WHERE film = 'One Piece: Baron Omatsuri and the Secret Island';
-- UPDATE movies SET category = 'Melhor animação de filme de anime' WHERE film = 'One Piece: The Movie';
-- UPDATE movies SET category = 'Melhor roterizado' WHERE film = 'One Piece: Baron Omatsuri and the Secret Island';
-- SELECT * FROM movies where ceremony='95'; -- // Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.

-- SELECT * from MOVIES; -- // Qual foi o primeiro ano a ter um prêmio do Oscar?

-- SELECT * FROM movies WHERE year_ceremony = '2004' AND (category = 'best picture' OR category = 'outstanding picture' OR category = 'outstanding production' OR category = 'outstanding motion picture' OR category = 'best motion picture' OR category ='directing' OR category='actress in a leading role') AND winner ='1'; -- // Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?

-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2000, 2001, 73, 'Best Supporting Actress', 'Zhang Ziyi', 'Crouching Tiger, Hidden Dragon', 'False');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2006, 2007, 79, 'Best Supporting Actress', 'Rinko Kikuchi', 'Babel', 'False');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2003, 2004, 76, 'Best Supporting Actress', 'Shohreh Aghdashloo', 'House of Sand and Fog', 'False');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2004, 2005, 77, 'Best Actress', 'Catalina Sandino Moreno', 'Maria Full of Grace', 'False');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2011, 2012, 84, 'Best Supporting Actress', 'Berenice Bejo', 'The Artist', 'False');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2018, 2019, 91, 'Best Actress', 'Yalitza Aparicio', 'Roma', 'False');
-- INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (2004, 2005, 77, 'Best Supporting Actress', 'Gong Li', 'Memoirs of a Geisha', 'False');
-- SELECT * FROM movies where ceremony='95'; -- // Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.

--INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner)VALUES (2005, 2024, 96, 'Melhor namorada do mundo', 'Gabrielle Porto Silva', 'Meu Coração é Seu', 'True');
-- select * from movies where `name` = 'Gabrielle Porto Silva'; -- // Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? 