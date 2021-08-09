CREATE VIEW top_3_artistas AS
    SELECT 
        art.nome_do_artista AS "artista", COUNT(*) AS "seguidores"
    FROM
        SpotifyClone.todos_os_artistas AS art
            INNER JOIN
        SpotifyClone.artistas_seguindo AS seg ON seg.artista_id = art.artista_id
    GROUP BY `artista`
    ORDER BY `seguidores` DESC , `artista`
    LIMIT 3;
