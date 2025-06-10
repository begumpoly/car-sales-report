# 🚗 Car Sales Data Analytics Project

![A diagram showing th](https://github.com/user-attachments/assets/81cdfcac-ce51-4caf-87a1-dee2de8cf138)

This project demonstrates a full-scale data analytics solution for car sales using **Azure Databricks**, **Azure Synapse SQL**, and **Power BI**. It focuses on building a modern data pipeline to analyze automotive sales trends, customer behavior, and pricing strategies.

## 📅 Data Collection Period

The dataset includes car sales transactions from **January 2, 2022 to December 31, 2023**, offering a comprehensive two-year view of sales performance, customer demographics, and dealership activity.

## 🎯 Project Objective

The objective is to transform raw transactional data into meaningful business insights that support strategic decisions in the automotive industry. Key focus areas include:

- Identifying top-performing **car models** and **car companies**
- Analyzing the relationship between **pricing**, **customer income**, and **purchasing patterns**
- Performing **gender-based analysis** to understand preferences and behavioral differences
- Comparing sales performance across **car manufacturers** and **regions**
- Detecting **monthly peak sales trends** to identify high-demand periods and seasonal effects
- Enabling **real-time dashboards** for sales, demographics, and market insights

## 🧰 Tech Stack

- **Azure Databricks**: For data ingestion, transformation (ETL), and exploratory analysis
- **Azure Synapse SQL**: For structured querying and optimized data warehousing
- **Power BI**: For creating dynamic, interactive visualizations and business dashboards
- This project showcases how cloud-based tools can streamline data workflows and deliver deep insights into automotive market trends and customer behavior.

##  Getting Started  

![flowchart](https://github.com/user-attachments/assets/a237644e-0654-4db6-9bf5-c667e3d3739d)

1️⃣ **Upload Data**  
- Store raw CSV files in **Azure Blob Storage** or **Azure Data Lake Gen2**.  

2️⃣ **Process Data in Databricks**  
- Use **PySpark** or SQL transformations to clean and prepare the data.  

3️⃣ **Load Data into Synapse SQL**  
- Store cleaned data in **Azure Synapse Analytics** for fast querying.  

4️⃣ **Analyze and Visualize in Power BI**  
- Connect Synapse SQL to **Power BI dashboards** for real-time insights.  

## 🔐 PySpark OAuth Configuration  

Below is a **PySpark script** demonstrating how to set up **OAuth 2.0 authentication** for secure access to **Azure Data Lake** in Databricks.  ![PySpark Authentication Setup](path/to/image.png) 
![Screenshot 2025-06-10 103954](https://github.com/user-attachments/assets/c978ae98-c39f-4e66-9d79-89521f2a09e0)


The script initializes authentication using **Azure Active Directory**, specifying:  
- **Authentication Type:** OAuth  
- **Provider Type:** Client Credentials Token Provider  
- **Client ID & Secret:** Used for authentication  
- **OAuth Endpoint URL:** Connects to Azure’s login system  

This ensures that Databricks securely interacts with Azure **without exposing credentials directly** in queries. 
##  Azure Data Lake Access Configuration in Databricks  

Below is a **PySpark configuration snippet**, demonstrating how to set up **Azure Data Lake Storage authentication** in **Databricks**.  

![Azure Data Lake Access Setup](path/to/image.png) 
![Screenshot 2025-06-10 105153](https://github.com/user-attachments/assets/9d2bc243-ff34-4889-9875-5e3cf1b8f3d2)

The code initializes Spark settings with the **Azure Storage account key**, enabling secure access to the **carsalesreport Data Lake**. This setup allows Databricks to read and write data stored in Azure efficiently.  
🚗### **🔍 Key Configuration Details**  
✅ **Storage Account Key Authentication**: Ensures direct access to Azure Data Lake.  
✅ **Securely Enables Databricks to Read/Write Data**: Critical for large-scale processing in PySpark.  
✅ **Supports Data Pipelines for Synapse SQL & Power BI**: Seamless integration for analytics.  

## ⚡ PySpark Data Ingestion from Azure  

Below is a **PySpark script** used to load raw **car sales data** from **Azure Blob Storage** into a DataFrame in **Databricks**.  

![PySpark Data Ingestion](path/to/image.png)  ![Screenshot 2025-06-10 113441](https://github.com/user-attachments/assets/ac7a53f6-cf4e-40f5-8486-888383e1fbb5)  

# 🚗 Car Sales Data Processing in PySpark

The following script reads a CSV file into **PySpark**, ensuring proper data structure.  

## 🔍 Code Breakdown  
✅ Uses `spark.read.format("csv")` to load CSV files from Azure Data Lake.  
✅ Applies `.option("header", "true")` to ensure headers are correctly recognized.  
✅ Displays the dataset with `.show()`, showcasing key attributes like **Car Model, Price, Transmission Type, and Customer Details**.

## 🚗 Data Cleaning & Schema Validation  

Before loading data into **Synapse SQL**, we apply **data type conversions** and **encoding corrections** to ensure structured and optimized storage for analysis.  

Below is a **PySpark script** demonstrating essential data cleaning steps before storing the dataset in **Synapse SQL** for analysis.  

![PySpark Data Cleaning](path/to/image.png)  
![Screenshot 2025-06-10 130302](https://github.com/user-attachments/assets/2b0a3d67-c47e-49f7-b6bd-f1876e0353f9)  

### ✨ Key Transformations  
- **Date Format Conversion:** Converts string-based dates into a proper `DateType` for optimized filtering.  
- **Encoding Fixes:** Removes unwanted characters from text fields like `Engine`.  
- **Schema Validation:** Confirms correct column data types before database ingestion.  

## 📌 Date Format Conversion  
The `Date` column is originally stored as a string (`M/d/yyyy`). Using `to_date()`, we convert it into a **proper DateType** for advanced filtering and sorting. 
## 📌 Schema Overview  
Below is the schema of the **PySpark DataFrame** used in this project, displaying column names, data types, and nullability.

![Screenshot 2025-06-10 140354](https://github.com/user-attachments/assets/9edfc865-4447-4cba-ab26-49b1a626545e)

##🚗Rows



![Screenshot 2025-06-10 140857](https://github.com/user-attachments/assets/fccd7cb5-6817-4518-a5e6-14dc1a179a2a)

**Python Code for Data Analysis**  
- Imports essential libraries (`pandas`, `numpy`, `seaborn`, `matplotlib`).  
- Sets `seaborn` style for clean visuals.  
- Ensures inline plot rendering in notebooks.  
- Converts a Spark DataFrame to a Pandas DataFrame (`df.toPandas()`).  
- Checks data types and previews the dataset (`print(pdf.dtypes)`, `print(pdf.head())`).
- 
# Car Sales Distribution by Dealer Region

Below is a **visual breakdown** of car sales across various **dealer regions**, presented in the form of a **pie chart** for quick and effective insight.

![Car Sales Distribution Pie Chart](path/to/pie_chart.png)

![Screenshot 2025-06-10 143157](https://github.com/user-attachments/assets/09cf3d0f-3210-4564-80ed-0b924688d858)

## Overview

The chart illustrates the **percentage contribution** of each dealer region to the total car sales. Notable insights include:

- **Janesville** leads with **15.8%** of total sales.  
- **Scottsdale** and **Aurora** follow with **14.3%** and **13.2%** respectively.  
- **Pasco**, **Greenville**, and **Middletown** each contribute between **13.0% – 13.1%**.

This visualization provides a clear perspective on **regional sales performance**, helping stakeholders identify high-performing areas and uncover opportunities for growth.

## Code Snippet (Visualization Logic)

Below is a sample **code snippet** used to generate the pie chart:

![Code for Generating Pie Chart](path/to/code_image.png)

![Screenshot 2025-06-10 143214](https://github.com/user-attachments/assets/e793f4be-088f-41d4-975e-3bca1255130b)

## 👥 Visual Breakdown: Sales by Gender

The following **pie chart** shows the distribution of car sales based on **buyer gender**.

![Car Sales by Gender](path/to/gender_pie_chart.png)


### 🔍 Key Observations

- **Male buyers** account for the dominant share of sales at **78.5%**.  
- **Female buyers** represent the remaining **21.5%** of car sales.

This breakdown provides useful insight into the **gender composition** of car buyers.

---


## 🧾![Screenshot 2025-06-10 141432](https://github.com/user-attachments/assets/25387b16-b3a4-457c-a726-a8703fc614b7)
 Code Snippet (Chart Generation Logic)

Below is a sample **code snippet** used to generate the pie charts for this analysis:

![Code Snippet - Pie Chart Generation](path/to/code_snippet_image.png)
![Screenshot 2025-06-10 145054](https://github.com/user-attachments/assets/1a79441c-5c6a-4926-a7ed-671015efe95f)

---
## 🚗 Visual Breakdown: Sales by Body Style

The third **pie chart** illustrates car sales categorized by **body style**.

![Car Sales by Body Style](path/to/body_style_pie_chart.png)

![Screenshot 2025-06-10 142920](https://github.com/user-attachments/assets/6f7ee4dc-6cb0-49cd-9139-593f6bfb61a6)

### 🔍 Key Observations

- **SUV** is the most popular body style, making up **25.4%** of sales.  
- **Hatchback** follows closely at **24.8%**.  
- **Sedan** accounts for **19.9%** of sales.  
- **Passenger cars** represent **17.0%** of sales.  
- **Hardtop** is the least common, at **12.9%**.

This analysis provides insight into **customer preferences** regarding car body styles.

---

## 🧾 Code Snippet (Chart Generation Logic)

Below is a sample **code snippet** used to generate the pie charts for this analysis:

![Code Snippet - Pie Chart Generation](path/to/code_snippet_image.png)

---
![Screenshot 2025-06-10 142938](https://github.com/user-attachments/assets/526034d7-92cc-425d-99e3-a35194e607b7)

Feel free to explore the code and visuals to better understand the trends in car sales by **region**, **gender**, and **body style**.




























