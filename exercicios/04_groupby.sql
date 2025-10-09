-- quantos produtos sao de rpg?

SELECT  DescCategoriaProduto,
        count(*) as qntProdutos

FROM produtos

GROUP BY DescCategoriaProduto

