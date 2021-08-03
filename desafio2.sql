CREATE VIEW estatisticas_musicais AS (
  SELECT
    COUNT(s.SONG_ID) AS `cancoes`,
    COUNT(DISTINCT(a.ARTIST_ID)) AS `artistas`,
    COUNT(DISTINCT(al.ALBUM_ID)) AS `albuns`
    FROM SpotifyClone.song AS s
    INNER JOIN SpotifyClone.album AS al ON s.ALBUM_ID = al.ALBUM_ID
    INNER JOIN SpotifyClone.artist AS a ON al.ARTIST_ID = a.ARTIST_ID
);
