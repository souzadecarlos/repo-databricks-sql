-- Databricks notebook source
-- Selecionar todos os clientes paulistanos

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'


-- COMMAND ----------

-- Selecionar todos os clientes paulistas

SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- Selecione todos os vendedores cariocas e paulistas

SELECT *
FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro' OR descUF = 'SP'


-- COMMAND ----------

--- 04 Todos os produtos de perfumaria e bebes com altura maior que 5cm

SELECT *
FROM silver_olist.produto
WHERE descCategoria IN ('perfumaria', 'bebes') AND vlAlturaCm > 5
