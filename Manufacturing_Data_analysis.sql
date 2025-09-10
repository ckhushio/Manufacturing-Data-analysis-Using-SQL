select top 1 *
from [dbo].[DIM_CUSTOMER]

select top 1 *
from [dbo].[DIM_DATE]

select top 1*
from [dbo].[DIM_LOCATION]

select top 1*
from [dbo].[DIM_MANUFACTURER]

select top 1*
from [dbo].[DIM_MODEL]

select Date
from [dbo].[FACT_TRANSACTIONS]


--List all the states in which we have customers who have bought cellphones from 2005 till today. 

with purschased_year AS(
select A.state, B.IdLocation, B.IdCustomer, year(B.date) AS years
from DIM_LOCATION AS A
left join FACT_TRANSACTIONS AS B
on A.IdLocation = B.IdLocation)

select distinct(state)
from purschased_year
where years >= 2005 and IdCustomer is not null
group by state

--What state in the US is buying the most 'Samsung' cell phones?

--state = us
--manufacturer-- samsung
--DIM_MANUFACTURER >> DIM_MODEL >> FACT_TRANSACTIONS>> DIM_LOCATIONS
--join 

with manufacturer_deatils AS(
select A.ManufacturerName, A.IdModel
from DIM_MANUFACTURER AS A
join DIM_MODEL AS B
on A.IdManufacturer = B.IdManufacturer
where ManufacturerName ='Samsung'),


extracted_location AS(
select F.IdLocation
from manufacturer_deatils AS M
join FACT_TRANSACTIONS AS F
on M.IdModel = F.IdModel),

location_extracted AS(
select D.Country, D.state
from extracted_location AS E
join DIM_LOCATIONS AS D
on E.IdLocation = D.IdLocation
where Country = 'USA')

Select state
from location_extracted;

-- Show the number of transactions for each model per zip code per state?
--model_name-- zipcode--

select B.IdModel , count(*) AS transations, C.ZipCode , C.state
from fact_transactions AS A
join DIM_MODEL  AS B
on A.IdModel = B.IdModel
join DIM_LOCATION AS C
on C.IdLocation = A.IdLocation
group by A.IDModel, C.State, C.ZipCode


--- Show the cheapest cellphone (Output should contain the price also)

select  Model_Name, unit_price
from DIM_MODEL
where unit_price = (select min(unit_price) from DIM_MODEL)


select A.totalprice AS TOTAL_PRICE , B.IDMODEL
from FACT_TRANSACTIONS AS A
JOIN DIM_MODEL AS B
ON A.IDMODEL = B.IDMODEL
where totalprice = (select min(totalprice) from FACT_TRANSACTIONS)



--Find out the average price for each model in the top 5 manufacturers in terms of sales quantity and order by average price.
--DIM_MODEL--DIM_MANUFACTURER


with top_5_manufacturers AS (
select top 5  B.IDManufacturer
from Fact_Transactions AS A
join Dim_Model AS B
on A.IDMODEL = B.IDMODEL
group by IDManufacturer
ORDER BY sum(A.Quantity) desc)

select AVG(A.totalPrice) AS Avg_Price
FROM Fact_Transactions AS C
join Dim_Model AS D
on C.IDMODEL = D.IDMODEL
where B.[IDManufacturer] in (select  from top_5_manufacturers)

GROUP BY D.ModelName
ORDER BY Avg_Price;


---List the names of the customers and the average amount spent in 2009, where the average is higher than 500

select distinct C.Customer_name,  AVG(A.totalPrice) AS Avg_Price
from Fact_Transactions AS A
join DIM_DATE AS B
on A.Date = B.Date
join DIM_CUSTOMER AS C
on A.IDCustomer = C.IDCustomer
where year(B.date) = 2009
group by Customer_name, year(B.date)
having AVG(A.totalPrice) > 500 

--List if there is any model that was in the top 5 in terms of quantity, simultaneously in 2008, 2009, and 2010


--BEGIN Q7
WITH top_2008 AS (
    SELECT TOP 5 IDModel
    FROM FACT_TRANSACTIONS
    WHERE YEAR(Date) = 2008
    GROUP BY IDModel
    ORDER BY SUM(Quantity) DESC
),
top_2009 AS (
    SELECT TOP 5 IDModel
    FROM FACT_TRANSACTIONS
    WHERE YEAR(Date) = 2009
    GROUP BY IDModel
    ORDER BY SUM(Quantity) DESC
),
top_2010 AS (
    SELECT TOP 5 IDModel
    FROM FACT_TRANSACTIONS
    WHERE YEAR(Date) = 2010
    GROUP BY IDModel
    ORDER BY SUM(Quantity) DESC
),
common_models AS (
    SELECT IDModel FROM top_2008
    INTERSECT
    SELECT IDModel FROM top_2009
    INTERSECT
    SELECT IDModel FROM top_2010
)

 
SELECT M.Model_Name, C.IDModel
FROM common_models AS C
JOIN Dim_Model AS M ON C.IDModel = M.IDModel;
--END Q7



