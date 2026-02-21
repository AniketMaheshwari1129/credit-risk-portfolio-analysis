# 📊credit-risk-portfolio-analysis
End-to-end Credit Risk Analysis using SQL, Python, and Power BI

🔹 Project Overview

This end-to-end credit risk analysis project evaluates a loan portfolio to identify default patterns, exposure concentration, and high-risk segments.

Using SQL, Python, and Power BI, the project delivers actionable insights into portfolio health, risk segmentation, and financial exposure distribution.

1️⃣ Business Problem

A financial institution wants to assess the health of its loan portfolio.

Management needs to understand:

What is the overall default risk?

Which customer segments contribute most to financial risk?

Where is exposure concentrated?

Are certain loan purposes riskier than others?

The objective is to identify risk-heavy segments and support proactive credit risk monitoring.

2️⃣ Data Overview

The dataset contains:

Customer-level loan information

Risk category (High, Medium, Low)

Loan amount

Outstanding balance

Loan purpose

Default flag (0 = No Default, 1 = Default)

Total Loans Analyzed: 50,000

3️⃣ Analytical Approach
🔹 Step 1 – SQL Analysis

Calculated overall default rate

Segmented default rate by risk category

Measured total exposure & default exposure

Identified exposure concentration patterns

🔹 Step 2 – Python (EDA)

Cleaned missing values

Created risk bands

Explored default behavior trends

Validated exposure distribution

🔹 Step 3 – Power BI Dashboard

Built an executive-level dashboard including:

Portfolio KPIs

Risk segmentation

Exposure comparison

Loan purpose analysis

Portfolio distribution visualization

4️⃣ Key Findings
📌 Portfolio Risk

Overall Default Rate: 18.08%

📌 Risk Segmentation

High Risk segment shows the highest default probability.

Medium Risk also contributes significantly to exposure-at-risk.

Low Risk holds majority of total exposure but lower default probability.

📌 Exposure Analysis

Significant exposure is concentrated in High & Medium risk categories.

Exposure-at-risk percentage highlights financial vulnerability.

📌 Loan Purpose Insights

Car and Personal loans contribute most to default exposure.

Default rate variation across loan purposes indicates behavioral risk patterns.

5️⃣ Business Impact

This analysis enables:

Better monitoring of high-risk segments

Early identification of exposure concentration

Data-driven credit risk strategy

Improved portfolio risk governance

The dashboard can support risk managers in identifying areas requiring tighter credit control or monitoring.

6️⃣ Dashboard Preview

<img width="1137" height="630" alt="image" src="https://github.com/user-attachments/assets/42a380c1-dc86-4e2e-83a8-fc216e7a4d11" />

7️⃣ Project Structure
credit-risk-portfolio-analysis/
│
├── data/        → Dataset  
├── sql/         → SQL queries  
├── python/      → EDA notebook  
├── dashboard/   → Power BI file  
└── README.md

🔹 Tools Used

SQL (MySQL)

Python (Pandas, Matplotlib)

Power BI

GitHub


