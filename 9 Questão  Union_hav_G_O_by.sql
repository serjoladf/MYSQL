/*9. UNION e Agrupamento
• Crie consultas utilizando UNION, GROUP BY, HAVING:
• Exemplo: Liste a quantidade de postagens por tag.
*/

-- Esta consulta retorna o nome do criador de eventos e a quantidades de enventos criado por ele
SELECT 
	us_e.nome AS "Criador do Evento",
	count(e.criador_id) AS "Qt eventos P/ Criador" -- Uso do Count para contagem
FROM 
	usuarios AS us 
INNER JOIN
	eventos_usuarios_convites AS euc ON euc.convidado_id = us.usuario_id
INNER JOIN
	eventos AS e ON e.criador_id = euc.evento_id
INNER JOIN 
	usuarios AS us_e on us_e.usuario_id = e.criador_id
GROUP BY(e.criador_id) -- Agrupa qt de eventos por Criador
HAVING  count(e.criador_id) >= 8 -- Função HAVING filtrando qt_eventos maior ou igua a 8
ORDER BY count(e.criador_id); -- Função de ordenação


-- Esta consulta retorna a uniao de dois conteudos de tabela diferentes

SELECT 
	notificacao_id,conteudo
FROM 
	notificacoes
UNION
SELECT 
	notificacao_id,conteudo
FROM 
	notificacoes_usuarios;

