-- 8. Aliases e Joins
-- • Crie consultas utilizando INNER JOIN, LEFT JOIN, RIGHT JOIN, CROSS JOIN, Self Join:
-- • Exemplo: Liste todas as mensagens juntamente com o nome do remetente e do destinatário.

-- INNER - Essa Consulta retornar todas as mensagens juntamente com o nome do remetente e do destinatário, mensagem e Data e hora que foi enviada.

SELECT 
    us_rem.nome AS "Remetente",
    us_dest.nome AS "Destinatário",
    m.Conteudo AS "Mensagem",
    m.data_mensagem AS "Data da Mensagem"
FROM 
    mensagens AS m
INNER JOIN 
    usuarios AS us_rem ON m.remetente_id = us_rem.usuario_id
INNER JOIN 
    usuarios AS us_dest ON m.destinatario_id = us_dest.usuario_id;

-- LEFT -  Esta consulta retorna usuarios que fazem parte de algum grupo e quem não faz parte de nenhum, e a função no grupo
-- nome do grupo, Descrição do Grupo e Data da Criação do Grupo; 
SELECT 
	mg.papel AS "Função no Grupo",
    us.nome AS "Nome Usuário",
    g.nome AS "Nome do Grupo",
    g.descricao "Descrição do Grupo",
    g.data_criacao "Data da Criação"
FROM 
    usuarios AS us
LEFT JOIN 
    membros_grupos AS mg on mg.usuario_id = us.usuario_id
LEFT JOIN 
	grupos as g on mg.grupo_id = g.grupo_id;

-- RIGHT - Esta consulta retorna Grupos que tem usuarios e os que não tem, e a função no grupo
-- nome do grupo, Descrição do Grupo e Data da Criação do Grupo; 
SELECT 
	mg.papel AS "Função no Grupo",
    us.nome AS "Nome Usuário",
    g.nome AS "Nome do Grupo",
    g.descricao "Descrição do Grupo",
    g.data_criacao "Data da Criação"
FROM 
    usuarios AS us
RIGHT JOIN 
    membros_grupos AS mg on mg.usuario_id = us.usuario_id
RIGHT JOIN 
	grupos as g on mg.grupo_id = g.grupo_id;

-- CROSS -  Esta consulta retorna administradores dos grupos com filtro Where
-- nome do grupo, Descrição do Grupo e Data da Criação do Grupo; 
SELECT 
	mg.papel AS "Função no Grupo",
    us.nome AS "Nome Usuário",
    g.nome AS "Nome do Grupo",
    g.descricao "Descrição do Grupo",
    g.data_criacao "Data da Criação"
FROM 
    usuarios AS us
CROSS JOIN 
    membros_grupos AS mg on mg.usuario_id = us.usuario_id
CROSS JOIN 
	grupos as g on mg.grupo_id = g.grupo_id
WHERE mg.papel = "Admin";



