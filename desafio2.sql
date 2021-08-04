CREATE VIEW SpotifyClone.estatisticas_musicais AS
SELECT COUNT(song_id) AS `cancoes`,
(SELECT COUNT(artist_id) FROM SpotifyClone.artists) AS `artistas`,
(SELECT COUNT(album_id) FROM SpotifyClone.albums) AS `albuns`
FROM SpotifyClone.songs;
SELECT * FROM SpotifyClone.estatisticas_musicais;
