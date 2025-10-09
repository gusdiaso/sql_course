SELECT  idCliente,
        qtdePontos

FROM clientes
ORDER BY qtdePontos DESC
LIMIT 5;

SELECT  idCliente,
        datetime(DtCriacao) as DataCriacao,
        qtdePontos,
        flTwitch

FROM clientes
WHERE flTwitch = 1
ORDER BY datetime(DtCriacao) ASC, qtdePontos DESC
LIMIT 5;

