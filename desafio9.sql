USE SpotifyClone;
DELIMITER $$;

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(45))
BEGIN
  SELECT
    ar.artist AS artista,
    al.albumn AS `albumn`
  FROM SpotifyClone.albumns al
  INNER JOIN SpotifyClone.artists ar ON al.artist_id = ar.artist_id
  WHERE artist_name = ar.artist
  ORDER BY `albumn`;
END $$;

DELIMITER $$;
