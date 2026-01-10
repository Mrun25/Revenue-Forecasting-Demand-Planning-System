## 1. Business Context

Marketing and product teams invest heavily in acquiring users, but acquisition alone does not guarantee revenue. The real challenge lies in converting users efficiently from initial interaction to completed purchase.

Additionally, product changes are often rolled out without strong evidence that they improve conversion, increasing the risk of negative business impact.

This project analyzes funnel performance and evaluates an A/B test to support evidence-based product decisions.

---

## 2. Business Problems Solved

### Funnel Inefficiency
- Where do users drop off in the conversion funnel?
- Which stages contribute most to lost revenue?
- Are drop-offs consistent across user groups?

### Experiment Evaluation
- Does the experimental variant outperform the control?
- Is the observed lift statistically significant?
- Should the change be rolled out or iterated?

---

## 3. Dataset Overview

**Source:** Kaggle — Olist Marketing Funnel Dataset

**Key Fields:**
- `user_id`: Unique identifier for users
- `event`: Funnel stage (impression, click, view, add_to_cart, purchase)
- `date`: Event timestamp
- `experimentGroup`: Control or Experiment
- `modelName`: Product or variant tested

Each record represents a single user action at a specific point in time.

---

## 4. Technical Architecture

**Tools Used**
- Python (Jupyter, pandas)
- MySQL
- SQL
- Power BI
- ODBC

**Pipeline**
CSV Dataset
→ Data Ingestion
→ Data Cleaning
→ Funnel & A/B Logic
→ SQL Views
→ Power BI Dashboard

---

## 5. Funnel Definition

The funnel was defined as a sequential journey:

1. Impression  
2. Click  
3. Product View  
4. Add to Cart  
5. Purchase  

Users were counted uniquely at each stage, and conversion rates were calculated between consecutive steps.

---

## 6. Funnel Analysis Methodology

For each funnel stage:
- Unique users were counted
- Conversion rates were calculated

Example:

---

## 5. Funnel Definition

The funnel was defined as a sequential journey:

1. Impression  
2. Click  
3. Product View  
4. Add to Cart  
5. Purchase  

Users were counted uniquely at each stage, and conversion rates were calculated between consecutive steps.

---

## 6. Funnel Analysis Methodology

For each funnel stage:
- Unique users were counted
- Conversion rates were calculated

Example:
Click → Product View Conversion =
Users who viewed product / Users who clicked

Analysis was conducted overall and separately for Control and Experiment groups.

---

## 7. A/B Testing Methodology

### Experiment Design
- Random assignment to Control and Experiment
- Purchase conversion selected as primary metric

### Metrics
- Conversion rate
- Absolute and relative lift
- Sample size per group

### Statistical Testing
A two-proportion z-test was used to evaluate statistical significance.

---

## 8. Key Insights

- Major drop-offs occurred in mid-funnel stages
- Experimental variant showed higher conversion than control
- Statistical testing determined whether rollout was justified

---

## 9. Business Impact

This project enables teams to:
- Identify high-impact funnel optimization opportunities
- Make evidence-based product decisions
- Reduce experimentation risk

---

## 10. Deliverables

- SQL views for funnel and experiment metrics
- Power BI dashboard with funnel and A/B comparison
- Reproducible notebooks documenting the workflow

---

## 11. Limitations

**Limitations**
- Short-term conversion focus
- Assumes clean randomization