DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nameSearch VARCHAR(255))
BEGIN
    SELECT
        a.name artista,
        al.album album
    FROM 
        artists a
    INNER JOIN 
        albums al USING (artist_id)
    WHERE 
        a.name LIKE CONCAT("%",nameSearch,"%")
    ORDER BY 
        2;
END
$$ DELIMITER ;
