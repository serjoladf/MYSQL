-- 10. Subconsultas e Operadores
-- • Utilize EXISTS, ANY, ALL:
-- • Exemplo: Liste os grupos que não têm membros.

-- Esta consulta retorna todos os Usuários que contém Ana no nome usando Any
SELECT *
FROM usuarios
WHERE nome = ANY
(SELECT nome
 FROM usuarios
 WHERE  nome  like "%Ana%");
 
 -- Esta consulta retorna as colunas da tabela notificacoes onde o notificacao_id é igual ao resultado da 
 -- subconsulta se existe algum notificacao_id na tabela notificacoes_usuarios
 
SELECT 
	*
FROM 
	notificacoes
WHERE 
	notificacao_id = EXISTS ( -- Operador EXISTS para fazer a comparação
		SELECT 
			*
		FROM 
			notificacoes_usuarios
	);
    
    
    SELECT 
    us.nome AS "Nome Usuário",
    us.email AS "E-mail",
    TIMESTAMPDIFF(YEAR, us.data_nascimento, CURDATE()) AS Idade, -- Esta função para determinar a idade atual
    us.data_nascimento AS "Data Nascimento"
FROM 
    usuarios AS us
WHERE
    TIMESTAMPDIFF(YEAR, us.data_nascimento, CURDATE()) = ALL ( -- Operador ALL para fazer a comparação
        SELECT 
            TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) 
        FROM 
            usuarios 
        WHERE 
            TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) = 35
    );


