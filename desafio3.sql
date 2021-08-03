CREATE VIEW historico_reproducao_usuarios AS
  SELECT 
    U.user_name AS `usuario`,
    S.song_name AS `nome`
  FROM SpotifyClone.User_history AS UH
  INNER JOIN SpotifyClone.Songs AS S
  INNER JOIN SpotifyClone.Users AS U
  ON UH.user_id = U.user_id AND UH.song_id = S.song_id
  ORDER BY `usuario` ASC, `nome` ASC;
