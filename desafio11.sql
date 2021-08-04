CREATE VIEW cancoes_premium AS
  SELECT 
    S.song_name AS `nome`,
    COUNT(UH.song_id) AS `reproducoes`
  FROM SpotifyClone.User_history AS UH
  INNER JOIN SpotifyClone.Songs AS S
  ON S.song_id = UH.song_id
  WHERE EXISTS ( SELECT U.plan_id  
    FROM SpotifyClone.Users AS U 
    WHERE U.user_id = UH.user_id 
    AND (U.plan_id = 2 OR U.plan_id = 3))
  GROUP BY UH.song_id
  ORDER BY `nome` ASC;
