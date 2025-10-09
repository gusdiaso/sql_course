--  lista de transaçoes com o produto "Resgatar Ponei"

SELECT  IdProduto, 
        DescNomeProduto

FROM produtos
WHERE DescNomeProduto = 'Resgatar Ponei';

SELECT  IdTransacao,
        IdProduto

FROM transacao_produto
WHERE IdProduto = 15;