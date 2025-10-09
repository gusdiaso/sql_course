-- listar todas as transaçoes adicionando uma coluna nova sinalizando 'alto',    'medio' e 'baixo' para o valor dos pontos [<10; <500, >=500]

SELECT  IdTransacao,
        qtdePontos,
        CASE
              WHEN qtdePontos <= 10 THEN 'Baixo'
              WHEN qtdePontos > 10 AND qtdePontos < 500 THEN 'Medio'
              ELSE 'Alto'
        END as valorPontos

FROM transacoes

ORDER BY qtdePontos DESC