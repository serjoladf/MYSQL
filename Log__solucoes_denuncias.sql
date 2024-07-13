SELECT * FROM redesocialdb.solucoes_denuncias;

-- Criação da tabela de log, Esta tabela registra toda alteração na tabela solucoes denuncias
CREATE TABLE log_solucoes_denuncias (
  id int AUTO_INCREMENT PRIMARY KEY,
  operacao varchar(20) NULL,
  status varchar(20),
  data_resolucao varchar(200) NULL,
  solucao_aplicada varchar(200),
  data_modificacao timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  id_tabela int NULL
);

DELIMITER $$

DELIMITER $$

CREATE TRIGGER log_update_solucoes_denuncias
AFTER UPDATE ON solucoes_denuncias
FOR EACH ROW
BEGIN
    INSERT INTO log_solucoes_denuncias
    (operacao, status, data_resolucao, solucao_aplicada, id_tabela)
    VALUES
    ('Antigo', OLD.status, OLD.data_resolucao, OLD.solucao_aplicada, OLD.solucao_id);
    
    INSERT INTO log_solucoes_denuncias
    (operacao, status, data_resolucao, solucao_aplicada, id_tabela)
    VALUES
    ('Atualização', NEW.status, NEW.data_resolucao, NEW.solucao_aplicada, NEW.solucao_id);
END$$

DELIMITER ;



DELIMITER $$

CREATE TRIGGER log_insert_solucoes_denuncias
AFTER INSERT ON solucoes_denuncias
FOR EACH ROW
BEGIN
    INSERT INTO log_solucoes_denuncias
    (operacao, status, data_resolucao, solucao_aplicada, id_tabela)
    VALUES
    ('Insert', NEW.status, NEW.data_resolucao, NEW.solucao_aplicada, NEW.solucao_id);
END$$

DELIMITER ;


DELIMITER $$

CREATE TRIGGER log_delete_solucoes_denuncias
AFTER DELETE ON solucoes_denuncias
FOR EACH ROW
BEGIN
    INSERT INTO log_solucoes_denuncias
    (operacao, status, data_resolucao, solucao_aplicada, id_tabela)
    VALUES
    ('Delete', OLD.status, OLD.data_resolucao, OLD.solucao_aplicada, OLD.solucao_id);
END$$

DELIMITER ;

-- Insert para Testar log

INSERT INTO `solucoes_denuncias` (`denuncia_id`, `moderador_id`, `status`, `data_resolucao`, `solucao_aplicada`) VALUES
(5, 2, 'Resolvido', '2023-05-01 14:00:00', 'Conta banida'),
(6, 3, 'Análise', '2023-06-01 15:00:00', 'Mensagem ofensiva removida');

DELETE FROM `solucoes_denuncias` WHERE `solucao_id` = 3;

UPDATE `solucoes_denuncias` SET `status` = 'Em progresso', `solucao_aplicada` = 'Ainda investigando o caso' WHERE `solucao_id` = 3;

SELECT * FROM redesocialdb.log_solucoes_denuncias;
