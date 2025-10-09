-- lista de produtos que terminam com 'lover'

SELECT  IdProduto,
        DescNomeProduto

FROM produtos

where DescNomeProduto LIKE '%lover'
