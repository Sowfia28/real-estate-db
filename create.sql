#Database Implementation
#To implement the database in APEX, we wrote CREATE TABLE commands for each table in
the relational schema.

#Agency:
#As the parent table, Agency was created and populated first:

CREATE TABLE Agency (
AgencyID INT PRIMARY KEY,
AgencyName VARCHAR(255),
AgencyCity VARCHAR(100),
AgencyState VARCHAR(50),
Employees INT,
Revenue INT);

INSERT INTO Agency (AgencyID, AgencyName, AgencyCity, AgencyState, Employees, Revenue)
VALUES
(1001, 'HomesUSA.com, Inc.', 'Dallas', 'Texas', 457, 36846957845),
(1002, 'Compass', 'New York', 'New York', 684, 184452364253),
(1003, 'ListWithfreedom.com', 'Richmond', 'Virginia', 215, 8451267594);

#Agent:
CREATE TABLE Agent (
AgentID INT PRIMARY KEY,
FirstName VARCHAR(100),
LastName VARCHAR(100),
AgentCity VARCHAR(100),
AgentState VARCHAR(50),
Volume INT,
AgencyID INT,
FOREIGN KEY (AgencyID) REFERENCES Agency(AgencyID)
);
INSERT INTO Agent (AgentID, FirstName, LastName, AgentCity, AgentState, Volume, AgencyID)
VALUES
(101010, 'Ben', 'Caballero', 'Dallas', 'TX', 3638950694, 1001),
(101011, 'Alexa', 'Lambert', 'New York', 'NY', 923676714, 1002),
(101012, 'Ralph', 'M Harvey III', 'Boynton Beach', 'FL', 826461740, 1003),
(101013, 'Christian', 'Angle', 'Palm Beach', 'FL', 804599700, 1004);

#PROPERTY:
CREATE TABLE Property (
PropertyID INT PRIMARY KEY,
Price INT,
Bedrooms INT,
Bathrooms INT,
Sqft INT,
Floors INT,
YearBuilt INT,
YearRenovated INT,
Street VARCHAR(255),
City VARCHAR(100),
ZipCode VARCHAR(20),
AgentID INT,
FOREIGN KEY (AgentID) REFERENCES Agent(AgentID)
);
INSERT INTO Property (PropertyID, Price, Bedrooms, Bathrooms, Sqft, Floors, YearBuilt, YearRenovated, Street, City, ZipCode, AgentID)
VALUES
(1, 376000, 3, 2, 2724, 3, 2008, 0, '9245-9249 Fremont Ave N', 'Seattle', 'WA 98103', 101039);