-- qual mes tivemos mais lista de presenças assinada?

SELECT  count(t.IdTransacao),
        substr(t.DtCriacao, 1, 7) AS anoMes

FROM transacoes AS t

LEFT JOIN transacao_produto AS tp
ON t.IdTransacao = tp.IdTransacao

LEFT JOIN produtos AS p
ON p.IdProduto = tp.IdProduto

WHERE DescCategoriaProduto = 'present'

GROUP BY anoMes
ORDER BY 1 DESC