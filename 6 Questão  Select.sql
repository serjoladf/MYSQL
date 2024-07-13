-- • Utilize MIN, MAX, COUNT, AVG, SUM em suas consultas:
-- • Exemplo: Encontre o usuário com o maior número de postagens.

-- 1 Este select Retorna Nome,email e a idade do mais novo da turma

SELECT 
    nome,
    email,
    TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) AS Idade
FROM 
    usuarios
WHERE -- Aqui filtrei com um subselect que pega todas as idades e compara com a menor idade.
    TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) = (SELECT MIN(TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE())) FROM usuarios);

-- 2 Este select Retorna Nome,email e a idade do mais novo da turma
SELECT 
    nome,
    email,
    TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) AS Idade
FROM 
    usuarios
WHERE -- Aqui filtrei com um subselect que pega todas as idades e compara com a maior idade e retorna as menores ou igual a maior.
    TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) <= (SELECT MAX(TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE())) FROM usuarios)
    ORDER BY Idade; -- Funçção para ordenar
    

-- Este Select retorna a Quantidades de Usúarios, a media e a soma das idades
SELECT 
	COUNT(TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE())) AS "Qtd_Usuarios",
    AVG(TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE())) AS "Media idades", -- média dAS idades de todos os usuários
    SUM(TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE())) AS "Soma das Idades" -- soma das idades de todos os usuários
    
FROM 
    usuarios;

