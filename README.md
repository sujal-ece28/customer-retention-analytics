# Customer Retention Analytics & Strategy Framework

> Developed as part of the IIT Guwahati Consulting Summer Project

## Overview

Customer retention is one of the most critical drivers of long-term business growth. While organizations often track sales and revenue, understanding the behavioral patterns behind customer loyalty, discount dependency, and repeat purchasing is essential for building sustainable retention strategies.

This project analyzes customer transaction and behavioral data for a fashion retail business to identify valuable customer segments, evaluate loyalty patterns, assess the effectiveness of promotional strategies, and generate actionable business recommendations.

The analysis follows a consulting-oriented approach, transforming raw customer data into strategic insights through data cleaning, feature engineering, exploratory analysis, and business interpretation.

---

## Business Problem

The company seeks to answer the following questions:

### 1. Who are genuinely loyal customers versus discount-dependent customers?

Identify customers who repeatedly purchase because of brand affinity versus those primarily motivated by discounts and promotions.

### 2. What behavioral patterns predict high customer value?

Determine which customer behaviors are most strongly associated with long-term customer value.

### 3. Which geographies and demographics are commercially underleveraged?

Identify customer segments with strong business potential that may not be fully targeted or utilized.

### 4. How should promotional and retention strategies be restructured?

Evaluate whether current promotional efforts create sustainable customer relationships and recommend improvements.

---

## Dataset

The dataset contains approximately 3,900 customer records with information related to:

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

### Phase 1: Data Understanding

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

### Phase 2: Data Cleaning

Data cleaning and standardization were performed to improve analytical reliability.

Tasks included:

* Consistency checks
* Category standardization
* Fuzzy matching using RapidFuzz
* Product name normalization

---

### Phase 3: Feature Engineering

Several business-oriented features were engineered to convert raw customer information into actionable behavioral signals.

#### Frequency Score

Converts purchase frequency into a numerical engagement metric.

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

* Frequency of purchases
* Previous purchases
* Organic buying behavior

#### Loyalty Score B

Engagement-based loyalty framework based on:

* Subscription status
* Customer reviews
* Purchase spending

---

## Analysis Performed

### Question 1

#### Who are genuinely loyal customers versus discount-dependent customers?

Analyzed customer behavior through loyalty metrics and promotional dependency indicators to distinguish naturally loyal customers from promotion-driven customers.

---

### Question 2

#### What behavioral patterns predict high customer value?

Performed correlation analysis to identify which customer behaviors most strongly align with customer value generation.

Key behavioral indicators evaluated:

* Purchase frequency
* Previous purchase history
* Organic purchasing behavior
* Loyalty metrics

---

### Question 3

#### Which geographies and demographics are commercially underleveraged?

Analyzed customer value, loyalty, and organic buying behavior across:

* Geographic regions
* Age groups
* Demographic segments

to identify high-potential customer segments.

---

### Question 4

#### How should promotional and retention strategies be restructured?

Compared discount-dependent and non-discount-dependent customers using:

* Customer value
* Loyalty
* Purchase frequency
* Average purchase amount

to generate retention and promotional strategy recommendations.

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

## Technologies Used

* Python
* Pandas
* RapidFuzz
* Jupyter Notebook
* Google Colab
* Git
* GitHub

---

## Project Structure

```text
customer-retention-analytics/
│
├── data/
│   └── Dataset.csv
│
├── notebooks/
│   └── customer_retention_analysis.ipynb
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
git clone https://github.com/<your-username>/customer-retention-analytics.git
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

## Current Status

### Completed

* Data Understanding
* Data Cleaning
* Exploratory Data Analysis
* Feature Engineering
* Customer Value Modeling
* Loyalty Framework Construction
* Question 1 Analysis
* Question 2 Analysis
* Question 3 Analysis
* Question 4 Analysis

### Upcoming

* SQL Analysis
* Power BI Dashboard
* Executive Summary
* Final Presentation

---

## License

This project is licensed under the MIT License.

---

## Academic Note

This repository contains work completed as part of the IIT Guwahati Consulting Summer Project.

The project is intended for educational, analytical, and portfolio purposes and demonstrates the application of data analytics techniques to customer retention and business strategy problems.
