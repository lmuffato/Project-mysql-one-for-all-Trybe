CREATE VIEW historico_reproducao_usuarios AS 
SELECT 
    U.usuario AS usuario,
    C.cancao AS nome
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historico_reproducao AS HR
ON U.usuario_id = HR.usuario_id
INNER JOIN SpotifyClone.cancoes AS C
ON HR.cancao_id = C.cancao_id
ORDER BY usuario, nome;
