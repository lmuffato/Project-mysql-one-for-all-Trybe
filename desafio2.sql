CREATE VIEW estatisticas_musicais AS
  SELECT
    COUNT(s.song_id) AS `cancoes`,
    COUNT(DISTINCT a.artist_id) AS `artistas`,
    COUNT(DISTINCT al.album_id) AS `albuns`
    FROM 
      SpotifyClone.artist a
    INNER JOIN
SpotifyClone.album al
    ON al.artist_id = a.artist_id
      INNER JOIN
    SpotifyClone.song s ON s.album_id = al.album_id;
