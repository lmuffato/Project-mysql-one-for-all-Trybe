CREATE VIEW estatisticas_musicais AS
SELECT (SELECT COUNT(cancao) FROM cancoes) AS cancoes,
(SELECT COUNT(artista) FROM artistas) AS artistas,
COUNT(album) AS albuns FROM albuns;

SELECT * FROM estatisticas_musicais;
