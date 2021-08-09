CREATE VIEW cancoes_premium AS
SELECT
  c.cancao_title AS nome,
  COUNT(*) AS reproducoes
FROM
  SpotifyClone.historico_de_reproducoes h
  INNER JOIN SpotifyClone.cancoes c ON c.cancao_id = h.cancao_id
WHERE
  usuario_id IN (
    SELECT
      u.usuario_id
    FROM
      SpotifyClone.usuarios u
    WHERE
      u.plano_id IN (
        SELECT
          p.plano_id
        FROM
          SpotifyClone.planos p
        WHERE
          p.plano = 'familiar'
          OR p.plano = 'universitário'
      )
  )
GROUP BY
  c.cancao_title
ORDER BY
  nome;
