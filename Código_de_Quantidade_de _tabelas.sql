
-- Esse Código retorna o total de quantidade de tabelas da Database
SELECT COUNT(*) Quantidade
FROM information_schema.tables
WHERE table_schema = 'redesocialdb';

