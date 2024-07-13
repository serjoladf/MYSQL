/*11. Inserção e Seleção Avançada
• Crie comandos utilizando INSERT SELECT, CASE, funções nulas (IFNULL, COALESCE), e comentários:
• Exemplo: Insira registros em uma tabela de resumo de denúncias.
*/

-- Este Insert adiciona mais dois usuários na tabela
INSERT INTO usuarios (nome, email, senha, data_nascimento, endereco, telefone, bio) VALUES
('Marcelo João Silva', 'mjoao.silva@example.com', '298723df', '1985-06-15', 'Rua das Flores, 123, São Paulo', '81987654321', 'Entusiasta de tecnologia e música.'),
('Maria Santos Oliveira', 'marias.oliveira@example.com', '34fdba45', '1990-09-20', 'Avenida Paulista, 456, São Paulo', '13987654322', 'Amante de viagens e gastronomia.');

-- Este consulta com filtro retorna os dois usuarios que foi Adicionados no código anterio
SELECT * FROM usuarios Where nome like "Marcelo João%" or nome like "Maria%Santos%Oliveira%" ;


-- Este consulta com case retorna Três usuarios com um atualização da bio, não altera a original.
SELECT 
    usuario_id,
    nome,
    email,
    CASE
        WHEN usuario_id = 1 THEN 'A vida é a arte do encontro VM'
        WHEN usuario_id = 2 THEN 'A terra não parou para eu descer'
        WHEN usuario_id = 3 THEN 'O que Deus faz nem um homem no mundo pode desfazer'
        ELSE bio
    END AS bio
FROM 
    usuarios;
 
 -- Esta consulta seleciona o nome do evento (nome) e, 
 -- se o criador_id, local ou descricao forem nulos, substitui esses valores nulos por outro nome 
SELECT
    nome AS "Nome do Evento",
    data_evento AS "Dia do Evento",
    COALESCE(criador_id, "***sem registro***") as "Criador do Evento",
    COALESCE(local, "***sem Local***") AS "Local do Evento",
    COALESCE(descricao, "***Nada de Descrição***") "Descrição do Evento"
FROM
    eventos
WHERE
    criador_id IS NULL -- Filtro coluna a coluna para verificar valores nulos
    OR local IS NULL
    OR descricao IS NULL;
    
-- Esta consulta utilisei CASE para selecionar o nome do evento (nome) e, do criador_id, local ou descricao forem nulos,
-- substitui esses valores nulos por outro nome, com filtro
 
    SELECT 
    nome AS "Nome do Evento",
    data_evento AS "Dia do Evento",
    CASE
        WHEN criador_id IS NULL THEN '***sem registro***'
        ELSE criador_id
    END AS "Criador do Evento",
    CASE
        WHEN local IS NULL THEN '***sem registro***'
        ELSE local
    END AS "Local do Evento",
    CASE
        WHEN descricao IS NULL THEN '***sem registro***'
        ELSE descricao
    END AS "Descrição do Evento"
FROM
    eventos
WHERE
	criador_id IS NULL -- Filtro coluna a coluna para verificar valores nulos
    OR local IS NULL
    OR descricao IS NULL;