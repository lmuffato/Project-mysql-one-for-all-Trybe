CREATE VIEW historico_reproducao_usuarios AS
SELECT
    u.name AS usuario,
    s.name AS nome
FROM 
    SpotifyClone.history AS h
INNER JOIN
    SpotifyClone.user AS u
    ON h.user_id = u.user_id  
INNER JOIN
    SpotifyClone.song AS s
    ON h.song_id = s.song_id   
ORDER BY usuario, nome;
