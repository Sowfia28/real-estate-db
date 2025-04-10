#Question 4: Top States for Agent Returns vs. Average Property Prices
#Which states provide the most returns for the agents? How high are they when compared to the average price of properties across the board?
#To determine which states provide the most returns for agents, we composed a query that calculates the average property price in each state and compares it to the overall average property price. The query identifies the states with the highest returns by measuring how much their average property prices exceed the national average, providing insight into the regions where agents can achieve the best returns.

WITH StateReturns AS (
SELECT
AG.AgentState,
SUM(P.Price) AS TotalSalesVolume,
COUNT(P.PropertyID) AS NumProperties,
Round(AVG(P.Price),4) AS AvgPriceInState
FROM
Agent AG
JOIN
Property P ON AG.AgentID = P.AgentID
GROUP BY
AG.AgentState
),
OverallAverage AS (
SELECT
Round(AVG(Price),4) AS AvgPriceOverall
FROM
Property
)
SELECT
SR.AgentState,
SR.TotalSalesVolume,
SR.AvgPriceInState,
OA.AvgPriceOverall,
Round((SR.AvgPriceInState - OA.AvgPriceOverall) / OA.AvgPriceOverall * 100,4) AS PriceComparisonPercentage
FROM
StateReturns SR,
OverallAverage OA
ORDER BY
SR.TotalSalesVolume DESC;
