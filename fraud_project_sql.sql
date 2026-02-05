CREATE TABLE creditcard (
    Time FLOAT,
    V1 FLOAT,
    V2 FLOAT,
    V3 FLOAT,
    V4 FLOAT,
    V5 FLOAT,
    V6 FLOAT,
    V7 FLOAT,
    V8 FLOAT,
    V9 FLOAT,
    V10 FLOAT,
    V11 FLOAT,
    V12 FLOAT,
    V13 FLOAT,
    V14 FLOAT,
    V15 FLOAT,
    V16 FLOAT,
    V17 FLOAT,
    V18 FLOAT,
    V19 FLOAT,
    V20 FLOAT,
    V21 FLOAT,
    V22 FLOAT,
    V23 FLOAT,
    V24 FLOAT,
    V25 FLOAT,
    V26 FLOAT,
    V27 FLOAT,
    V28 FLOAT,
    Amount FLOAT,
    Class INT
);

/*Qtd Fraudes */
SELECT Class, COUNT(*) 
FROM creditcard
GROUP BY Class;


/*Porcentagem de fraude*/
SELECT 
    Class,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM creditcard) AS percent
FROM creditcard
GROUP BY Class;

/*Top transações mais suspeitas*/
SELECT *
FROM creditcard
WHERE Class = 1
ORDER BY Amount DESC
LIMIT 10;

/*Média de valor fraude vs normal */
SELECT Class, AVG(Amount)
FROM creditcard
GROUP BY Class;

/*Features que indicam fraude */
SELECT 
    AVG(V1), AVG(V2), AVG(V3), AVG(V4)
FROM creditcard
WHERE Class = 1;



