-- DESAFIO 10: Crie uma function chamada de quantidade_musicas_no_historico que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária. Ao receber o código identificador da pessoa, exiba a quantidade de canções em seu histórico de reprodução.

DROP FUNCTION IF EXISTS quantidade_musicas_no_historico;

USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (id_pessoa int)
RETURNS INT READS SQL DATA

  BEGIN
    DECLARE qtd_seguidores INT;
    SELECT COUNT(*)
    FROM SpotifyClone.REPRODUCAO R
    INNER JOIN SpotifyClone.USUARIO U
    ON U.usuario_id = R.usuario_id
    INNER JOIN SpotifyClone.CANCAO C
    ON C.cancao_id = R.cancao_id
    WHERE U.usuario_id = id_pessoa INTO qtd_seguidores;
    RETURN qtd_seguidores;
  END$$

DELIMITER ;
