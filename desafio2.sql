CREATE VIEW estatisticas_musicais AS (
SELECT
(SELECT COUNT(song_name) from SpotifyClone.songs) AS 'cancoes',
(SELECT COUNT(artist_name) from SpotifyClone.artists) AS 'artistas',
(SELECT COUNT(album_name) from SpotifyClone.albums) AS 'albuns'
);

