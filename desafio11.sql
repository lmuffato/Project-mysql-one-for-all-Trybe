CREATE VIEW cancoes_premium AS 
SELECT s.song AS nome,
COUNT(h.song_id) AS reproducoes
from SpotifyClone.songs AS s
INNER JOIN SpotifyClone.historico AS h
ON s.song_id = h.song_id
WHERE h.user_id =2 OR h.user_id=3
GROUP BY `nome`
ORDER BY `nome`;
