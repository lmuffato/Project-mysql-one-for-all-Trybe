CREATE VIEW estatisticas_musicais AS
  SELECT
    COUNT(songs.song_name) AS cancoes, 
    COUNT(artists.artist_name) AS artistas,
    COUNT(albuns.album_name) AS albuns
  FROM 
    SpotifyClone.artists AS artists
      INNER JOIN
    SpotifyClone.albuns AS albuns ON artists.artist_id = albuns.artist_id
      INNER JOIN
    SpotifyClone.songs AS songs ON songs.album_id = albuns.album_id;
