DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN name_artists VARCHAR(60))
  BEGIN
    SELECT 
      a.name_artists AS `artista`,
      ab.name_album AS `album`
    FROM SpotifyClone.album AS ab
      INNER JOIN SpotifyClone.artists AS a ON a.artists_ID = ab.artists_ID
    WHERE a.name_artists = name_artists
    ORDER BY `album`;
  END $$
DELIMITER ;
