CREATE VIEW SpotifyClone.historico_reproducao_usuario AS
SELECT Usuario, Cancao
FROM SpotifyClone.Historico AS h
INNER JOIN SpotifyClone.Usuario AS u ON h.Usuario_id = u.Usuario_id
INNER JOIN SpotifyClone.Cancao AS c ON h.Cancao_id = c.Cancao_id
ORDER BY Usuario, Cancao;
