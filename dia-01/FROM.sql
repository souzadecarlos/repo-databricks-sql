-- Databricks notebook source
SELECT *
FROM silver_olist.pagamento_pedido

-- COMMAND ----------

SELECT idPedido as Pedido,
       descSituacao
FROM silver_olist.pedido

LIMIT 5

-- COMMAND ----------

SELECT *,
       DATEDIFF(dtEstimativaEntrega, dtEntregue) as qtDiferencaDiasEntrega
       
FROM silver_olist.pedido

LIMIT 5
