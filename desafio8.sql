-- SELECT * FROM SpotifyClone.Historico_reproduçoes;
-- SELECT * FROM SpotifyClone.Seguidores_Artista;
-- SELECT * FROM SpotifyClone.Usuario;

-- USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON SpotifyClone.Usuario
    FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.Historico_reproduçoes WHERE usuario_ID = OLD.usuario_ID;
    DELETE FROM SpotifyClone.Seguidores_Artista WHERE usuario_ID = OLD.usuario_ID;
END $$
DELIMITER ;

-- DELETE FROM SpotifyClone.Usuario AS USU WHERE USU.usuario_ID = 1;
