CREATE VIEW top_2_hits_do_momento AS
SELECT m.nome_musica AS 'cancao', COUNT(h.musica_id) AS 'reproducoes'
FROM SpotifyClone.historico_de_musicas AS h
INNER JOIN SpotifyClone.musicas AS m
ON m.id = h.musica_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
