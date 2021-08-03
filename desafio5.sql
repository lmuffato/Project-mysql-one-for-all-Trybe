CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica, COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.historico_reproducao AS h
JOIN SpotifyClone.musicas AS m
ON h.musica_id = m.musica_id
GROUP BY h.musica_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
