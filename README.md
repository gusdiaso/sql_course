🇧🇷 Português | 🇺🇸 [English](README.en.md)

# Prática de SQL

Consultas e exercícios que escrevi durante o curso **"Aprenda SQL – Primeiras Magias na Linguagem dos Dados"**, do canal [Téo Me Why](https://youtube.com/playlist?list=PLvlkVRRKOYFRo651oD0JptVqfQGDvMi3j). Todo o código roda em SQLite, sobre uma base de clientes, transações e produtos de um programa de pontos.

## Conteúdo

| Pasta/arquivos | Tópicos |
|---|---|
| `01_select.sql` … `13_join.sql` | `SELECT`, `FROM`, `WHERE`, `ORDER BY`, `CASE WHEN`, `COUNT`, `COUNT DISTINCT`, `SUM`, estatísticas (`AVG`, `MIN`, `MAX`), `GROUP BY`, `JOIN` |
| `exercicios/` | Exercícios de `WHERE`, `GROUP BY` e `CASE` com a base do curso |
| `bora_praticar/` | Prática extra de `WHERE` e `JOIN` |
| `data/` | Base de dados (`database.db`) e os CSVs de origem: clientes, produtos, transações e itens por transação |

## Exemplo

Segmentação de clientes por pontos com `CASE WHEN` ([`07_case.sql`](./07_case.sql)):

```sql
SELECT idCliente,
       qtdePontos,
       CASE
           WHEN qtdePontos <= 500   THEN 'Ponei'
           WHEN qtdePontos <= 1000  THEN 'Ponei Premium'
           WHEN qtdePontos <= 5000  THEN 'Mago Aprendiz'
           WHEN qtdePontos <= 10000 THEN 'Mago Mestre'
           ELSE 'Mago Supremo'
       END AS CategoriaCliente
FROM clientes
ORDER BY qtdePontos DESC;
```

## Como executar

```bash
git clone https://github.com/gusdiaso/sql_course.git
cd sql_course
sqlite3 data/database.db < 07_case.sql
```

Também funciona abrindo `data/database.db` no DBeaver ou no DB Browser for SQLite.

## Créditos

Conteúdo e base de dados do curso do canal **Téo Me Why**. Os arquivos deste repositório são a minha prática.

## Autor

Gustavo Dias de Oliveira · [LinkedIn](https://www.linkedin.com/in/gusdiaso/)
