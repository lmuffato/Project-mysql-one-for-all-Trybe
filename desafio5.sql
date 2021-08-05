CREATE VIEW top_2_hits_do_momento AS
SELECT c.musica_nome AS 'cancao', COUNT(h.usuario_id) AS 'reproducoes'
FROM SpotifyClone.musicas AS c
INNER JOIN SpotifyClone.historicoReproducoes AS h
ON h.musica_id = c.musica_id
GROUP BY c.musica_nome
ORDER BY `reproducoes` DESC, `cancao` ASC 
LIMIT 2;
