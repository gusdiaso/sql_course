-- lista de produtos com nome que começa com "venda de"

SELECT  IdProduto, 
        DescNomeProduto

FROM produtos

WHERE DescNomeProduto LIKE "venda de%"