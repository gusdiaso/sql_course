--  produtos que sao chapeu

SELECT  IdProduto,
        DescNomeProduto

FROM produtos

-- WHERE DescNomeProduto LIKE '%chapéu%'
WHERE DescNomeProduto NOT LIKE '%chapéu%'