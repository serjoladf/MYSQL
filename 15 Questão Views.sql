-- Esta view retorna a lista de aniversariantes com dia de mes por ano em Ordem

CREATE VIEW Lista_de_aniversariantes AS
SELECT 
CONCAT(ROW_NUMBER() OVER ()," º") AS "Lista", -- Função para concatenar o simbolo de ordenação
nome As 'Lista de Aniversariantes',
    CASE -- Condição Case para mudar número para os nomes
        WHEN MONTH(data_nascimento) = 1 THEN concat(Day(data_nascimento)," de ",'Janeiro')
        WHEN MONTH(data_nascimento) = 2 THEN concat(Day(data_nascimento)," de ",'Fevereiro')
        WHEN MONTH(data_nascimento) = 3 THEN concat(Day(data_nascimento)," de ",'Março')
        WHEN MONTH(data_nascimento) = 4 THEN concat(Day(data_nascimento)," de ",'Abril')
        WHEN MONTH(data_nascimento) = 5 THEN concat(Day(data_nascimento)," de ",'Maio')
        WHEN MONTH(data_nascimento) = 6 THEN concat(Day(data_nascimento)," de ",'Junho')
        WHEN MONTH(data_nascimento) = 7 THEN concat(Day(data_nascimento)," de ",'Julho')
        WHEN MONTH(data_nascimento) = 8 THEN concat(Day(data_nascimento)," de ",'Agosto')
        WHEN MONTH(data_nascimento) = 9 THEN concat(Day(data_nascimento)," de ",'Setembro')
        WHEN MONTH(data_nascimento) = 10 THEN concat(Day(data_nascimento)," de ",'Outubro')
        WHEN MONTH(data_nascimento) = 11 THEN concat(Day(data_nascimento)," de ",'Novembro')
        ELSE concat(Day(data_nascimento)," de ",'Dezembro')
    END AS "Dia do aniversário"
FROM redesocialdb.usuarios
order by  MONTH(data_nascimento), Day(data_nascimento); -- Ordenar por mes e dia
