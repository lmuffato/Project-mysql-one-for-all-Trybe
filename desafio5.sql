CREATE VIEW top_2_hits_do_momento AS
SELECT musica.cancao_nome AS cancao, COUNT(historico.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS musica
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON musica.cancao_id = historico.cancao_id
GROUP BY musica.cancao_id
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
