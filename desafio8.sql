DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON tabela
FOR EACH ROW
BEGIN
    -- o código SQL entra aqui
END $$

DELIMITER $$ ;
