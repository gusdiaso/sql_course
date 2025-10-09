SELECT  round(avg(qtdePontos), 2) AS mediaPontosArredondada,
        1. * sum(qtdePontos) / count(idCliente) as mediaPontos,
        min(qtdePontos) AS minPontosCarteria,
        max(qtdePontos) AS maxPontosCarteria,
        sum(flTwitch) as qntCadastradaTwitch, 
        sum(flEmail) as qntCadastradaEmail 

from clientes