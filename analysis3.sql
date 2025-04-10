#Question 3: Agency Producing Most Successful Realtors by Average Sales
#Which agency has the habit of creating the most successful realtors?
#This is calculated by dividing the total volume of an agency by the total number of realtors belonging to it.

WITH AgencyPerformance AS (
SELECT
A.AgencyID,
A.AgencyName,
COUNT(AG.AgentID) AS NumRealtors,
SUM(AG.Volume) AS TotalAgencyVolume,
SUM(AG.Volume) / COUNT(AG.AgentID) AS AvgVolumePerRealtor
FROM
Agency A
JOIN
Agent AG ON A.AgencyID = AG.AgencyID
GROUP BY
A.AgencyID, A.AgencyName
)
SELECT
AgencyID,
AgencyName,
AvgVolumePerRealtor
FROM
AgencyPerformance
ORDER BY
AvgVolumePerRealtor DESC
FETCH FIRST 1 ROW ONLY;
