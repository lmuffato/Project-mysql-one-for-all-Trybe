CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT COUNT(cancao_nome) FROM SpotifyClone.Cancoes) AS "cancoes", 
(SELECT COUNT(artista_nome) FROM SpotifyClone.Artistas) AS "artistas",
(SELECT COUNT(album_nome) FROM SpotifyClone.Albuns) AS "albuns";
