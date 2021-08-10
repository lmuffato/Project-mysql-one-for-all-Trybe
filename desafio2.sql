CREATE VIEW estatisticas_musicais AS
SELECT (SELECT COUNT(cancao) FROM SpotifyClone.cancoes) AS cancoes,
(SELECT COUNT(artista) FROM SpotifyClone.artistas) AS artistas,
COUNT(album) AS albuns FROM SpotifyClone.albuns;
