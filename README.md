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

## 🚀 Getting Started  

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

Below is a **PySpark script** demonstrating how to set up **OAuth 2.0 authentication** for secure access to **Azure Data Lake** in Databricks.  

![PySpark Authentication Setup](path/to/image.png)  

The script initializes authentication using **Azure Active Directory**, specifying:  
- **Authentication Type:** OAuth  
- **Provider Type:** Client Credentials Token Provider  
- **Client ID & Secret:** Used for authentication  
- **OAuth Endpoint URL:** Connects to Azure’s login system  

This ensures that Databricks securely interacts with Azure **without exposing credentials directly** in queries.  
---























![Screenshot 2025-06-09 225832](https://github.com/user-attachments/assets/6b42be6d-e6b9-4eaf-8af3-084e01dacd06)





























