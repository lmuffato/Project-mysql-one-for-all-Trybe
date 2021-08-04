DELIMITER $$;

CREATE FUNCTION quantidade_musicas_no_historico(Usuario_ID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT  COUNT(hr.Musica_ID) FROM spotifyclone.usuarios AS u
INNER JOIN spotifyclone.historico_reproducao AS hr
ON hr.Usuario_ID = u.Usuario_ID
WHERE u.Usuario_ID = Usuario_ID
INTO quantity
GROUP BY u.nome;
END $$
DELIMITER ;
