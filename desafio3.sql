CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    us.nome AS usuario,
    canc.cancao AS nome
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico_reproducoes AS his
ON us.usuario_id = his.usuario_id
INNER JOIN SpotifyClone.cancoes AS canc
ON canc.cancao_id = his.cancao_id
ORDER BY usuario
;
