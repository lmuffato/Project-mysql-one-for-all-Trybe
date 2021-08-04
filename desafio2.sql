CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT COUNT(cancao_nome) FROM SpotifyClone.cancoes) AS "cancoes", 
(SELECT COUNT(artista_nome) FROM SpotifyClone.artistas) AS "artistas",
(SELECT COUNT(album_nome) FROM SpotifyClone.albuns) AS "albuns";
