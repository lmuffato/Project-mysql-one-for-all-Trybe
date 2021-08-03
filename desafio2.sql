CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT COUNT(nome_cancao) FROM SpotifyClone.Cancoes) AS "cancoes", 
(SELECT COUNT(artista_nome) FROM SpotifyClone.Artistas) AS "artistas",
(SELECT COUNT(nome_album) FROM SpotifyClone.Albuns) AS "albuns";

-- https://www.devmedia.com.br/trabalhando-com-subqueries/40134
