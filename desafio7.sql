CREATE VIEW perfil_artistas AS
SELECT AR.artista_nome AS 'artista', AL.album_nome AS 'album', COUNT(SA.artista_id) AS 'seguidores'
FROM SpotifyClone.artista AR
INNER JOIN SpotifyClone.album AL
ON AR.artista_id = AL.artista_id
INNER JOIN SpotifyClone.seguindo_artistas SA
ON SA.artista_id = AR.artista_id
GROUP BY AL.album_nome
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
