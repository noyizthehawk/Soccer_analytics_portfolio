# ⚽ European Top 5 Leagues Performance & Financial Efficiency Dashboard

## Executive Summary

This project investigates the relationship between **financial investment in football clubs** and their **on-field performance** across Europe’s top 5 leagues (Premier League, La Liga, Serie A, Ligue 1, Bundesliga) over the last decade (2014–2024).  

The analysis answers three critical business questions:  

1. **Do higher-spending clubs actually perform better?**  
2. **Which clubs outperform their financial resources?**  
3. **Which leagues are the most financially efficient?**  

---

## Business Context

Imagine you are a **strategic investor or club executive** evaluating potential acquisitions or investments. Understanding not only the raw performance of clubs but also the **financial efficiency** behind it is crucial for:  

- Identifying undervalued clubs with high performance-to-spending ratios.  
- Benchmarking spending strategies against competitors.  
- Allocating resources efficiently for long-term competitive advantage.  

This project transforms raw football data into **actionable insights**, offering both **operational intelligence** for clubs and **investment intelligence** for potential stakeholders.  

---

## Key Metrics

### Club-Level Performance Metrics
- **Total Points** – Measures overall season success.  
- **Goal Difference** – Captures offensive and defensive quality.  
- **Wins per €100M Squad Value** – Highlights efficiency in converting squad market value into match wins.  

### Club-Level Financial Metrics
- **Total Squad Market Value** – Reflects financial investment in players.  
- **Total Transfer Expenditure (2014–2024)** – Indicates financial strategy in the transfer market.  
- **Points per €100M Spent** – Measures the ROI of transfer investment.  

### League-Level Efficiency Metrics
- **Total Points per League** – Aggregates overall performance by league.  
- **Total Transfer Expenditure per League** – Aggregates investment in player transfers.  
- **€ Spent per Point** – Evaluates league-level efficiency.  

---

## Data Sources

- **Games Data** – Match results for home and away fixtures (2014–2024).  
- **Players Data** – Current squad values and market values by club.  
- **Transfers Data** – Transfer fees for incoming players over the last decade.  
- **Clubs Data** – Club metadata, including league, country, and season.  

All data is stored in a **MySQL database**, and queries are structured to provide clean, accurate aggregation for analytics and visualization.  

---

## Analysis Workflow

1. **Data Extraction**  
   SQL queries retrieve match results, player valuations, and transfer expenditures.  

2. **Data Transformation**  
   - Calculate points and wins for each club (home and away).  
   - Aggregate total squad market value and transfer expenditure.  
   - Derive efficiency metrics: points per €100M, wins per squad value, and league-level € per point.  

3. **Visualization & Insights**  
   - Rank clubs by performance and efficiency.  
   - Highlight **overperforming and underperforming clubs** relative to spending.  
   - Benchmark league efficiency across the top 5 European competitions.  

---

## Key Insights

- High-spending clubs often dominate, but some **lower-spending clubs achieve exceptional ROI**, signaling strategic management.  
- Efficiency metrics like **points per €100M** reveal hidden value and highlight clubs outperforming expectations.  
- League-level efficiency shows which leagues achieve more points per euro spent, providing a **macro-level investment perspective**.  

---

## Deliverables

1. **SQL Queries** – Reproducible queries for extracting, aggregating, and analyzing data.  
2. **Dashboard Tables** – Summary tables for club and league performance.  
3. **Efficiency Metrics** – Derived KPIs highlighting financial efficiency.  
4. **Visualizations** – Charts to convey club and league performance clearly.  

---

## Audience

- **Investors** exploring football club acquisitions.  
- **Club executives** benchmarking performance relative to financial input.  
- **Recruiters or data analysts** seeking an example of KPI creation, aggregation, and financial-performance analysis.  

---

## Future Work

- Expand to **year-by-year performance and spending trends**.  
- Introduce **player-level efficiency metrics**, e.g., goals per € spent.  
- Build an **interactive dashboard** using Tableau or Python for dynamic exploration.  

---

*This project demonstrates both **technical SQL skills** and **business insight**, making it ideal for a professional data portfolio.*
