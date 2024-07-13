-- 7. Utilização de LIKE, Wildcards, IN, BETWEEN
-- • Exemplo: Encontre amigos cujos nomes começam com uma determinada letra.

-- 1 Este select Retorna a Função do Usuário no grupo, Nome, a idade, Postagem e data da Postagem.

SELECT 
	mg.papel AS "Função no Grupo",
    us.nome AS "Nome Usuário",
    TIMESTAMPDIFF(YEAR, us.data_nascimento, CURDATE()) AS Idade, -- Esta função para determinar a idade atual
    p.conteudo AS "Postagem",
    p.data_postagem 
FROM 
    usuarios AS us
INNER JOIN 
    postagens AS p ON us.usuario_id = p.usuario_id -- A Função INNER JOIN para mostrar a tabela USUARIO E POSTAGEM
INNER JOIN 
    membros_grupos AS mg on mg.usuario_id = us.usuario_id
WHERE
	(TIMESTAMPDIFF(YEAR, us.data_nascimento, CURDATE()) BETWEEN 18 AND 50) AND -- Between retorna somente as idades entre 18 e 50 anos
    (TIMESTAMPDIFF(YEAR, us.data_nascimento, CURDATE()) IN(25,30,35,37))  AND  -- O IN é para retornar somente as idades que esta listada
    us.nome like "%a%e%" -- Filtro -- like é para retornar nomes de usúario que contenha a Letra A e E dentro do nome nesta sequencia.


