# Customer Retention Analytics & Growth Strategy Framework

> Developed as part of the IIT Guwahati Consulting Summer Project

## Contributors

This project was completed as part of the **IIT Guwahati Consulting Summer Project** by:

* **Sujal Burnwal**
  GitHub: https://github.com/sujal-ece28

* **Abhishek Shekhawat**
  GitHub: https://github.com/abhishekshekhawat131

---

## Overview

Customer retention is one of the most critical drivers of sustainable business growth. While organizations often focus on customer acquisition and revenue generation, long-term profitability depends on understanding customer loyalty, purchase behavior, promotional dependency, and value generation patterns.

This project analyzes customer transaction and behavioral data for a fashion retail business to identify high-value customer segments, evaluate promotional effectiveness, understand retention drivers, and develop actionable growth recommendations.

Using Python, SQL, and Power BI, the project transforms raw customer data into business insights, customer segmentation frameworks, retention strategies, and executive-level recommendations.

---

## Project Scope

This project combines analytics, business intelligence, and consulting methodologies to answer key customer retention and growth questions for a fashion retail business. The final output includes a complete analytical workflow, SQL-based business analysis, interactive dashboarding, a customer retention playbook, and executive-level recommendations.

---

## Business Problem

The company seeks to answer the following strategic questions:

### 1. Who are genuinely loyal customers versus discount-dependent customers?

Identify customers who repeatedly purchase due to brand affinity versus those primarily motivated by discounts and promotions.

### 2. What behavioral patterns predict high customer value?

Determine which customer behaviors most strongly contribute to long-term customer value.

### 3. Which geographies and demographics are commercially underleveraged?

Identify customer segments with strong business potential that may not currently be fully leveraged.

### 4. How should promotional and retention strategies be restructured?

Evaluate whether current promotional efforts create sustainable customer relationships and recommend more effective retention approaches.

### 5. What does the ideal customer look like?

Develop a data-backed profile of the company's highest-value customers to support acquisition and retention efforts.

---

## Dataset Overview

The analysis was performed on approximately **3,900 customer records** containing:

* Customer demographics
* Purchase behavior
* Product categories
* Purchase frequency
* Previous purchase history
* Discount usage
* Promotional code usage
* Subscription status
* Customer review ratings
* Payment methods
* Geographic information

---

## Project Workflow

### Phase 1 – Data Understanding

Performed initial dataset inspection to understand:

* Dataset structure
* Missing values
* Duplicate records
* Data quality
* Column distributions

Key techniques:

* `df.info()`
* `df.shape`
* `df.isnull().sum()`
* `df.duplicated().sum()`
* `value_counts()`
* `unique()`
* `nunique()`

---

### Phase 2 – Data Cleaning

Data cleaning and standardization were performed to improve analytical reliability.

Tasks included:

* Consistency checks
* Category standardization
* Fuzzy matching using RapidFuzz
* Product name normalization

---

### Phase 3 – Feature Engineering

Several business-oriented features were engineered to convert raw customer information into actionable behavioral signals.

#### Frequency Score

Measures customer engagement intensity based on purchase frequency.

#### Organic Buyer Flag

Identifies customers purchasing without discounts or promotional incentives.

#### Discount Dependency Flag

Identifies customers whose purchases rely heavily on discounts and promotional codes.

#### Customer Value Score

Measures overall customer value using:

* Purchase amount
* Purchase frequency
* Previous purchase history

#### Loyalty Score A

Behavioral loyalty framework based on:

* Purchase frequency
* Previous purchases
* Organic buying behavior

#### Loyalty Score B

Engagement-based loyalty framework based on:

* Subscription status
* Customer reviews
* Purchase spending

---

## Deliverables

### Deliverable 1 — Customer Analytics Framework

* Data Understanding
* Data Cleaning
* Exploratory Data Analysis
* Feature Engineering
* Customer Value Modeling
* Loyalty Score Construction
* Behavioral Analysis
* Strategic Business Question Analysis

### Deliverable 2 — SQL-Based Business Analysis

* Customer Segmentation
* Tier Classification
* Demographic Analysis
* Geographic Analysis
* Category Performance Analysis
* Strategic Business Query Development

### Deliverable 3 — Power BI Dashboard

Interactive dashboard containing:

* Customer Value Distribution
* Loyalty Analysis
* Discount Dependency Analysis
* Geographic Insights
* Customer Segment Performance
* Executive KPI Monitoring

### Deliverable 4 — Retention Playbook

* Promotional Sunset Strategy
* Customer Tier Framework
* Retention Recommendations
* Implementation Roadmap
* KPI Tracking Framework
* Ideal Customer Profile

### Deliverable 5 — Executive Summary

Founder-focused strategic summary including:

* Key Findings
* Business Risks
* Strategic Opportunities
* Recommended Actions
* Expected Business Impact

---

## Key Features Engineered

| Feature                  | Purpose                                |
| ------------------------ | -------------------------------------- |
| Frequency Score          | Measures customer engagement intensity |
| Organic Buyer Flag       | Identifies naturally loyal customers   |
| Discount Dependency Flag | Identifies promotion-driven customers  |
| Customer Value Score     | Measures overall customer value        |
| Loyalty Score A          | Behavioral loyalty framework           |
| Loyalty Score B          | Engagement-based loyalty framework     |

---

## Key Insights

The analysis revealed that:

* Purchase frequency and purchase history are among the strongest drivers of customer value.
* High-value customers can be identified through behavioral indicators rather than promotional responsiveness alone.
* Certain demographic and geographic segments present stronger retention and growth opportunities.
* Blanket discounting may not be the most effective long-term retention strategy.
* Customer segmentation enables more targeted and efficient marketing decisions.

---

## Technologies Used

### Analytics

* Python
* Pandas
* RapidFuzz

### Data Querying

* SQL

### Business Intelligence

* Power BI

### Development & Version Control

* Jupyter Notebook
* Google Colab
* Git
* GitHub

---

## Repository Structure

```text
customer-retention-analytics/
│
├── data/
│   └── Dataset.csv
│
├── notebooks/
│   └── customer_retention_analysis.ipynb
│
├── sql/
│   └── customer_analysis.sql
│
├── dashboard/
│   └── retention_dashboard.pbix
│
├── docs/
│   ├── Retention_Playbook.docx
│   └── Executive_Summary.docx
│
├── README.md
├── requirements.txt
├── LICENSE
└── .gitignore
```

---

## Setup

Clone the repository:

```bash
git clone https://github.com/sujal-ece28/customer-retention-analytics.git
cd customer-retention-analytics
```

Install dependencies:

```bash
pip install -r requirements.txt
```

Open and run:

```text
notebooks/customer_retention_analysis.ipynb
```

Run the notebook sequentially from top to bottom.

---

## License

This project is licensed under the MIT License.

---

## Academic Note

This repository contains work completed as part of the IIT Guwahati Consulting Summer Project.

The project is intended for educational, analytical, and portfolio purposes and demonstrates the application of analytics, business intelligence, and consulting methodologies to customer retention and growth strategy problems.
