SELECT  idCliente,
        qtdePontos,
        CASE
              WHEN qtdePontos <=500 THEN 'Ponei'
              WHEN qtdePontos > 500 AND qtdePontos <=1000 THEN 'Ponei Premium'
              WHEN qtdePontos > 1000 AND qtdePontos <=5000 THEN 'Mago Aprendiz'
              WHEN qtdePontos > 5000 AND qtdePontos <= 10000 THEN 'Mago Mestre'
              ELSE 'Mago Supremo'
        END AS CategoriaCliente,

        CASE 
              WHEN qtdePontos <= 1000 THEN 1
              ELSE 0
        END AS flPonei,

        CASE 
              WHEN qtdePontos > 1000 THEN 1
              ELSE 0
        END AS flMago

FROM clientes

WHERE flMago = 0

ORDER BY qtdePontos DESC