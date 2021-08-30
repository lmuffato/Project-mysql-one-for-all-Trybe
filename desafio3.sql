CREATE VIEW `historico_reproducao_usuarios` AS
SELECT u.user_name AS `usuario`, s.song_name AS `nome`
FROM SpotifyClone.played as p
INNER JOIN SpotifyClone.users as u
ON p.user_id = u.user_id
INNER JOIN SpotifyClone.songs as s
ON p.song_id = s.song_id
ORDER BY `usuario` ASC, `nome` ASC;
