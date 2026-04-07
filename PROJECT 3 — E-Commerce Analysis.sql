create database Rawat;
use Rawat;
create table ecommerce_orders(
Order_ID int primary key,
Order_Date date,
Customer_ID varchar(50),
Customer_Type varchar(50),
Region varchar(50),
Product varchar(50),
Category varchar(50),
Quantity int,
Unit_Price int,
Revenue int,
Payment_Method varchar(50));
insert into ecommerce_orders values
(2001,"2024-02-02","C108","Repeat","North","Chair","Home",1,2999,2999,"UPI"),
(2002,"2024-01-29","C127","New","South","Phone","Electronics",4,1499,5996,"Card"),
(2003,"2024-04-07","C104","Repeat","East","Novel","Books",2,499,998,"COD"),
(2004,"2024-02-11","C130","New","West","Jeans","Clothing",3,999,2997,"NetBanking"),
(2005,"2024-01-06","C122","Repeat","North","Laptop","Electronics",1,9999,9999,"Card"),
(2006,"2024-03-15","C118","New","South","Mixer","Home",2,2999,5998,"UPI"),
(2007,"2024-04-20","C110","Repeat","East","T-Shirt","Clothing",4,499,1996,"COD"),
(2008,"2024-02-18","C105","New","West","Textbook","Books",1,1499,1499,"NetBanking"),
(2009,"2024-03-01","C124","Repeat","North","Headphones","Electronics",2,999,1998,"UPI"),
(2010,"2024-04-10","C111","New","South","Jacket","Clothing",1,2999,2999,"Card"),
(2011,"2024-01-21","C129","Repeat","East","Lamp","Home",3,499,1497,"COD"),
(2012,"2024-02-27","C107","New","West","Phone","Electronics",2,1499,2998,"UPI"),
(2013,"2024-03-09","C115","Repeat","North","Comics","Books",4,299,1196,"NetBanking"),
(2014,"2024-04-01","C101","New","South","Chair","Home",1,2999,2999,"Card"),
(2015,"2024-01-17","C120","Repeat","East","Jeans","Clothing",2,999,1998,"COD");
SELECT * FROM ecommerce_orders;
select month(Order_Date) as Months , sum(Revenue) as Total_Revenue from ecommerce_orders group by Months order by Total_Revenue;
select Customer_ID  , sum(Revenue) as Total_Revenue from ecommerce_orders group by Customer_ID order by Total_Revenue;
select Category  , sum(Revenue) as Total_Revenue from ecommerce_orders group by Category order by Total_Revenue;
select Customer_Type , sum(Revenue) as Total_Revenue from ecommerce_orders group by Customer_Type order by Total_Revenue limit 10;

-- STATISTICAL ANALYSIS
select avg(Quantity) as Avg_Quantity from ecommerce_orders;
select avg(Unit_Price) as Avg_Unit_Price from ecommerce_orders;
select avg(Revenue) as Avg_Revenue from ecommerce_orders;
-- Sales min,max
select min(Quantity), max(Quantity) from ecommerce_orders;
select min(Unit_Price), max(Unit_Price) from ecommerce_orders;
select min(Revenue), max(Revenue) from ecommerce_orders;
-- count
SELECT COUNT(*) AS ecommerce_ordersss
FROM ecommerce_orders;
-- Sales STANDARD DEVIATION 
select stddev_pop(Quantity) as Quantity_STANDARD_DEVIATION from ecommerce_orders;
select stddev_pop(Unit_Price) as Unit_Price_STANDARD_DEVIATION from ecommerce_orders;
select stddev_pop(Revenue) as Revenue_STANDARD_DEVIATION from ecommerce_orders;
-- Sales VARIANCE 
select var_pop(Quantity) as Quantity_Variance from ecommerce_orders;
select var_pop(Unit_Price) as Unit_Price_Variance from ecommerce_orders;
select var_pop(Revenue) as Revenue_Variance from ecommerce_orders;

----------------------------------------------------------- end --------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------END------------------------------------------------------------------------------------------