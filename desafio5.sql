CREATE VIEW top_2_hits_do_momento AS 
SELECT c.musicas AS cancao,
COUNT(hr.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
JOIN SpotifyClone.historico_reproducao AS hr
ON c.musicas_id = hr.musicas_id
GROUP BY 1
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
