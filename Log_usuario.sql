-- Este log registra toda modificação feita na tabela usuarios
CREATE TABLE log_usuario (
  id int AUTO_INCREMENT PRIMARY KEY,
  operacao varchar(20) NULL,
  nome varchar(100) NULL,
  email varchar(100) NULL,
  senha varchar(50) NULL,
  endereco varchar(150) NULL,
  telefone varchar(50) NULL,
  data_nascimento varchar(200) NULL,
  bio text,
  data_modificacao timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
  id_tabela int NULL
);

DELIMITER $$

CREATE TRIGGER log_update_usuario
AFTER UPDATE ON usuarios
FOR EACH ROW
BEGIN
    INSERT INTO log_usuario
    (operacao, nome, email, senha, endereco, telefone, data_nascimento, bio, id_tabela)
    VALUES
    ('Antigo', OLD.nome, OLD.email, OLD.senha, OLD.endereco, OLD.telefone, OLD.data_nascimento, OLD.bio, OLD.usuario_id);
    
    INSERT INTO log_usuario
    (operacao, nome, email, senha, endereco, telefone, data_nascimento, bio, id_tabela)
    VALUES
    ('Atualização', NEW.nome, NEW.email, NEW.senha, NEW.endereco, NEW.telefone, NEW.data_nascimento, NEW.bio, NEW.usuario_id);
END$$

CREATE TRIGGER log_insert_usuario
BEFORE INSERT ON usuarios
FOR EACH ROW
BEGIN
    INSERT INTO log_usuario
    (operacao, nome, email, senha, endereco, telefone, data_nascimento, bio, id_tabela)
    VALUES
    ("Insert", NEW.nome, NEW.email, NEW.senha, NEW.endereco, NEW.telefone, NEW.data_nascimento, NEW.bio, NEW.usuario_id);
END$$

CREATE TRIGGER log_delete_usuario
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
    INSERT INTO log_usuario
	(operacao, nome, email, senha, endereco, telefone, data_nascimento, bio, id_tabela)
    VALUES
    ("Delete", OLD.nome, OLD.email, OLD.senha, OLD.endereco, OLD.telefone, OLD.data_nascimento, OLD.bio, OLD.usuario_id);
END$$

DELIMITER ;

-- teste log

INSERT INTO `usuarios` (`nome`, `email`, `senha`, `data_nascimento`, `endereco`, `telefone`, `bio`) VALUES
('Even', 'even@example.com', 'password5', '1995-05-30', 'Rua E, 202', '654987321', 'Amante da natureza.');

DELETE FROM `usuarios` WHERE `usuario_id` = 3;

UPDATE `usuarios` SET `telefone` = '998877665', `bio` = 'Aficionado por tecnologia e inovação.' WHERE `usuario_id` = 2;

SELECT * FROM redesocialdb.log_usuario; -- tabela log


