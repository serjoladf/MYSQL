/* Gerenciamento do Banco de Dados
• Crie comandos para Create DB, Drop DB, Create Table, Drop Table, Alter Table.*/
-- DDL 

CREATE DATABASE teste; -- Cria a a Database

USE teste; -- seleciona o banco dados Teste para uso. 

-- Cria uma tabela teste
CREATE TABLE tabelateste (
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(20),
    descricao varchar(50)
);

INSERT INTO tabelateste (nome, descricao) VALUES
('Registro teste1', 'Descrição do registro teste1'),
('Registro teste2', 'Descrição do registro teste2');

TRUNCATE TABLE tabelateste; -- Exclui todo o Registro da Tabela

--  altera o nome da coluna "nome" para "NOME_USUARIO" e manterá o mesmo tipo de dados.
ALTER TABLE tabelateste CHANGE nome new_nome varchar(255); -- 

ALTER TABLE tabelaTeste RENAME TO tabelatestando; -- Altera o nome da tabela

DROP TABLE tabelatestando; -- Exlui a tabela tabelateste

DROP DATABASE teste; -- Exclui a Database teste






