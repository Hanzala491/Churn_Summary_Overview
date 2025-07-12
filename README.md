## 📊 Project Overview

This project focuses on predicting customer churn using machine learning and visualizing insights with a dynamic Power BI dashboard. It leverages a Random Forest Classifier to identify customers likely to leave and provides key churn insights across demographics, services, geography, and account information.

---

## 🔍 Problem Statement

Customer churn is one of the key metrics in customer-centric industries like telecom, SaaS, or internet services. Retaining customers is significantly more cost-effective than acquiring new ones. This project aims to:
- Predict whether a customer will churn.
- Analyze churn distribution and trends.
- Visualize insights using an interactive dashboard.

---

## 📁 Project Structure
├── data/
│ └── Prediction_Data.xlsx # Raw and joiner data used in the project
├── model/
│ └── churn_model.pkl # Trained Random Forest model
│ └── label_encoders.pkl # Saved label encoders for categorical columns
├── output/
│ └── Predictions.csv # Predicted churn customers
├── dashboard/
│ └── churn_analysis_dashboard.pbix # Power BI Dashboard file
├── churn_prediction.ipynb # Google Colab-compatible Python notebook
└── README.md


---

## 🧠 Technologies Used

- **Python** (Pandas, Scikit-learn, Seaborn, Matplotlib)
- **Machine Learning**: Random Forest Classifier
- **Excel** for data input
- **Power BI** for dashboard visualization
- **Google Colab** for model development
- **Joblib** for saving models

---

## ⚙️ Key Features

### ✔️ Data Preprocessing
- Dropped irrelevant features
- Label encoding for categorical variables
- Train-test splitting

### ✔️ Model Building
- Trained a Random Forest Classifier
- Model evaluation using Confusion Matrix and Classification Report
- Feature importance analysis

### ✔️ New Data Prediction
- Loads new joiner data
- Applies the trained model
- Filters predicted churned customers
- Saves predictions to CSV

---

## 📈 Dashboard Insights

The Power BI dashboard provides a clean summary of churn analysis:

- **KPIs**: Total Customers, New Joiners, Churn Count, Churn Rate
- **Demographics**: Churn by Gender, Age Group
- **Account Info**: Churn by Contract, Payment Method, Tenure
- **Geographic Distribution**: Top 5 States by Churn
- **Services Used**: Churn by Internet Type and Add-ons
- **Churn Distribution**: Reasons and Categories for churn

> Screenshot of the dashboard:
> ![Churn Dashboard](./dashboard/churn_analysis_summary.png)

---

## 🚀 How to Run

### 1. Upload data to Colab
```python
from google.colab import files
uploaded = files.upload()

### 2. Train the Model
rf_model.fit(X_train, y_train)

### 3. Predict on new joiner data
new_predictions = rf_model.predict(new_data)

### 4. Export churned customers
churned_customers.to_csv("Predictions.csv", index=False)

Requirements
Install required libraries if not already:

pip install pandas scikit-learn seaborn matplotlib openpyxl joblib

✨ Future Improvements
Add hyperparameter tuning using GridSearchCV

Build a REST API using FastAPI or Flask

Schedule retraining jobs and automate prediction pipeline

Host Power BI dashboard with dynamic data connection

📬 Contact
Author: Hanzala
📧 Email: hanzalasiddiqe83@gmail.com
🔗 LinkedIn: (https://www.linkedin.com/in/hanzala-siddiqe-918567265/)

📄 License
This project is open-source and available under the MIT License.
