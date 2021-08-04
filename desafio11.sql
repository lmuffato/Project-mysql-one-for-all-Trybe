CREATE VIEW cancoes_premium AS (
  SELECT
    s.SONG_NAME AS `nome`,
    COUNT(sp.USER_ID) AS `reproducoes`
  FROM SpotifyClone.songs_played AS sp
  INNER JOIN SpotifyClone.song AS s ON s.SONG_ID = sp.song_id
  WHERE USER_ID IN (SELECT USER_ID FROM SpotifyClone.user AS u WHERE u.USER_ID IN (2, 3))
  GROUP BY sp.SONG_ID
  ORDER BY 1
);
