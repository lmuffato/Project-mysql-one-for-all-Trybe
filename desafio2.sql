CREATE VIEW estatisticas_musicais AS (
SELECT
(SELECT COUNT(song_name) from SpotifyClone.songs) AS 'cancoes',
(SELECT COUNT(artist_name) from SpotifyClone.artist) AS 'artistas',
(SELECT COUNT(album_name) from SpotifyClone.album) AS 'albuns'
);
