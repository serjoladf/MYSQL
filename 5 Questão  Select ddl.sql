-- 5. Manipulação de Dados
-- • Crie comandos para INSERT INTO, UPDATE, DELETE:
-- • Exemplo: Atualize a descrição de um grupo específico.
-- • Exemplo: Delete todas as notificações de um usuário específico que já foram lidas.

INSERT INTO usuarios(nome, email, senha, data_nascimento, endereco, telefone, bio) -- inserts de usuários
VALUES 
    ('Sérgio Bomfim', 'serjoladf@gmail.com', 's123rdf00', '1982-07-07', 'Qms 30A Sobradinho', '6134872324', '“A persistência é o caminho do êxito.”— Charles Chaplin'),
    ('André Rocha', 'andrerch@example.com', 'andr1234', '1971-02-02', 'Rua do Lavra S/N', '7186742335', 'A imaginação é mais importante que o conhecimento. O conhecimento é limitado. A imaginação envolve o mundo.” — Albert Einstein'),
    ('Update', 'Update@example.com', '29763211', '1960-03-03', 'Rua Update', '456789123', 'Acredite em você mesmo e em tudo que você é. Saiba que há algo dentro de você que é maior do que qualquer obstáculo.” — Christian D. Larson'),
    ('delete', 'delete@example.com', 'srgdf2345', '1934-04-04', 'Rua Delete Fercal', '789123456', '“O sucesso é a soma de pequenos esforços repetidos dia após dia.” — Robert Collier'),
    ('srDelete', 'srdelete@example.com', '1234fds', '1954-05-05', 'Quadra 5 Lago', '321654987', '“Seja a mudança que você deseja ver no mundo." — Mahatma Gandhi');

Update 
	usuarios
set 
	nome = "Mailson Oliveira",
	email = "mayliveira@gmail.com",
    senha = "271313df",
    Data_nascimento = "1974-05-04",
    endereco = "Beco da Lapinha S/N",
    telefone = "7186741325",
    bio = " “O sucesso é a soma de pequenos esforços repetidos dia após dia.” — Robert Collier" -- Update para atualizar cadastro do Usuario Update
Where nome = "Update";

DELETE FROM usuarios
WHERE nome IN ('delete', 'srDelete',  'André Rocha', 'Sérgio Bomfim',"Mailson Oliveira"); -- exclusão com filtro de que deve ser excluido, caso fosse excluir todos os regitros usava o codigo select*from[Tabela}

