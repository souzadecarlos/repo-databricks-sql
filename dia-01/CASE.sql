-- Databricks notebook source
SELECT *,
     CASE 
       WHEN descUF = 'SP' THEN 'paulista' 
       WHEN descUF = 'AM' THEN 'amazonense'
     ELSE 'outros'
     END AS descNacionalidade
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,
     CASE 
       WHEN descUF = 'SP' THEN 'paulista' 
       WHEN descUF = 'AM' THEN 'amazonense'
       ELSE 'outros'
     END AS descNacionalidade,
     CASE 
       WHEN descCidade LIKE '%sao%' THEN 'tem são no nome'
       ELSE 'não tem som no nome'
     END AS descCidadeSao
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,
      CASE 
        WHEN descUF IN ('SP', 'RJ', 'AM') THEN 'selecionado'
        ELSE 'não selecionado'
      END AS descRegiao
      
FROM silver_olist.vendedor
