CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica_titulo AS 'cancao',
COUNT(h.usuario_id) AS 'reproducoes'
FROM 
SpotifyClone.historico AS h
INNER JOIN
SpotifyClone.musicas AS m ON h.musica_id = m.musica_id
GROUP BY 1
ORDER BY 2 DESC, 1
LIMIT 2;
