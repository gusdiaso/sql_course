--  categoria de produtos mais vendidos

SELECT  p.DescCategoriaProduto,
        count(tp.idTransacaoProduto) 
        
FROM transacao_produto AS tp
LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

GROUP BY p.DescCategoriaProduto 

ORDER BY 2 DESC


