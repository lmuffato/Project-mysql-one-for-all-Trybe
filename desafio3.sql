CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT
      users.usuario AS `usuario`, music.musica AS `nome`
FROM
SpotifyClone.reproducoes AS reproduce 
INNER JOIN SpotifyClone.usuarios AS users ON reproduce.usuario_id = users.usuario_id
INNER JOIN SpotifyClone.musicas AS music ON reproduce.musica_id = music.musica_id
ORDER BY `usuario`, `nome`;
