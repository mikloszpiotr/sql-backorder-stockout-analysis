
# 📦 Backorder & Stockout Risk Analysis with SQL

## 🚀 Project Overview

In this SQL project, we analyze inventory health, supplier performance, and customer fulfillment risk in order to:

- Detect backorders and stockouts
- Rank high-risk SKUs
- Identify supplier lead-time issues
- Recommend replenishment priorities

This analysis simulates a real supply chain operations scenario and highlights **advanced SQL techniques**, including **window functions**, **CTEs**, and **aggregation logic**.

---

## 🧠 Business Questions Answered

1. Which SKUs are most frequently backordered or stocked out?
2. What is the average inventory coverage in days?
3. How are suppliers performing based on lead time and volume?
4. Which regions experience the most fulfillment issues?
5. What’s the rolling 7-day trend of backorders? *(Window Function)*
6. Which SKUs are highest risk? *(Ranking with Window Function)*
7. What clusters of product category × region have the worst stockout rate?

---

## 🗂️ Folder Structure

```
backorder-stockout-risk-sql/
│
├── data/
│   ├── inventory.csv
│   ├── sales_orders.csv
│   └── suppliers.csv
│
├── sql/
│   ├── 01_inventory_summary.sql
│   ├── 02_stockout_detection.sql
│   ├── 03_backorder_analysis.sql
│   ├── 04_days_of_inventory.sql
│   ├── 05_supplier_performance.sql
│   ├── 06_region_risk.sql
│   ├── 07_replenishment_priority.sql
│   ├── 08_backorder_window.sql
│   ├── 09_risk_ranking_window.sql
│   └── 10_category_region_cluster.sql
│
└── README.md
```

---

## 📊 Data Sources (CSV)

- `inventory.csv`: SKU master with stock, demand, lead times
- `sales_orders.csv`: Order-level data with fulfillment status and region
- `suppliers.csv`: Supplier master data

---

## 🧪 SQL Skill Progression

This project intentionally progresses from beginner to advanced topics:

| Step | Concept | Description |
|------|---------|-------------|
| 01   | `GROUP BY` | SKU and category summaries |
| 02   | `JOIN`, `CASE` | Stockout flagging |
| 03   | Aggregation | Total backorders |
| 04   | Math & logic | Inventory coverage |
| 05   | Joins & Aggregation | Supplier performance |
| 06   | Conditional Aggregation | Regional fulfillment issues |
| 07   | Threshold logic | Replenishment alerts |
| 08   | `WINDOW` - Rolling | Backorder trends |
| 09   | `RANK()` | High-risk SKU identification |
| 10   | Composite GROUP | Category × Region cluster risks |

---

## ✅ Tools Used

- SQL (PostgreSQL syntax compatible)
- CSVs generated in Python
- GitHub for portfolio publishing

---

## 💡 Insights & Action

- Replenishment should prioritize SKUs with coverage < lead time
- Long-lead-time suppliers must be monitored for delay risk
- North & West regions show high unfulfilled rates – focus safety stock
- Products in "Electronics" category show highest stockout in East region

---

## 👨‍💻 Author

**Piotrek Miklosz**  
Data-Driven Supply Chain Analyst | SQL • Python • Power BI  
