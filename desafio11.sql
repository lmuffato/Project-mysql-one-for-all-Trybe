CREATE VIEW cancoes_premium AS
  SELECT
    m.name_music AS `nome`,
    COUNT(hm.user_ID) AS `reproducoes`
  FROM SpotifyClone.history_musics AS hm
    INNER JOIN SpotifyClone.musics AS m ON hm.music_ID = m.music_ID
    INNER JOIN SpotifyClone.user AS u ON hm.user_ID = u.user_ID
    AND u.plan_ID IN(2, 3)
  GROUP BY `nome`
  ORDER BY `nome`;
