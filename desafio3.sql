CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome_do_usuario usuario, s.cancao nome 
from SpotifyClone.historico_reproducoes f 
INNER JOIN SpotifyClone.usuarios u 
ON f.usuario_id = u.usuario_id 
INNER JOIN SpotifyClone.cancoes s 
ON f.cancao_id = s.cancao_id 
ORDER BY u.nome_do_usuario, s.cancao;   
 