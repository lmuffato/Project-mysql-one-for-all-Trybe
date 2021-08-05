CREATE VIEW perfil_artistas AS
SELECT 
A.artista AS artista,
AL.album AS album,
SUB.QS AS seguidores
FROM
(SELECT artista_id, COUNT(artista_id) AS QS
FROM SpotifyClone.seguidores
GROUP BY artista_id) AS SUB
INNER JOIN SpotifyClone.albuns AS AL
ON SUB.artista_id = AL.artista_id
INNER JOIN SpotifyClone.artistas AS A
ON SUB.artista_id = A.artista_id
ORDER BY 3 DESC, 1, 2;
