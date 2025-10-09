-- qual cliente fez mais transaçoes no ano de 2024

SELECT  idCliente,
        count(IdTransacao) as qntTransacoes

FROM transacoes

-- WHERE DtCriacao >= '2024-01-01'
-- AND DtCriacao < '2025-01-01'

-- WHERE strftime('%Y', substr(DtCriacao, 1, 19)) = '2024'

WHERE substr(DtCriacao, 1, 4) = '2024'


GROUP BY idCliente

ORDER BY count(IdTransacao) DESC
LIMIT 1