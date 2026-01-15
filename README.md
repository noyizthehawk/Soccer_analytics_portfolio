# Football Investment Efficiency Analysis  
### Top 5 European Leagues (2014–2024)

---

## Client Background

A Middle Eastern sovereign investment group is exploring the acquisition of a European football club as part of a long-term global sports, media, and entertainment investment strategy.

While elite clubs command premium valuations, historical evidence suggests that financial dominance does not always translate into proportional on-pitch success. The client’s objective is not only to acquire a prestigious asset, but to identify clubs and leagues that consistently convert financial investment into competitive performance.

This project evaluates football performance through the lens of capital efficiency, treating clubs as investment vehicles rather than purely sporting institutions.

---

## North Star Metrics

To align sporting outcomes with business objectives, this analysis prioritizes efficiency-based KPIs rather than raw spending or brand prestige.

### Performance Metrics
- **Total Points (2014–2024)** — Long-term competitive success  
- **Total Wins** — Match-level consistency  
- **Goal Difference** — Tactical dominance beyond wins alone  

### Financial Metrics
- **Total Transfer Expenditure (2014–2024)** — Capital invested in squad building  
- **Total Squad Market Value (2024 snapshot)** — Proxy for current asset valuation  

### Efficiency Metrics (Core KPIs)
- **Wins per €100M Squad Value**  
- **Points per €100M Squad Value**  
- **€ Spent per League Point**  

These metrics enable fair comparisons across clubs and leagues operating at vastly different financial scales.

---

## Executive Dashboards

The dashboards are designed for board-level decision making, translating complex football and financial data into actionable investment insights.

---

### Market Overview: Cost of Competing in European Football

This visualization provides context on the financial landscape of elite European football.  
It highlights cumulative club spending over the analysis period and illustrates the disparity in capital requirements across leagues.

**Purpose:** Establish baseline entry costs before evaluating performance efficiency.

![Market Overview – Club Spending](club_spending_10yrs.png)

---

### Club Investment Efficiency: Best Value Clubs

This dashboard identifies clubs that maximize on-field performance relative to financial resources.  
It highlights clubs delivering strong points and wins while maintaining superior efficiency per €100M invested.

**Insight:** These clubs represent potential acquisition targets or candidates for deeper due diligence due to their ability to outperform financially stronger competitors.

![Club Investment Efficiency – Best Value](best_value_dashboard.png)

---

### League-Level Investment Efficiency

This dashboard evaluates macro-level efficiency across Europe’s top leagues by aggregating performance and financial investment at the league level.

It enables direct comparison of:
- Total league spend  
- Total league points  
- € spent per league point  

**Insight:** Leagues with lower € spent per point demonstrate stronger structural efficiency and may offer more attractive environments for long-term investment.

![League Investment Efficiency](league_efficiency.png)

---

## Data Structure

All analysis is performed using SQL on a normalized football database.

### Key Tables
- **games** — Match results, goals, seasons, competitions  
- **clubs** — Club metadata and domestic league classification  
- **players** — Player market values and club affiliation  
- **transfers** — Transfer fees and transaction dates  

### Scope
- **Leagues:** Premier League (GB1), La Liga (ES1), Serie A (IT1), Bundesliga (L1), Ligue 1 (FR1)  
- **Timeframe:** 2014–2024  
- **Currency:** EUR  

---

## Analytical Questions

This project is structured around three core investment-driven questions:

### 1. Do higher-spending clubs perform better?
- Compare transfer expenditure to points, wins, and goal difference  
- Assess diminishing versus compounding returns on spending  

### 2. Which clubs outperform their financial resources?
- Identify clubs with high performance relative to squad value  
- Highlight consistent efficiency leaders  

### 3. Which league is the most financially efficient?
- Aggregate league-level spend and performance  
- Rank leagues by € spent per point  

---

## Interpretation Framework

Insights from the dashboards are interpreted through:
- Efficiency leaders versus financial heavyweights  
- Outliers: over- and under-performing clubs or leagues  
- Sustainability of performance relative to spend  
- Risk-adjusted investment attractiveness  

Interpretation focuses on strategic investment implications rather than tactical football analysis.

---

## Business Relevance

- Football clubs are capital-intensive assets  
- Performance drives media revenue, sponsorships, and valuation  
- Efficient capital allocation supports long-term asset appreciation  

This analysis reframes football performance as a return-on-investment problem, aligning sporting outcomes with financial discipline.

---

## Tools and Skills Demonstrated

- Advanced SQL (CTEs, UNION ALL, subqueries, aggregation)  
- KPI design and efficiency modeling  
- Financial-performance analysis  
- Executive-level data storytelling  

---

## Next Steps

- Expand interactive dashboards using Tableau or Power BI  
- Add year-by-year efficiency trend analysis  
- Integrate wage and payroll data if available  
- Publish executive summary insights and recommendations  

---

This project is designed as a portfolio-grade analytics case study, combining technical execution with strategic business storytelling.
