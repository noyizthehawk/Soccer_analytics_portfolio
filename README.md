# ⚽ Football Investment Efficiency Analysis  
### Top 5 European Leagues (2014–2024)

---

## Client Background

A Middle Eastern sovereign investment group is exploring the acquisition of a European football club as part of a long-term global sports, media, and entertainment investment strategy.  

While elite clubs command premium valuations, historical evidence suggests that **financial dominance does not always translate into proportional on-pitch success**. The client’s objective is not only to acquire a prestigious asset, but to **identify clubs and leagues that consistently convert financial investment into competitive performance**.  

This project evaluates football performance through the lens of **capital efficiency**, treating clubs as investment vehicles rather than purely sporting institutions.

---

## North Star Metrics

To align sporting outcomes with business objectives, this analysis focuses on **efficiency-based KPIs**, not raw spending or brand prestige.

### Performance Metrics
- **Total Points (2014–2024)** — Measures long-term competitive success  
- **Total Wins** — Captures match-level performance and consistency  
- **Goal Difference** — Indicates dominance and tactical superiority beyond wins alone  

### Financial Metrics
- **Total Transfer Expenditure (2014–2024)** — Cumulative capital investment in squad building  
- **Total Squad Market Value (2024 snapshot)** — Proxy for current asset valuation  

### Efficiency Metrics (Core KPIs)
- **Wins per €100M Squad Value**  
- **Points per €100M Squad Value**  
- **€ Spent per League Point**  

These metrics enable fair comparison across clubs and leagues with vastly different financial scales.

---

## Executive Dashboards

The dashboards are designed for **board-level decision making**, providing a structured way to answer investment-relevant questions.

---

### 1️⃣ Market Overview: Cost of Competing in European Football

This visualization provides **context** on the financial landscape of elite European football.  
It shows cumulative club spending over the analysis period, highlighting the disparity in capital requirements across leagues and clubs.  

> **Purpose:** Establish baseline entry costs before evaluating performance efficiency.

![Market Overview – Club Spending](club_spending_10yrs.png)

---

### 2️⃣ Club Investment Efficiency: Best Value Clubs

The following dashboard identifies clubs that **maximize on-field performance relative to financial resources**.  
It highlights clubs that provide the **best value**, combining high points, wins, and efficiency per €100M spent.

> **Insight:** Investors can quickly spot clubs that consistently outperform their financial investment. These are potential acquisition targets or clubs worthy of closer evaluation.

![Club Investment Efficiency – Best Value](best_value_dashboard.png)

---

### 3️⃣ Club-Level Dashboards (Other Views)

**Focus:** Provide additional analysis for detailed evaluation:

- Wins vs Squad Market Value (efficiency scatter plot)  
- Points per €100M Squad Value (ranking table)  
- Goal Difference vs Total Spend (performance quadrants)  

---

### 4️⃣ League-Level Dashboards

**Focus:** Understand macro-level efficiency and cross-league comparisons.

- Total League Spend vs Total League Points  
- € Spent per Point by League (efficiency ranking)  
- Cross-league efficiency comparison (Top 5 leagues)  

---

## Data Structure

All analysis is performed using SQL on a normalized football database.

### Key Tables
- **`games`** — Match results, goals, seasons, competitions  
- **`clubs`** — Club metadata and domestic league classification  
- **`players`** — Player market values and club affiliation  
- **`transfers`** — Transfer fees and transaction dates  

### Scope
- **Leagues:** Premier League (GB1), La Liga (ES1), Serie A (IT1), Bundesliga (L1), Ligue 1 (FR1)  
- **Timeframe:** 2014–2024  
- **Currency:** EUR  

---

## Analytical Questions

This project is structured around three core business questions:

### 1️⃣ Do Higher-Spending Clubs Perform Better?
- Compare total transfer expenditure to total points, wins, and goal difference  
- Evaluate whether increased spending produces diminishing or compounding returns  

### 2️⃣ Which Clubs Outperform Their Financial Resources?
- Identify clubs with high wins or points relative to squad market value  
- Highlight consistently efficient clubs as potential acquisition targets  

### 3️⃣ Which League Is the Most Financially Efficient?
- Aggregate league-level points and transfer expenditure  
- Rank leagues by **€ spent per point** to assess macro-level efficiency  

---

## Interpretation Framework

Once dashboards are implemented, insights will be interpreted through:

- **Efficiency leaders vs financial heavyweights**  
- **Outliers** — clubs or leagues significantly over- or under-performing  
- **Sustainability of performance** relative to spend  
- **Risk-adjusted investment attractiveness**  

> Interpretation focuses on **strategic implications**, not tactical football analysis.

---

## Business Relevance

- Football clubs are **capital-intensive assets**  
- Performance drives **media revenue, sponsorships, and valuation**  
- Efficient capital allocation correlates with **long-term asset growth**  

This analysis reframes football performance as a **return-on-investment problem**, aligning sporting success with financial discipline.

---

## Tools & Skills Demonstrated

- Advanced SQL (CTEs, UNION ALL, subqueries, aggregation)  
- KPI design and efficiency metrics  
- Financial-performance modeling  
- Executive-level data storytelling  

---

## Next Steps

- Implement interactive dashboards (Tableau / Power BI)  
- Add year-by-year efficiency trends  
- Integrate wage data (if available)  
- Publish executive summary insights  

---

*This project is designed as a portfolio-grade analytics case study, combining technical execution with business storytelling.*

---


