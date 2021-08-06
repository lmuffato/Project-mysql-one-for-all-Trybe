CREATE VIEW cancoes_premium AS (
  SELECT s.musica_nome, COUNT(ps.usuario_id) 'reproducoes'
  FROM SpotifyClone.historicoReproducoes ps
  INNER JOIN SpotifyClone.musicas s ON s.musica_id = ps.musica_id
  WHERE usuario_id IN (SELECT usuario_id FROM SpotifyClone.usuario u WHERE u.plano_id IN (2, 3))
  GROUP BY ps.musica_id
  ORDER BY 1
);
