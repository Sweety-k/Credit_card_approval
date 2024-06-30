CREATE DATABASE CREDIT_CARD;
USE CREDIT_CARD;
select * from FINAL_DATASET;

-- 1. Group the customers based on their income type and find the average of their annual income.
SELECT TYPE_INCOME, ROUND(AVG(ANNUAL_INCOME),2) AS AVG_ANNUAL_INCOME_INR FROM FINAL_DATASET
GROUP BY 1 ORDER BY 2 DESC;

-- 2. Find the female owners of cars and property.
SELECT COUNT(CAR_OWNER) AS NO_OF_CAR_OWNERS, COUNT(Property_Owner) AS NO_OF_PROPERTY_OWNERS 
FROM FINAL_DATASET WHERE GENDER = 'F' ;

-- 3. Find the male customers who are staying with their families.
SELECT COUNT(GENDER) AS COUNT FROM FINAL_DATASET
WHERE GENDER ='M' AND FAMILY_MEMBERS >= 2;

-- 4. Please list the top five people having the highest income.
SELECT IND_ID, ANNUAL_INCOME FROM FINAL_DATASET
ORDER BY 2 DESC LIMIT 5;

-- 5. How many married people are having bad credit?
SELECT COUNT(MARITAL_STATUS) AS COUNT FROM FINAL_DATASET
WHERE MARITAL_STATUS = 'MARRIED' AND LABEL = 1;

-- 6. What is the highest education level and what is the total count?
SELECT EDUCATION, COUNT(EDUCATION) AS COUNT FROM FINAL_DATASET
WHERE EDUCATION = 'ACADEMIC DEGREE'
GROUP BY 1 ORDER BY 2 DESC;

-- 7. Between married males and females, who is having more bad credit?  
SELECT GENDER, COUNT(MARITAL_STATUS) AS COUNT FROM FINAL_DATASET
WHERE MARITAL_STATUS = 'MARRIED' AND LABEL = 1
GROUP BY 1 ORDER BY 2 DESC;