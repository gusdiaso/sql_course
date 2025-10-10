SELECT  tp.*,
        p.DescDescricaoProduto

FROM transacao_produto AS tp
LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

WHERE p.IdProduto IS NULL