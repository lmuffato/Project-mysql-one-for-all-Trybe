CREATE VIEW perfil_artistas AS
SELECT A.name AS artista,
AL.title AS album,
COUNT(AF.user_id) AS seguidores
FROM SpotifyClone.artists_following AS AF
INNER JOIN SpotifyClone.albums AS AL
ON AL.artist_id=AF.artist_id
INNER JOIN SpotifyClone.artists AS A
ON AF.artist_id=A.artist_id
GROUP BY AF.artist_id, album
ORDER BY seguidores DESC, artista, album;
