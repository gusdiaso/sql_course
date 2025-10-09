-- qual o produto com mais pontos transacionados?

SELECT  IdProduto,
        sum(vlProduto) as qntPontoTransacionado

FROM transacao_produto

GROUP BY IdProduto

ORDER BY 2 DESC

LIMIT 3