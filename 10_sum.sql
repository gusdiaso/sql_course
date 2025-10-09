SELECT  idCliente,
        sum(QtdePontos),
        sum(CASE
            WHEN qtdePontos > 0 THEN qtdePontos
            END) AS qtdePontosGanhos,
        sum(CASE
            WHEN qtdePontos < 0 THEN qtdePontos
            END) AS qtdePontosGastos

FROM transacoes

WHERE DtCriacao >= '2025-08-01'
AND DtCriacao < '2025-09-01'

GROUP BY idCliente
ORDER BY sum(QtdePontos) DESC