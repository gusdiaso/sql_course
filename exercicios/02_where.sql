-- lista de pedidos realizados no fim de semana

SELECT  IdTransacao,
        strftime('%w', datetime(DtCriacao)) AS DiaSemana

FROM transacoes

WHERE strftime('%w', datetime(DtCriacao)) IN ('0','6')
