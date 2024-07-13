-- Criação da tabela de log, Esta tabela registra toda alteração na tabela Gupos
CREATE TABLE log_grupos (
  id int AUTO_INCREMENT PRIMARY KEY,
  operacao varchar(20) NULL,
  nome varchar(100) NOT NULL,
  descricao varchar(100) NULL,
  data_criacao varchar(200) NULL,
  data_modificacao timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  id_tabela int NULL
);

DELIMITER $$

-- Esta Trigger é para registrar atualizações
CREATE TRIGGER log_update_grupos
AFTER UPDATE ON grupos
FOR EACH ROW
BEGIN
    INSERT INTO log_grupos
    (operacao, nome, descricao, data_criacao, id_tabela)
    VALUES
    ("Antigo", OLD.nome, OLD.descricao, OLD.data_criacao, OLD.grupo_id);
    
    INSERT INTO log_grupos
    (operacao, nome, descricao, data_criacao, id_tabela)
    VALUES
    ("Atualização", NEW.nome, NEW.descricao, NEW.data_criacao, NEW.grupo_id);
END$$

-- Esta Trigger é para registrar inserções
CREATE TRIGGER log_insert_grupos
BEFORE INSERT ON grupos
FOR EACH ROW
BEGIN
    INSERT INTO log_grupos
    (operacao, nome, descricao, data_criacao, id_tabela)
    VALUES
    ("Insert", NEW.nome, NEW.descricao, NEW.data_criacao, NEW.grupo_id);
END$$

-- Esta Trigger é para registrar exclusões
CREATE TRIGGER log_delete_grupos
BEFORE DELETE ON grupos
FOR EACH ROW
BEGIN
    INSERT INTO log_grupos
    (operacao, nome, descricao, data_criacao, id_tabela)
    VALUES
    ("Delete", OLD.nome, OLD.descricao, OLD.data_criacao, OLD.grupo_id);
END$$

DELIMITER ;

-- teste log

INSERT INTO `grupos` (`nome`, `descricao`, `data_criacao`) VALUES
('Viagens e Bebidas', 'Grupo para organizar viagens', '2023-08-05');

DELETE FROM `grupos` WHERE `grupo_id` = 2;

UPDATE `grupos` SET `descricao` = 'Grupo para organizar partidas de futebol e Churrasco' WHERE `grupo_id` = 2;

SELECT * FROM redesocialdb.log_grupos; -- Tabela log