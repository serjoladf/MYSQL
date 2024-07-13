-- Criação da tabela de log Eventos para registrar todas alterações na Tabela Eventos 
CREATE TABLE log_eventos (
  id int AUTO_INCREMENT PRIMARY KEY,
  operacao varchar(20) NULL,
  nome varchar(100) NOT NULL,
  descricao varchar(100) NULL,
  data_evento varchar(200) NULL,
  local varchar(200) NULL,
  criador_id int,
  data_modificacao timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  id_tabela int NULL
);

DELIMITER $$

-- Esta Trigger registra atualizações
CREATE TRIGGER log_update_eventos
AFTER UPDATE ON eventos
FOR EACH ROW
BEGIN
    INSERT INTO log_eventos
    (operacao, nome, descricao, data_evento, local, criador_id, id_tabela)
    VALUES
    ("Antigo", OLD.nome, OLD.descricao, OLD.data_evento, OLD.local, OLD.criador_id, OLD.evento_id);
    
    INSERT INTO log_eventos
    (operacao, nome, descricao, data_evento, local, criador_id, id_tabela)
    VALUES
    ('Atualização', NEW.nome, NEW.descricao, NEW.data_evento, NEW.local, NEW.criador_id, NEW.evento_id);
END$$

-- Esta Trigger registra inserções
CREATE TRIGGER log_insert_eventos
BEFORE INSERT ON eventos
FOR EACH ROW
BEGIN
    INSERT INTO log_eventos
    (operacao, nome, descricao, data_evento, local, criador_id, id_tabela)
    VALUES
    ("Insert", NEW.nome, NEW.descricao, NEW.data_evento, NEW.local, NEW.criador_id, NEW.evento_id);
END$$

-- Esta Trigger é para registrar exclusões
CREATE TRIGGER log_delete_eventos
BEFORE DELETE ON eventos
FOR EACH ROW
BEGIN
    INSERT INTO log_eventos
    (operacao, nome, descricao, data_evento, local, criador_id, id_tabela)
    VALUES
    ("Delete", OLD.nome, OLD.descricao, OLD.data_evento, OLD.local, OLD.criador_id, OLD.evento_id);
END$$

DELIMITER ;

-- Teste log

INSERT INTO `eventos` (`nome`, `descricao`, `data_evento`, `local`, `criador_id`) VALUES
('Exposição Guarajuba', 'Mostra de obras de arte.', '2023-11-05', 'Galeria b', 6);

DELETE FROM `eventos` WHERE `evento_id` = 3;

UPDATE `eventos` SET `nome` = 'Feirão Internacional de Ciências', `descricao` = 'Exposição de projetos científicos de vários países.' WHERE `evento_id` = 3;

SELECT * FROM redesocialdb.log_eventos; -- Tabela de log
