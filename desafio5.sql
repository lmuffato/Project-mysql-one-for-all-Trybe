CREATE VIEW top_2_hits_do_momento AS
SELECT m.nome AS cancao, COUNT(hr.Musica_ID) AS reproducoes
FROM SpotifyClone.Musicas AS m
INNER JOIN SpotifyClone.historico_reproducao AS hr
ON m.Musica_ID = hr.Musica_ID
GROUP BY cancao
ORDER BY reproducoes DESC, cancao 
LIMIT 2;
