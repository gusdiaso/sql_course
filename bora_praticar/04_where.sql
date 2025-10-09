SELECT  *
FROM produtos
WHERE DescNomeProduto = 'Churn_10pp'
OR DescNomeProduto = 'Churn_2pp'
OR DescNomeProduto = 'Churn_5pp';

SELECT  *
FROM produtos
WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp');

SELECT  *
FROM produtos
WHERE DescNomeProduto LIKE '%churn%';

SELECT  *
FROM produtos
WHERE DescCategoriaProduto = 'churn_model';