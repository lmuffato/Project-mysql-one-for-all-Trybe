DROP VIEW IF EXISTS estatisticas_musicais;
CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(song) AS canções,
(SELECT COUNT(artista) FROM SpotifyClone.artista) AS artistas,
(SELECT COUNT(album) FROM SpotifyClone.Album) AS albuns
FROM SpotifyClone.songs;
SELECT * FROM estatisticas_musicais;
