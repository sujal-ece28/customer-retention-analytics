# Customer Retention Analytics

## Project Overview

This project analyzes customer retention patterns and builds customer value scoring models to identify high-value customers and optimize retention strategies.

## What's Inside

- `notebooks/` — Jupyter notebook with data analysis and modeling
- `data/` — Dataset (Dataset.csv)
- `dashboard/` — Dashboard files (coming soon)

## Quick Start

### Prerequisites

- Python 3.7 or higher
- pip (Python package manager)

### Setup Steps

1. **Create a virtual environment** (recommended):

   ```bash
   python -m venv venv
   ```

2. **Activate virtual environment**:
   - On Windows: `venv\Scripts\activate`
   - On macOS/Linux: `source venv/bin/activate`

3. **Install dependencies**:

   ```bash
   pip install -r requirements.txt
   ```

4. **Run the notebook**:
   ```bash
   jupyter notebook notebooks/deliverables.ipynb
   ```

## Key Features Analyzed

- Customer Value Score calculation
- Loyalty Score (Behavioral vs Commitment)
- Demographic insights (age, gender, location)
- Promotional strategy recommendations
- Ideal customer profile definition

## Data Requirements

- Input: `data/Dataset.csv`
- Expected columns: Customer ID, Age, Gender, Location, Purchase Amount, Frequency of Purchases, Subscription Status, Review Rating, and more

## Analysis Highlights

### Q1: What behavioral patterns predict high customer value?

- Loyalty Score A (behavioral loyalty) shows the strongest correlation (0.666) with customer value
- Purchase history depth and buying frequency are critical indicators

### Q2: Which geographies and demographics are underlevered?

- Age groups 36-45 and 46-55 show highest per-customer value and organic buying rates
- Geographic analysis identifies premium locations with untapped potential

### Q3: Promotional Strategy

- Discount-dependent customers show similar value metrics to organic buyers
- Recommendation: Move toward targeted campaigns and loyalty-based rewards instead of blanket discounts

### Q4: Ideal Customer Profile

- Age: ~44 years (mid-40s)
- Primary location: High-value geographic clusters
- Frequency: Weekly purchases
- Subscription: 28.5% of top customers
- Organic buyers: 56.2% do not require discounts
