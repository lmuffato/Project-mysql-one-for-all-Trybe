CREATE VIEW top_2_hits_do_momento AS
SELECT c.nome_cancao AS cancao, COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.Cancoes AS c
INNER JOIN SpotifyClone.Historico_de_reproducoes AS h
ON h.cancao_id = c.cancao_id
GROUP BY c.nome_cancao
ORDER BY `reproducoes` DESC, `cancao` ASC 
LIMIT 2;
