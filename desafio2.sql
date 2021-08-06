CREATE VIEW estatisticas_musicais AS (
  SELECT
    COUNT(s.song_id) AS `cancoes`,
    COUNT(DISTINCT(a.artist_id)) AS `artistas`,
    COUNT(DISTINCT(al.album_id)) AS `albuns`
    FROM 
      SpotifyClone.song s
    INNER JOIN 
      SpotifyClone.album al ON s.album_id = al.album_id
    INNER JOIN
      SpotifyClone.artist a ON al.album_id = a.artist_id
);
