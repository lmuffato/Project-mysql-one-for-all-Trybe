CREATE VIEW historico_reproducao_usuarios AS  SELECT
    u.Name AS 'usuario',
    s.Name AS 'nome' 
from
    SpotifyClone.user_history AS f 
INNER JOIN
    SpotifyClone.users AS u 
        ON f.UserId = u.id 
INNER JOIN
    SpotifyClone.songs as s 
    ON f.SongId = s.id 
ORDER BY
    u.name,
    s.name;
