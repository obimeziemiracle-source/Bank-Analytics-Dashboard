use dinmadb;

select * from dbo.Bank_Analytics;

select  COUNT(CustomerID) AS
TotalCustomers
from dbo.Bank_Analytics;

select  SUM(Balance) AS
TotalAccountBalance
from dbo.Bank_Analytics;


select  SUM(LoanAmount) AS
TotalLoanAmount
from dbo.Bank_Analytics;


select  AVG(MonthlyIncome) AS
AverageMonthlyIncome
from dbo.Bank_Analytics;


select  AVG(CreditScore) AS
AverageCreditScore
from dbo.Bank_Analytics;


select  AVG(SatisfactionScore) AS
AverageSatisfactionScore
from dbo.Bank_Analytics;

select City, COUNT(CustomerID) AS
CustomersCount
from dbo.Bank_Analytics
GROUP BY City;

select City, COUNT(Gender) AS
GenderCount
from dbo.Bank_Analytics
GROUP BY City;

select AccountType, COUNT(CustomerID) AS
AccountTypeCustomerCount
from dbo.Bank_Analytics
GROUP BY AccountType;


select LoanStatus, COUNT(CustomerID) AS
LoanStatusCustomerCount
from dbo.Bank_Analytics
GROUP BY LoanStatus;


select City, COUNT(Balance) AS
TotalAccountBalance
from dbo.Bank_Analytics
GROUP BY City;


select TOP 10 CustomerID,
Balance
from dbo.Bank_Analytics
Order BY Balance DESC;

select City, COUNT(CustomerID) AS
CustomersCount
from dbo.Bank_Analytics
GROUP BY Age Group

select CASE
	WHEN Age < 30 THEN 'Young'
	WHEN Age <= 50 THEN
'Middle-aged'
	ELSE 'Senior'
	END AS AgeGroup,
	COUNT(CustomerID) AS
CustomerCount
from dbo.Bank_Analytics
GROUP BY
	CASE
		WHEN Age < 30 THEN 'Young'
		WHEN Age <= 50 THEN
'Middle-aged'
	ELSE 'Senior'
	END;

	select City, SUM(LoanAmount) AS
TotalLoanAmount
from dbo.Bank_Analytics
GROUP BY City;

select AccountType, AVG(MonthlyIncome) AS
AvgMonthlyIncomeByAccountType
from dbo.Bank_Analytics
GROUP BY AccountType;