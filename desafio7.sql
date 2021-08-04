CREATE VIEW perfil_artistas AS
SELECT 
a.ArtistName AS 'artista',
al.AlbumName AS 'album',
COUNT(fa.ArtistID) AS 'seguidores'
FROM SpotifyClone.Artists a
INNER JOIN SpotifyClone.Albums al
ON a.ArtistID = al.ArtistID
INNER JOIN SpotifyClone.FollowingArtists fa
ON fa.ArtistID = a.ArtistID
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;
