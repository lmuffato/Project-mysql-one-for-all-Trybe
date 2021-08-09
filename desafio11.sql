CREATE VIEW cancoes_premium AS
SELECT S.title AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.listening_history AS LH
INNER JOIN SpotifyClone.songs AS S
ON LH.song_id=S.song_id
INNER JOIN SpotifyClone.users AS U
ON LH.user_id=U.user_id
AND U.user_id IN (
SELECT user_id
FROM SpotifyClone.users
WHERE plan_id<>1
)
GROUP BY LH.song_id
ORDER BY nome;
