-- Crie uma VIEW com o nome top_3_artistas que deve mostrar somente as três pessoas artistas mais populares no banco SpotifyClone, possuindo as seguintes colunas:

-- A primeira coluna deve possuir o alias "artista" e exibir o nome da pessoa artista.

-- A segunda coluna deve ter o alias "seguidores" e exibir a quantidade de pessoas que estão seguindo aquela 
-- pessoa artista.

-- Seu resultado deve estar ordenado em ordem decrescente, baseando-se na quantidade de seguidores. Em caso de 
-- empate, ordene os resultados pelo nome da pessoa artista em ordem alfabética.

-- Sua VIEW deve retornar a seguinte informação, ao ser consultada:

-- Top 3 artistas

-- O que será verificado:

-- Será validado se existe uma VIEW chamada top_3_artistas que exibe os dados corretos nas colunas 
-- artista e seguidores".

-- Será validado se as colunas estão ordenadas de forma correta.

CREATE VIEW top_3_artistas AS
SELECT per.singer_name AS artista,
COUNT(fol.singer_id) AS seguidores
FROM SpotifyClone.performers AS per
INNER JOIN SpotifyClone.following_artists AS fol
ON per.singer_id = fol.singer_id
GROUP BY artista
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
