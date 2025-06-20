USE jhm4hw
--零食類別列表
SELECT ID, Category, Brand
FROM snacks;

--銷售次數列表
SELECT Category, SalesCount
FROM snacks
WHERE Category BETWEEN'Chips'AND'Chocolate'
 ORDER BY SalesCount DESC;

 --健康與非健康選項的平均銷售次數
 SELECT HealthyOption, AVG(SalesCount) AS AverageSalesCount
FROM snacks
GROUP BY HealthyOption;

--零食資料表
CREATE TABLE SnackInventory(
    SnackID INT PRIMARY KEY,
    Name VARCHAR(255)DEFAULT NULL,
    HealthyOption TINYINT(1)DEFAULT NULL,
    StockCount int(11) DEFAULT NULL
);

INSERT INTO SnackInventory(SnackID,Name, HealthyOption, StockCount)VALUES
    (1,'chips',0,50),
    (2,'chocolate',1,30),
    (3,'nuts',1,40),
    (4,'candies',0,60); 

SELECT * FROM SnackInventory;