-- Databricks notebook source
show tables

-- COMMAND ----------

select *from loan_dbproject

-- COMMAND ----------

describe loan_dbproject

-- COMMAND ----------

-- DBTITLE 1,Gender wise distribution loan
select gender,sum(Loan)from loan_dbproject
group by Gender

-- COMMAND ----------

-- DBTITLE 1,Top occupation of taking loan
select distinct occupation from loan_dbproject

-- COMMAND ----------

select occupation,sum(loan) from loan_dbproject
group by occupation
order by 2 desc
limit 10

-- COMMAND ----------

-- DBTITLE 1,Loan category distribution
SELECT DISTINCT `Loan Category` FROM loan_dbproject;



-- COMMAND ----------

SELECT `Loan Category`, SUM(loan) AS total_loan
FROM loan_dbproject
GROUP BY `Loan Category`
ORDER BY total_loan DESC;


-- COMMAND ----------

SELECT `Loan Category`, SUM(loan) AS total_loan
FROM loan_dbproject
GROUP BY `Loan Category`
ORDER BY 2 DESC
LIMIT 5

-- COMMAND ----------

-- DBTITLE 1,martial status taking loan
select distinct 'Marital Status' from loan_dbproject

-- COMMAND ----------


