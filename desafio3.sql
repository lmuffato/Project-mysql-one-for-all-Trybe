CREATE VIEW historico_reproducao_usuarios AS SELECT
u.nome_do_usuario AS usuario,
s.cancao AS nome 
from
SpotifyClone.historico_reproducoes AS f 
INNER JOIN
SpotifyClone.usuarios AS u 
ON f.usuario_id = u.usuario_id 
INNER JOIN
SpotifyClone.cancoes AS s 
ON f.cancao_id = s.cancao_id 
ORDER BY
u.nome_do_usuario,
s.cancao;
