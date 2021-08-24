/* Desafio 8 - Crie uma trigger chamada trigger_usuario_delete que deve
ser disparada sempre que uma pessoa usuária for excluída do banco de
dados, refletindo essa exclusão em todas as tabelas que ela estiver.

este a funcionalidade correta de sua trigger, fazendo a exclusão
da usuária "Thati".*/
-- USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON users
    FOR EACH ROW
BEGIN
    DELETE FROM following WHERE user_id = OLD.user_id,
    DELETE FROM historic WHERE user_id = OLD.user_id
END $$
DELIMITER;

/* Teste do trigger */
-- SET SQL_SAFE_UPDATES = 0;
-- DELETE FROM users WHERE user_name = "Thati";
-- SELECT * FROM users;
-- SELECT * FROM historic;
