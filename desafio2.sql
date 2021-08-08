DROP VIEW IF EXISTS estatisticas_musicais;
CREATE VIEW estatisticas_musicais AS
SELECT COUNT(song) AS cancoes,
(SELECT COUNT(artista) FROM SpotifyClone.artista) AS artistas,
(SELECT COUNT(album_name) FROM SpotifyClone.album) AS albuns
FROM SpotifyClone.songs;
SELECT * FROM estatisticas_musicais;


