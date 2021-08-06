DROP VIEW IF EXISTS cancoes_premium;

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
INNER JOIN
    SpotifyClone.plan AS p
    ON p.plan_id = u.plan_id
WHERE p.name IN ('familiar', 'universitário')
GROUP BY nome
ORDER BY nome;
