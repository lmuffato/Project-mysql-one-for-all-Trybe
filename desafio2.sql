CREATE VIEW estatisticas_musicais AS
SELECT COUNT(*) AS musicas,
(SELECT COUNT(*) FROM SpotifyClone.artistas) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.albums) AS albums
FROM SpotifyClone.musicas;
