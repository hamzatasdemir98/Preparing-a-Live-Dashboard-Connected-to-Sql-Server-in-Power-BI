SELECT * FROM RETAIL


--DATA CLEANING PROCESS
--*******************************************
--REMOVE NULL VALUES 

SELECT * FROM RETAIL
WHERE [Customer ID] IS NULL

DELETE FROM RETAIL
WHERE [Customer ID] IS NULL

--REMOVE RETURNS 

SELECT * FROM RETAIL
WHERE Quantity < 0

DELETE FROM RETAIL
WHERE Quantity < 0


--ANALYZING THE DATA
--*******************************************

-- FIND THE CUSTOMER QUANTITY  FOR EACH COUNTRY

SELECT Country ,COUNT(DISTINCT([Customer ID])) AS Customer_Quantity FROM RETAIL
GROUP BY Country

-- FIND THE TOTAL PRICE FOR EACH CUSTOMER

SELECT [Customer ID] ,SUM(Price*Quantity) AS Total_Price FROM RETAIL
GROUP BY [Customer ID]
ORDER BY 1

-- FIND TOP 10 PRODUCT SOLD AND THEIR QUANTITY SUM

SELECT TOP 10 Description , SUM(Quantity) AS Q_Sum
FROM RETAIL
GROUP BY Description
ORDER BY Q_Sum DESC

SELECT TOP 1 *, Quantity*Price AS TOT FROM RETAIL
ORDER BY TOT DESC

SELECT * FROM RETAIL

--CHANGE THE DATASET AND OBSERVE THE DASHBOARD
--************************************************

-- ADD SOME CUSTOMERS 

INSERT INTO RETAIL (Invoice, StockCode,Description,Quantity,Price,[Customer ID],Country)
VALUES (12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44444, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44445, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44446, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44447, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44448, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44449, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44450, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44451, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44452, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44453, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44454, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44455, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44456, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44467, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44457, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44458, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44459, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44460, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44462, 'NEW_COUNTRY'   ),
(12132, 10023, 'NEW_PRODUCT', 5, 4.23 , 44461, 'NEW_COUNTRY'   )

--DELETE ALL INVOICES FROM UNITED STATE

DELETE FROM RETAIL
WHERE Country = 'United Kingdom'

