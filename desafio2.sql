CREATE VIEW estatisticas_musicais AS
 SELECT
  COUNT(DISTINCT songs.songs_id) AS cancoes,
  COUNT(DISTINCT stars.stars_id) AS artistas,
  COUNT(DISTINCT album.album_id) AS albuns
	FROM 
		SpotifyClone.songs AS songs,
        SpotifyClone.stars AS stars,
        SpotifyClone.album AS album;
        