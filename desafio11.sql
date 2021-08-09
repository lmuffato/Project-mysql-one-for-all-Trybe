CREATE VIEW cancoes_premium AS
  SELECT
    canc.cancao AS `nome`,
    COUNT(his.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS canc
INNER JOIN SpotifyClone.historico_reproducoes AS his
ON canc.cancao_id = his.cancao_id
INNER JOIN SpotifyClone.usuario AS us
ON us.usuario_id = his.usuario_id
WHERE us.plano_id > 1
GROUP BY canc.cancao
ORDER BY reproducoes DESC, canc.cancao
;
