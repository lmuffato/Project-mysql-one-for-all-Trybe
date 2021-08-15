SELECT
art.artista AS `artista`,
al.album AS `album`,
COUNT(se.artista_ID) AS `seguidores`
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS al
ON art.artista_ID = al.artista_ID
INNER JOIN SpotifyClone.seguindo AS se
ON art.artista_ID = se.artista_ID
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista` ASC, `album`;
 -- where se.artista_id = art.artista_id
 