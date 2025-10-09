-- qual o produto mais transacionado?

SELECT  IdProduto,
        count(*)

FROM transacao_produto

GROUP BY 1
ORDER BY 2 DESC

LIMIT 3