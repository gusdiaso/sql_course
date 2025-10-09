SELECT  IdTransacao, 
        idCliente,
        DtCriacao
        -- substr(DtCriacao, 0, 11) AS DataCriacao,
        -- count(*),
        -- count(DISTINCT idCliente)


FROM transacoes

WHERE DtCriacao >= '2025-08-01' 
AND DtCriacao < '2025-09-01'

ORDER BY DtCriacao