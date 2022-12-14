-- Databricks notebook source
SELECT *
FROM silver_olist.pedido
LIMIT 100

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'delivered'
LIMIT 100

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND YEAR(dtPedido) = '2018'
LIMIT 100

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao in ('shipped', 'canceled')
AND YEAR(dtPedido) = '2018'

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao in ('shipped', 'canceled')
AND YEAR(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30
