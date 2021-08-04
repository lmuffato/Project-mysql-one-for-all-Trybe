  CREATE VIEW perfil_artistas AS
    SELECT
      a.artista_name AS 'artista',
      ab.album_name AS 'album',
      COUNT(s.artista_id) AS 'seguidores'
    FROM
      SpotifyClone.artista a
    INNER JOIN
      SpotifyClone.album ab ON a.artista_id = ab.artista_id
    INNER JOIN
      SpotifyClone.seguindo s ON ab.artista_id = s.artista_id
    GROUP BY 2
    ORDER BY 3 DESC, 1, 2;
