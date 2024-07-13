-- Criação da tabela de log, Esta tabela registra toda alteração na tabela Mensagens
CREATE TABLE log_mensagens (
  id int AUTO_INCREMENT PRIMARY KEY,
  operacao varchar(20) NULL,
  remetente_id int,
  destinatario_id int,
  conteudo varchar(100) NULL,
  data_mensagem varchar(200) NULL,
  data_modificacao timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  id_tabela int NULL
);

DELIMITER $$
-- Esta Trigger registra atualizações
CREATE TRIGGER log_update_mensagens
AFTER UPDATE ON mensagens
FOR EACH ROW
BEGIN
    INSERT INTO log_mensagens
    (operacao, remetente_id, destinatario_id, conteudo, data_mensagem, id_tabela)
    VALUES
    ("Antigo", OLD.remetente_id, OLD.destinatario_id, OLD.conteudo, OLD.data_mensagem, OLD.mensagem_id);
    
    INSERT INTO log_mensagens
    (operacao, remetente_id, destinatario_id, conteudo, data_mensagem, id_tabela)
    VALUES
    ("Atualização", NEW.remetente_id, NEW.destinatario_id, NEW.conteudo, NEW.data_mensagem, NEW.mensagem_id);
END$$

DELIMITER ;

DELIMITER $$
-- Esta Trigger é para registrar inserções
CREATE TRIGGER log_insert_mensagens
BEFORE INSERT ON mensagens
FOR EACH ROW
BEGIN
    INSERT INTO log_mensagens
    (operacao, remetente_id, destinatario_id, conteudo, data_mensagem, id_tabela)
    VALUES
    ("Insert", NEW.remetente_id, NEW.destinatario_id, NEW.conteudo, NEW.data_mensagem, NEW.mensagem_id);
END$$

DELIMITER ;

DELIMITER $$
-- Esta Trigger é para registrar exclusões
CREATE TRIGGER log_delete_mensagens
BEFORE DELETE ON mensagens
FOR EACH ROW
BEGIN
    INSERT INTO log_mensagens
    (operacao, remetente_id, destinatario_id, conteudo, data_mensagem, id_tabela)
    VALUES
    ("Delete", OLD.remetente_id, OLD.destinatario_id, OLD.conteudo, OLD.data_mensagem, OLD.mensagem_id);
END$$

DELIMITER ;

-- Teste log

INSERT INTO `mensagens` (`remetente_id`, `destinatario_id`, `conteudo`, `data_mensagem`) VALUES
(5, 1, 'Muito obrigado!', '2023-03-20 11:10:00');

DELETE FROM `mensagens` WHERE `mensagem_id` = 1;

UPDATE `mensagens` SET `conteudo` = 'Vamos nos encontrar amanhã às 10h?', `data_mensagem` = '2023-02-15 10:02:00' WHERE `mensagem_id` = 3;

SELECT * FROM redesocialdb.log_mensagens; -- Tabela log