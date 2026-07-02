# Assignment_Jumbotai

A Python-based inventory replenishment solution that analyzes SKU-level inventory data and generates optimal purchase order suggestions while maintaining inventory norms, safety stock, and warehouse space constraints.

## 📌 Objective

This project recommends replenishment quantities for each SKU by considering:

- Current inventory levels
- Open purchase orders
- Daily demand rate (DRR)
- Inventory norms
- Safety stock requirements
- Case-size rounding
- Warehouse space limitations

The final output provides optimized purchase order recommendations along with projected inventory coverage.

---

## ✨ Features

- Data cleaning and preprocessing
- Exploratory Data Analysis (EDA)
- JSON column parsing
- Inventory coverage calculation (Days of Inventory)
- Purchase order optimization
- Safety stock validation
- Open PO adjustment
- Case-size based order rounding
- Warehouse space constraint handling
- Final replenishment recommendation generation

---

## 📂 Project Structure

```
├── replenishment_planner.ipynb   # Complete analysis and solution
├── assignment_data.csv           # Input dataset
├── final_output.csv              # Recommended replenishment output
└── README.md
```

---

## 📊 Workflow

1. Load and inspect inventory data
2. Clean and validate the dataset
3. Parse nested inventory information
4. Calculate current inventory coverage
5. Account for open purchase orders
6. Compute replenishment requirement
7. Apply business constraints:
   - Safety stock
   - Inventory norms
   - Case size rounding
   - Maximum allocated space
8. Generate final purchase order suggestions

---

## 📈 Output

The solution generates SKU-level recommendations including:

- Suggested Order Quantity
- Suggested Cases
- Projected Days of Inventory
- Final Inventory Value
- Space utilization after replenishment

---

## 🛠️ Tech Stack

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

---

## 🚀 How to Run

1. Clone the repository.

```bash
git clone <repository-url>
```

2. Install the required libraries.

```bash
pip install pandas numpy matplotlib seaborn
```

3. Place the input dataset (`assignment_data.csv`) in the project directory.

4. Open and run:

```text
replenishment_planner.ipynb
```

---

## 📌 Business Rules Implemented

- Maintain inventory norms
- Preserve safety stock
- Include open purchase orders
- Prevent stock-outs
- Round orders to full case quantities
- Respect warehouse space limits
- Calculate projected inventory coverage after replenishment

---
## AI bot
https://chatgpt.com/share/6a45e554-ab2c-83ee-8e8b-e000327b1db8
