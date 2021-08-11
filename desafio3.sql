CREATE VIEW historico_reproducao_usuarios AS
SELECT 
    u.`name` AS `usuario`, s.`name` AS `nome`
FROM
    SpotifyClone.users AS u
        INNER JOIN
    SpotifyClone.historical_reproduction AS hr ON hr.user_id = u.user_id
        INNER JOIN
    SpotifyClone.songs AS s ON s.song_id = hr.song_id
ORDER BY `usuario` ASC , `nome` ASC;
