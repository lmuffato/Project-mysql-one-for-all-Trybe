SELECT u.usuario, c.cancao AS nome
FROM SpotifyClone.historico AS h
JOIN SpotifyClone.usuarios AS u
JOIN SpotifyClone.cancoes AS c
ON h.usuario_id = u.usuario_id AND h.cancao_id = c.cancao_id
ORDER BY 1,2;
