# 🏠 Real Estate Database Management System
Designed and implemented a relational database project focusing on analyzing the U.S. real estate market using SQL and Oracle APEX, integrating datasets from Kaggle and RealTrends. Built a normalized relational schema, executed complex queries to analyze realtor performance, market share, and regional trends, and presented findings. This project covers data modeling, schema design, and insightful queries across agents, agencies, and property listings.


---

## 📁 Project Overview

With housing prices having nearly doubled since 1986 and a competitive market landscape, real estate agencies and agents have emerged as major players in the property market. This system models the real estate data ecosystem and provides analysis on:

- 🧑‍💼 Top performing realtors
- 🏢 Market dominance of real estate agencies
- 🏘️ State-wise return trends
- 📊 Realtor performance and agency effectiveness

---

## 🧱 Database Design

We used a normalized relational schema with three main tables:

1. **AGENCY** – Details of real estate companies  
2. **AGENT** – Realtor information including affiliations  
3. **PROPERTY** – Property listings and specifications  

Entity Relationships:
- An **agency** has many **agents**
- An **agent** can manage many **properties**

![ERD Diagram](./ERD_Diagram.pdf)

---

## 🛠 SQL Features

The system includes SQL scripts for:
- Table creation with primary and foreign key constraints
- Sample data inserts
- Analytical queries answering key business questions

Sample queries include:
- Top 3 realtors by total sales volume
- Market share of top agencies
- Average volume per agent by agency
- State-wise property return comparison

---

## 📊 Data Sources

This project uses publicly available datasets from:

- [Top 100 Real Estate Agents - RealTrends](https://www.realtrends.com/ranking/best-real-estate-agents-united-states/individuals-by-volume/)
- [Top Realtor Agencies - RealTrends 500](https://www.realtrends.com/500-by-volume/)
- [USA House Prices Dataset - Kaggle](https://www.kaggle.com/datasets/fratzcan/usa-house-prices)

---

## 📂 Project Files

- `DBMS_Project_Proposal.pdf` – Initial planning and objectives
- `DBMS_Project_Report.pdf` – Final analysis and results
- `ERD_Diagram.pdf` – Entity Relationship Diagram
- `SQL/create_tables.sql` – SQL DDL for database structure
- `SQL/analysis_queries.sql` – SQL for all analytical queries

---

## 📌 Tools Used

- **Oracle APEX** for database implementation
- **SQL** for queries and data analysis
- **GitHub** for version control and collaboration

---
