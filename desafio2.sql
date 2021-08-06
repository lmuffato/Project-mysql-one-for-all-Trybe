CREATE VIEW estatisticas_musicais AS
  SELECT
    (SELECT COUNT(music_id) FROM SpotifyClone.music) AS cancoes,
    (SELECT COUNT(artist_id) FROM SpotifyClone.artist) AS artistas,
    COUNT(album_id) AS albuns
  FROM SpotifyClone.album;
