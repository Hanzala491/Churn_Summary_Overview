Select Gender, Count(Gender) as TotalCount,
Count(Gender) * 100.0 / (Select Count(*) from db_churn.dbo.scg_churn) as Percentage
From db_churn.dbo.scg_churn
Group By Gender


Select Contract, Count(Contract) as TotalCount,
Count(Contract) * 1.0 / (Select Count(*) from db_churn.dbo.scg_churn) as Percentage
From db_churn.dbo.scg_churn
Group By Contract


Select Customer_Status, Count(Customer_ID) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select Sum(Total_Revenue) from db_churn.dbo.scg_churn) * 100 as Percentage
From db_churn.dbo.scg_churn
Group By Customer_Status


Select State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from db_churn.dbo.scg_churn) as Percentage
From db_churn.dbo.scg_churn
Group By State
Order by Percentage desc


Select Distinct Internet_Type
From db_churn.dbo.scg_churn
