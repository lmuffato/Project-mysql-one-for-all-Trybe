CREATE VIEW perfil_artistas AS
SELECT artists.nome AS 'artista',
albums.nome AS 'album',
(SELECT COUNT(artist_id_fk) FROM SpotifyClone.followers WHERE artist_id_fk = artists.artist_id) AS 'seguidores'
FROM SpotifyClone.albums AS albums
JOIN SpotifyClone.artists AS artists ON albums.artist_id_fk = artists.artist_id
ORDER BY 3 DESC, 1, 2; 