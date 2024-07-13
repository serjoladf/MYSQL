-- 4  Crie consultas utilizando SELECT, WHERE, AND, OR, NOT, ORDER BY, LIMIT:
--  Exemplo: Liste todas as "postagens de um determinado usuário" que contenham uma palavra específica.

-- Esta Consulta Retorna nome de Usúario, E-mail, Idade, data de Nascimento Postagem de data da postagem feita por determinado Usúario
SELECT 
    us.nome AS "Nome Usuário",
    us.email as "E-mail",
    TIMESTAMPDIFF(YEAR, us.data_nascimento, CURDATE()) AS Idade, -- Esta função para determinar a idade atual
    us.data_nascimento AS "Data Nascimento",
    p.conteudo AS Postagem,
    p.data_postagem 
FROM 
    usuarios AS us
INNER JOIN 
    postagens AS p ON us.usuario_id = p.usuario_id -- A Função INNER JOIN para mostrar a tabela USUARIO E POSTAGEM
WHERE
    (TIMESTAMPDIFF(YEAR, us.data_nascimento, CURDATE()) BETWEEN 20 AND 30)  -- ESTA FUNÇÃO FAZ COM QUE SÓ  LISTE USUÁRIOS QUE TENHA IDADE ENTRE 20 E 30 ANOS
    OR (TIMESTAMPDIFF(YEAR, us.data_nascimento, CURDATE()) > 35 AND p.conteudo IS NOT NULL) -- Aqui Filtrei a Consulta para mostrar só usúarios que fez postagem "WHERE" UTILIZANDO OR, AND NOT
ORDER BY 
    Idade ASC -- Esta função ordena em ordem crescent "ORDER BY"
LIMIT 15; -- Esta Função limita a quantidade de linhas a ser exibida "LIMIT"





