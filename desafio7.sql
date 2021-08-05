CREATE VIEW SpotifyClone.perfil_artistas AS 
SELECT a.artistName `artista`,
al.albumName `album`,
COUNT(f.userID) `seguidores`
FROM SpotifyClone.artists a
INNER JOIN SpotifyClone.albums al
ON a.artistID = al.artistID
INNER JOIN SpotifyClone.followingArtist f
ON a.artistID = f.artistID
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
