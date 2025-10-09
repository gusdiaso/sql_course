-- SELECT  IdProduto,
--         count(*)

-- FROM transacao_produto

-- GROUP BY IdProduto

SELECT  idCliente,
        sum(qtdePontos) as QtdePontosTotal,
        count(IdTransacao) as qntTransacao,
        sum(CASE
            WHEN qtdePontos > 0 THEN qtdePontos
            END) AS qtdePontosGanho,
        sum(CASE
            WHEN qtdePontos < 0 THEN qtdePontos
            END)AS qtdePontosGasto   

FROM transacoes

WHERE DtCriacao >= '2025-08-01'
AND DtCriacao < '2025-09-01'

GROUP BY idCliente
HAVING sum(qtdePontos) > 2000

ORDER BY sum(qtdePontos) DESC
LIMIT 10