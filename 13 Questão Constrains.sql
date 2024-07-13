/*13. Constrains
• Utilize Not Null, Unique, Primary Key, Foreign Key, Check, Default.*/

-- Este código que foi rodado com as principais funções abaixo explicado

CREATE TABLE `usuarios` (
  `usuario_id` int NOT NULL AUTO_INCREMENT, 
  `nome` varchar(100) DEFAULT 'Zezinho', --   No código principal foi incluido o DEFAULT na ausência do nome Add Zezinho
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL, -- Garante que a coluna não pode conter valores NULL.
  `data_nascimento` date DEFAULT NULL, 
  `endereco` varchar(255) DEFAULT NULL, 
  `telefone` varchar(20) DEFAULT NULL,
  `bio` text,
  CONSTRAINT CHK_usuarioAno CHECK (YEAR(data_nascimento) <= 2008), -- Esta função não aceita a inclusão de Ususarios que nasceram em acima de 2008
  PRIMARY KEY (`usuario_id`),
  UNIQUE KEY `email` (`email`) -- Esta função garante que o email é único
);
-- Exemplo de Insert que Não Roda, atende a restrição de check
INSERT INTO usuarios(email, senha, data_nascimento, endereco, telefone, bio) VALUES
('Zezinhojoao@example.com', 'senha123', '2025-05-15', 'Rua das Flores, 123', '(11) 98765-4321', 'Olá, eu sou o João!');

Select * from usuarios Where nome = "Zezinho"; -- teste

-- Exemplo de Insert que Roda
INSERT INTO usuarios(email, senha, data_nascimento, endereco, telefone, bio) VALUES
('Zezinhojoao@example.com', 'senha123', '2007-05-15', 'Rua das Flores, 123', '(11) 98765-4321', 'Olá, eu sou o João!');

Select * from usuarios Where nome = "Zezinho"; -- teste pós insert


-- Exemplo de FOREIGN KEY abaixo

CREATE TABLE `eventos` (
  `evento_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `descricao` text,
  `data_evento` date NOT NULL,
  `local` varchar(200) DEFAULT NULL,
  `criador_id` int DEFAULT NULL,
  PRIMARY KEY (`evento_id`),
  KEY `criador_id` (`criador_id`),
  CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`criador_id`) REFERENCES `usuarios` (`usuario_id`) -- Exempo de FOREIGN  KEY
);



