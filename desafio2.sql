CREATE VIEW estatisticas_musicais AS (
SELECT
(SELECT COUNT(musica_id) FROM SpotifyClone.musicas) AS 'cancoes',
(SELECT COUNT(artista_id) FROM SpotifyClone.artista) AS 'artistas',
(SELECT COUNT(album_id) FROM SpotifyClone.album) AS 'albuns');
