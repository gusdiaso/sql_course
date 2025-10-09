SELECT  idCliente,
        qtdePontos,
        qtdePontos * 3 AS QtdePontosx3,
        qtdePontos-qtdePontos/2 AS QtdePontosCalculo,
        DtCriacao

FROM clientes
LIMIT 10;

SELECT  idCliente, 
        qtdePontos, 
        datetime(DtCriacao) AS DataCriacao,
        strftime('%w', datetime(DtCriacao)) AS DiaSemana

FROM clientes
LIMIT 10;