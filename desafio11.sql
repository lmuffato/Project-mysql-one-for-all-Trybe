CREATE VIEW cancoes_premium AS
SELECT
    s.name AS nome,
    COUNT(h.user_id) AS reproducoes
FROM 
    SpotifyClone.song AS s
INNER JOIN
    SpotifyClone.history AS h
    ON s.song_id = h.song_id
INNER JOIN
    SpotifyClone.user AS u
    ON u.user_id = h.user_id
WHERE u.plan_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
