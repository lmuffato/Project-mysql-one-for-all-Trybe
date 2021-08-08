CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
  SELECT
    user_name AS `usuario`,
    m.music_name AS `nome`
  FROM  SpotifyClone.USERS AS u
  INNER JOIN SpotifyClone.PLAYBACK_HISTORY AS ph
  ON u.user_id = ph.user_id
  INNER JOIN SpotifyClone.MUSIC AS m
  ON ph.music_id = m.music_id
  ORDER BY `usuario` ASC, `nome` ASC;
  
