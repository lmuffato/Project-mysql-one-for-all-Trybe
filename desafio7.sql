CREATE VIEW perfil_artistas AS
SELECT sar.artista, sal.album, count(sar.artista) seguidores FROM SpotifyClone.Album sal
INNER JOIN SpotifyClone.Artist sar
ON sar.artista_id = sal.artista_id
INNER JOIN SpotifyClone.Followers sf
ON sf.artista_id = sal.artista_id
GROUP BY 1, 2
ORDER BY 3 DESC, 1 ASC, 2 ASC;
