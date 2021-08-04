DELIMITER $$

  CREATE PROCEDURE `SpotifyClone`.albuns_do_artista (IN `artist_name` VARCHAR(50))

  BEGIN
    SELECT
      `artists`.name AS `artista`,
      `albums`.title AS `album`
    FROM
      `SpotifyClone`.artists AS `artists`
      INNER JOIN `SpotifyClone`.albums AS `albums` ON `albums`.artist_id = `artists`.artist_id
    WHERE
      `artists`.name = `artist_name`
    ORDER BY
      `album` ASC;
  END $$

DELIMITER ;
