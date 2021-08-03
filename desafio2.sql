CREATE VIEW estatisticas_musicais (`cancoes`, `artistas`, `albuns`) AS
SELECT
  COUNT(music_name),
  (
    SELECT
      COUNT(artist_id)
    FROM
      SpotifyClone.artists
  ),
  (
    SELECT
      COUNT(album_id)
    FROM
      SpotifyClone.albuns
  )
FROM
  SpotifyClone.musics;
