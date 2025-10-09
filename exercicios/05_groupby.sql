-- qual o valor medio de pontos positivos por dia?

SELECT  sum(qtdePontos) AS qtdePontosTotal,
        count(DISTINCT substr(DtCriacao, 1, 10)) AS qntDia,
        sum(qtdePontos) / count(DISTINCT substr(DtCriacao, 1, 10)) AS avgPontos


FROM transacoes

WHERE qtdePontos > 0
