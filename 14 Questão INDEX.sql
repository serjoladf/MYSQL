

/*14. Indices e Incrementos
• Crie índices (Create Index) e utilize auto incremento (Auto Increment).*/

CREATE INDEX IDX_nome_Nasc ON usuarios (nome,data_nascimento); -- Este índices na tabela Usuarios para melhorar o desempenho das consultas 

SHOW INDEX FROM usuarios;

CREATE INDEX Idx_nome_descricao ON eventos (nome, descricao); -- Indice na tabela eventos 

SHOW INDEX FROM eventos;

