-- em 2024, quantas transaçoes lovers tivemos?

SELECT  count(*),
        DescCategoriaProduto
FROM transacoes AS t

LEFT JOIN transacao_produto AS tp
ON t.IdTransacao = tp.IdTransacao

LEFT JOIN produtos AS p
ON p.IdProduto = tp.IdProduto

WHERE DtCriacao >='2024-01-01'
AND DtCriacao < '2025-01-01'
-- AND DescCategoriaProduto = 'lovers'

GROUP BY 2

ORDER BY 1