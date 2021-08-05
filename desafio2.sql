CREATE VIEW SpotifyClone.estatisticas_musicais AS
SELECT
(SELECT COUNT(songName) FROM SpotifyClone.songs) `cancoes`,
(SELECT COUNT(artistName) FROM SpotifyClone.artists) `artistas`,
(SELECT COUNT(albumName) FROM SpotifyClone.albums) `albuns`;
