CREATE VIEW top_2_hits_do_momento AS
  SELECT
    canc.cancao AS cancao,
    COUNT(his.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS canc
INNER JOIN SpotifyClone.historico_reproducoes AS his
ON canc.cancao_id = his.cancao_id 
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2
;
