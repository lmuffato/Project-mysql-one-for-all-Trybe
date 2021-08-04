CREATE VIEW cancoes_premium AS
  SELECT 
    S.song_name AS `nome`,
    COUNT(UH.song_id) AS `reproducoes`
  FROM SpotifyClone.User_history AS UH
  INNER JOIN SpotifyClone.Songs AS S
  ON S.song_id = UH.song_id
  GROUP BY UH.song_id
  ORDER BY `nome` ASC;
