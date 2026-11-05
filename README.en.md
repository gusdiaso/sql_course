🇧🇷 [Português](README.md) | 🇺🇸 English

# SQL Practice

Queries and exercises I wrote during the course **"Aprenda SQL – Primeiras Magias na Linguagem dos Dados"** (Learn SQL, in Portuguese) from the [Téo Me Why](https://youtube.com/playlist?list=PLvlkVRRKOYFRo651oD0JptVqfQGDvMi3j) channel. All the code runs on SQLite, over a database of customers, transactions and products from a loyalty points program.

## Contents

| Folder/files | Topics |
|---|---|
| `01_select.sql` … `13_join.sql` | `SELECT`, `FROM`, `WHERE`, `ORDER BY`, `CASE WHEN`, `COUNT`, `COUNT DISTINCT`, `SUM`, statistics (`AVG`, `MIN`, `MAX`), `GROUP BY`, `JOIN` |
| `exercicios/` | `WHERE`, `GROUP BY` and `CASE` exercises on the course database |
| `bora_praticar/` | Extra practice on `WHERE` and `JOIN` |
| `data/` | Database (`database.db`) and source CSVs: customers, products, transactions and items per transaction |

## Example

Customer segmentation by points with `CASE WHEN` ([`07_case.sql`](./07_case.sql)):

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

## How to run

```bash
git clone https://github.com/gusdiaso/sql_course.git
cd sql_course
sqlite3 data/database.db < 07_case.sql
```

It also works by opening `data/database.db` in DBeaver or DB Browser for SQLite.

## Credits

Course content and database by the **Téo Me Why** channel. The files in this repository are my own practice.

## Author

Gustavo Dias de Oliveira · [LinkedIn](https://www.linkedin.com/in/gusdiaso/)
