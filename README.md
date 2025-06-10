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

### Tech Stack
## 🚗 Step 2
 **Azure Databricks** → Data ingestion, ETL, and exploratory analysis
## 🔐 PySpark OAuth Configuration  

Below is a **PySpark script** demonstrating how to set up **OAuth 2.0 authentication** for secure access to **Azure Data Lake** in Databricks.  ![PySpark Authentication Setup] 
```
spark.conf.set("fs.azure.account.auth.type.<storage-account>.dfs.core.windows.net", "OAuth")
spark.conf.set("fs.azure.account.oauth.provider.type.<storage-account>.dfs.core.windows.net", 
               "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider")
spark.conf.set("fs.azure.account.oauth2.client.id.<storage-account>.dfs.core.windows.net", "<client-id>")
spark.conf.set("fs.azure.account.oauth2.client.secret.<storage-account>.dfs.core.windows.net", "<client-secret>")
spark.conf.set("fs.azure.account.oauth2.client.endpoint.<storage-account>.dfs.core.windows.net", "<oauth2-token-endpoint>")
```


The script initializes authentication using **Azure Active Directory**, specifying:  
- **Authentication Type:** OAuth  
- **Provider Type:** Client Credentials Token Provider  
- **Client ID & Secret:** Used for authentication  
- **OAuth Endpoint URL:** Connects to Azure’s login system  

This ensures that Databricks securely interacts with Azure **without exposing credentials directly** in queries. 
##  Azure Data Lake Access Configuration in Databricks  

Below is a **PySpark configuration snippet**, demonstrating how to set up **Azure Data Lake Storage authentication** in **Databricks**. 

To configure Azure Data Lake access, set the storage account key as follows:

```python
spark.conf.set("fs.azure.account.key.carsalesreport.dfs.core.windows.net", "<YOUR_ACCOUNT_KEY>")
```

The code initializes Spark settings with the **Azure Storage account key**, enabling secure access to the **carsalesreport Data Lake**. This setup allows Databricks to read and write data stored in Azure efficiently.  
🚗### **🔍 Key Configuration Details**  
✅ **Storage Account Key Authentication**: Ensures direct access to Azure Data Lake.  
✅ **Securely Enables Databricks to Read/Write Data**: Critical for large-scale processing in PySpark.  
✅ **Supports Data Pipelines for Synapse SQL & Power BI**: Seamless integration for analytics.  

## ⚡ PySpark Data Ingestion from Azure  

Below is a **PySpark script** used to load raw **car sales data** from **Azure Blob Storage** into a DataFrame in **Databricks**.  

![PySpark Data Ingestion]  ![Screenshot 2025-06-10 113441](https://github.com/user-attachments/assets/ac7a53f6-cf4e-40f5-8486-888383e1fbb5)  

# 🚗 Car Sales Data Processing in PySpark

The following script reads a CSV file into **PySpark**, ensuring proper data structure.  

## 🔍 Code Breakdown  
✅ Uses `spark.read.format("csv")` to load CSV files from Azure Data Lake.  
✅ Applies `.option("header", "true")` to ensure headers are correctly recognized.  
✅ Displays the dataset with `.show()`, showcasing key attributes like **Car Model, Price, Transmission Type, and Customer Details**.

## 🚗 Data Cleaning & Schema Validation  

Before loading data into **Synapse SQL**, we apply **data type conversions** and **encoding corrections** to ensure structured and optimized storage for analysis.  

Below is a **PySpark script** demonstrating essential data cleaning steps before storing the dataset in **Synapse SQL** for analysis.  

![PySpark Data Cleaning]
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

## Exploratory Data Analysis
**Python Code for Data Analysis**  
- Imports essential libraries (`pandas`, `numpy`, `seaborn`, `matplotlib`).  
- Sets `seaborn` style for clean visuals.  
- Ensures inline plot rendering in notebooks.  
- Converts a Spark DataFrame to a Pandas DataFrame (`df.toPandas()`).  
- Checks data types and previews the dataset (`print(pdf.dtypes)`, `print(pdf.head())`).
- 
# Car Sales Distribution by Dealer Region

Below is a **visual breakdown** of car sales across various **dealer regions**, presented in the form of a **pie chart** for quick and effective insight.

![Car Sales Distribution Pie Chart]

![Screenshot 2025-06-10 143157](https://github.com/user-attachments/assets/99b87468-58c2-44a9-8afd-2aa05264f518)

## Overview

The chart illustrates the **percentage contribution** of each dealer region to the total car sales. Notable insights include:

- **Janesville** leads with **15.8%** of total sales.  
- **Scottsdale** and **Aurora** follow with **14.3%** and **13.2%** respectively.  
- **Pasco**, **Greenville**, and **Middletown** each contribute between **13.0% – 13.1%**.

This visualization provides a clear perspective on **regional sales performance**, helping stakeholders identify high-performing areas and uncover opportunities for growth.

## Code Snippet (Visualization Logic)

Below is a sample **code snippet** used to generate the pie chart:

![Code for Generating Pie Chart]

```%python
import pandas as pd
import matplotlib.pyplot as plt

# Aggregate data by Dealer_Region
region_sales = carsalesdata.groupBy("Dealer_Region").agg({"Price ($)": "sum"}).withColumnRenamed("sum(Price ($))", "Total_Sales")

# Convert Spark DataFrame to Pandas DataFrame
region_sales_pd = region_sales.toPandas()

# Plot pie chart
plt.figure(figsize=(10, 7))
region_sales_pd.set_index("Dealer_Region").plot.pie(y="Total_Sales", autopct='%1.1f%%', startangle=90, cmap='viridis')
plt.title("Car Sales Distribution by Dealer Region")
plt.ylabel("")  # Hide the y-label
plt.show()
```

## 👥 Visual Breakdown: Sales by Gender

The following **pie chart** shows the distribution of car sales based on **buyer gender**.

![Car Sales by Gender]


### 🔍 Key Observations

- **Male buyers** account for the dominant share of sales at **78.5%**.  
- **Female buyers** represent the remaining **21.5%** of car sales.

This breakdown provides useful insight into the **gender composition** of car buyers.

---


## 🧾![Screenshot 2025-06-10 141432](https://github.com/user-attachments/assets/25387b16-b3a4-457c-a726-a8703fc614b7)
 Code Snippet (Chart Generation Logic)

Below is a sample **code snippet** used to generate the pie charts for this analysis:

![Code Snippet - Pie Chart Generation]
```
%python
# Aggregate data by Gender
gender_sales = carsalesdata.groupBy("Gender").agg({"Price ($)": "sum"}).withColumnRenamed("sum(Price ($))", "Total_Sales")

# Convert Spark DataFrame to Pandas DataFrame
gender_sales_pd = gender_sales.toPandas()

# Plot pie chart
plt.figure(figsize=(10, 7))
gender_sales_pd.set_index("Gender").plot.pie(y="Total_Sales", autopct='%1.1f%%', startangle=90, cmap='viridis')
plt.title("Car Sales Distribution by Gender")
plt.ylabel("")  # Hide the y-label
plt.show()
```
---
## 🚗 Visual Breakdown: Sales by Body Style

The third **pie chart** illustrates car sales categorized by **body style**.

![Car Sales by Body Style])

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

![Code Snippet - Pie Chart Generation]

---
```%python
import pandas as pd
import matplotlib.pyplot as plt

# Convert Spark DataFrame to Pandas DataFrame
carsalesdata_pd = carsalesdata.toPandas()

# Aggregate data by Body Style
body_style_sales = carsalesdata_pd.groupby("Body Style")["Price ($)"].sum()

# Plot pie chart
plt.figure(figsize=(10, 7))
body_style_sales.plot.pie(autopct='%1.1f%%', startangle=90, cmap='viridis')
plt.title("Car Sales Distribution by Body Style")
plt.ylabel("")  # Hide the y-label
plt.show()
```
## 📊 Total Car Sales by Company

The bar chart shows total car sales for various companies.  
**Chevrolet** leads with over 1750 units sold, followed by **Toyota** and **Nissan** with sales above 1500.

![Total Car Sales by Company]
![Screenshot 2025-06-10 150323](https://github.com/user-attachments/assets/103d1bb4-35fd-407b-afe6-bf89cad5ffd7)


Key observations:

- Moderate sales from **Oldsmobile**, **Lexus**, and **Mercedes-Benz**.  
- Lower sales for **Infiniti**, **Jaguar**, **Saab**, and **Subaru**.

This visualization highlights the sales performance across different car manufacturers.

---

## 🧾 Code Snippet

Sample code used to generate the bar chart, including data aggregation and plotting.

![Code Snippet]

```%python
# Group by company and count sales
sales_by_company = df.groupBy("Company").count().withColumnRenamed("count", "Total_Sales")

# Convert to Pandas DataFrame for plotting
sales_by_company_pd = sales_by_company.toPandas()

# Plot Bar Chart
plt.figure(figsize=(12,6))
sns.barplot(x="Company", y="Total_Sales", data=sales_by_company_pd)
plt.xticks(rotation=45)
plt.title("Total Car Sales by Company")
plt.show()
```

## 📈 Scatter Plot of Price ($) vs Annual Income

The scatter plot shows most car purchases occur at lower prices (under $40,000) and incomes (below 0.2 units).  
There’s a wide price range across income levels, with little strong correlation between income and car price, highlighted by a red trend line and some outliers.

![Scatter Plot - Price vs Income]

![Screenshot 2025-06-10 150947](https://github.com/user-attachments/assets/6f212df5-58a8-4ebb-aca6-b503c98e2627)
Feel free to explore the code and visuals to better understand the trends in car sales by **region**, **gender**, and **body style**, **Annual Income**.
## 🧾 Code Snippet

Sample code used to generate the scatter plot.

![Code Snippet]
```
# Convert Spark DataFrame to Pandas DataFrame
carsalesdata_pd = carsalesdata.toPandas()

# Plot scatter plot for Price ($) and Annual Income
plt.figure(figsize=(10, 7))
plt.scatter(carsalesdata_pd["Price ($)"], carsalesdata_pd["Annual Income"], color='blue', alpha=0.5)
plt.title("Scatter Plot of Price ($) vs Annual Income")
plt.xlabel("Price ($)")
plt.ylabel("Annual Income")

# Calculate the linear regression line
x = carsalesdata_pd["Price ($)"]
y = carsalesdata_pd["Annual Income"]
m, b = np.polyfit(x, y, 1)
plt.plot(x, m*x + b, color='red')  # Add the linear line

plt.show()
```

## 📊 Car Price Preferences by Gender

The box plot shows median car prices around $20,000–$25,000 for both genders, with similar purchase ranges.  
Both male and female buyers have outliers at higher prices (up to $80,000+), indicating some buy more expensive cars.

![Car Price by Gender]



![Screenshot 2025-06-10 152031](https://github.com/user-attachments/assets/c1d75f05-af14-4afa-b8a1-2facc331ced9)

Try the code below to generate the box plot showing car price preferences by gender:
![Code Snippet]

```python
import matplotlib.pyplot as plt
import seaborn as sns

plt.figure(figsize=(12,6))
sns.boxplot(x="Gender", y="Price", data=df.toPandas(), palette="coolwarm")

plt.title("Car Price Preferences by Gender")
plt.xlabel("Gender")
plt.ylabel("Price ($)")
plt.show()
```


## 💎 Luxury Car Purchases by Gender

The bar chart highlights the difference in luxury car purchases by gender.  
Male buyers account for over 2000 units, while female buyers show significantly lower totals (around 500–600).  
This chart highlights a notable disparity in luxury car purchasing between genders, with males dominating this segment.

![Luxury Car Purchases by Gender]

Try the code below to generate this bar chart:


```python
import matplotlib.pyplot as plt
import seaborn as sns

# Define luxury car brands
luxury_brands = ["Cadillac", "BMW", "Mercedes-Benz", "Audi", "Lexus"]

# Filter DataFrame for luxury cars
df_luxury = df.filter(df["Company"].isin(luxury_brands))

# Group by gender and count
sales_by_gender_luxury = df_luxury.groupBy("Gender").count().toPandas()

# Plotting
sns.barplot(x="Gender", y="count", data=sales_by_gender_luxury, palette="coolwarm")
plt.title("Luxury Car Purchases by Gender")
plt.xlabel("Gender")
plt.ylabel("Total Sales")
plt.show()
```
## 🚗 Average Car Price by Gender

The bar chart illustrates the average car price by gender.  
Both female and male buyers spend approximately $27,500 on average, suggesting nearly identical overall spending.  
This chart provides insight into average purchase behavior, regardless of luxury preferences.

![Average Car Price by Gender]

![Screenshot 2025-06-10 155243](https://github.com/user-attachments/assets/12ad93c1-7e6b-4cdd-8d8d-487e7360176e)

Try the code below to generate this visualization:

```
from pyspark.sql.functions import avg

avg_price_by_gender = df.groupBy("Gender").agg(avg("Price").alias("Avg_Price")).toPandas()

sns.barplot(x="Gender", y="Avg_Price", data=avg_price_by_gender, palette="coolwarm")
plt.title("Average Car Price by Gender")
plt.xlabel("Gender")
plt.ylabel("Avg Price ($)")
plt.show()
```
## 🚘 Car Sales by Body Style and Gender

The bar chart displays total car sales segmented by both body style and gender.  
Male buyers consistently purchase more cars across all body styles. SUVs and Hatchbacks are the most popular for both genders, followed by Sedans.  
This chart provides a clear view of body style preferences further broken down by gender.

![Car Sales by Body Style and Gender]

![Screenshot 2025-06-10 160001](https://github.com/user-attachments/assets/3d388d1a-42b6-429c-ba58-5cd217fbd5a2)

Try the code below to generate this visualization:

```python
# Convert Spark DataFrame to Pandas
sales_by_body_style_gender_pd = sales_by_body_style_gender.toPandas()

import matplotlib.pyplot as plt
import seaborn as sns

plt.figure(figsize=(12,6))
sns.barplot(
    x="Body Style",
    y="Total_Sales",
    hue="Gender",
    data=sales_by_body_style_gender_pd,
    palette="coolwarm"
)

plt.xticks(rotation=45)
plt.title("Car Sales by Body Style and Gender")
plt.xlabel("Body Style")
plt.ylabel("Total Sales")
plt.legend(title="Gender")
plt.show()
```

## 📈 Car Sales Trend Over Time by Body Style and Gender

This line graph illustrates car sales trends from early 2022 to early 2023 across different body styles.  
SUVs show the strongest growth, while Sedans and Hatchbacks remain stable or increase gradually.  
The trends imply varying gender preferences tied to body style over time.

![Car Sales Trend Over Time by Body Style and Gender]

Try the code below to generate the box plot showing car price preferences by gender:

```python
# Convert Spark DataFrame to Pandas
sales_trend_pd = sales_trend.toPandas()

import matplotlib.pyplot as plt
import seaborn as sns

plt.figure(figsize=(12,6))
sns.lineplot(
    x="Year",
    y="Sales_Count",
    hue="Body Style",
    data=sales_trend_pd,
    marker="s"
)

plt.title("Car Sales Trend Over Time by Body Style and Gender")
plt.xlabel("Year")
plt.ylabel("Total Sales")
plt.xticks(rotation=45)
plt.legend(title="Body Style & Gender")
plt.show()
```

## Data Transformation

This section covers the process of transforming raw data using PySpark. After reading the data from Azure Data Lake Storage, you can perform various data cleansing, filtering, and aggregation operations before saving the processed data back to the lake.

Below is an example illustrating how to read the raw data, apply transformations, and configure the connection securely.

---

# Azure Data Lake Storage with PySpark

This example shows how to:

- Initialize a Spark session
- Read data from Azure Data Lake Storage Gen2 (ADLS Gen2)
- Configure Spark to authenticate using your storage account key

---

## Prerequisites

- Apache Spark installed with PySpark
- Access to an Azure Data Lake Storage Gen2 account
- Storage account key (handled securely, **do not** hardcode it in production)

---

## Usage

Replace the placeholder `<your-storage-account-key>` in the code with your actual storage account key. For security, consider using environment variables or Azure Key Vault instead of hardcoding keys.

```python
# Import necessary libraries
from pyspark.sql import SparkSession

# Initialize Spark session
spark = SparkSession.builder.appName("DataLakeWrite").getOrCreate()

# Load your DataFrame (replace path with your actual data location)
df = spark.read.csv(
    "abfss://<container>@<storage-account>.dfs.core.windows.net/raw-data/",
    header=True,
    inferSchema=True
)

# Define the storage account and container path
storage_account = "<storage-account>"
container = "<container>"
data_path = f"abfss://{container}@{storage_account}.dfs.core.windows.net/transformed-data/your-data-folder"

# Configure authentication with the storage account key
spark.conf.set(
    f"fs.azure.account.key.{storage_account}.dfs.core.windows.net",
    "<your-storage-account-key>"
)

# Write DataFrame to Azure Data Lake Storage
df.write.option("header", 'true').csv(data_path)

print("Data successfully written to Azure Data Lake Storage!")
````
**Tech Stack**
## Step 2: Query Data in Azure Synapse
- 🚗 **Driving Data Insights with Azure Synapse Analytics**
- - Connect to the Synapse workspace
- Execute SQL queries
- Retrieve insights from processed data
This project puts data in the fast lane by combining the powerful engine of Databricks for data transformation with the sleek dashboard of Azure Synapse Analytics for real-time, SQL-driven analysis — delivering high-performance insights at every turn.

## Moving Average of Daily Sales

This table shows the **3-day moving average** of daily car sales, which includes the current day and the two preceding days. This method smooths out daily fluctuations to highlight short-term sales trends.

### Key Observations:

- On **2022-01-02**, the moving average was **35**
- On **2022-01-03**, it dropped to **27**
- On **2022-01-04**, it further decreased to **23**

The moving average offers a clearer perspective on sales performance trends over time, providing better insights than raw daily figures alone.

### Visualization

Below is a screenshot of the "Total Customers" line graph generated from the query results:

![Moving Average of Daily Sales]

![Screenshot 2025-06-10 183415](https://github.com/user-attachments/assets/897b3527-320b-42f2-806e-4452c03c4199)

![Car_Sale_Query (5)](https://github.com/user-attachments/assets/a6de0bcb-0a04-48ee-b86e-cc6a5d1af2bc)




## Customer Trend Analysis

## Customer Type Distribution

This section explains the **Total Customers** chart, which actually shows the distribution of customer types based on purchase frequency:

- At **0** on the x-axis: **Returning Buyers** (almost 1,900 customers)  
- At **1** on the x-axis: **First-Time Buyers** (1,200 customers)  

This clarifies that the chart reflects the proportion of returning vs. first-time customers, highlighting that returning buyers significantly outnumber first-time buyers.

### Visualization
Below is a screenshot of the "Total Customers" line graph generated from the query results:

![Total Customers Line Graph]
![Car_Sale_Query (2)](https://github.com/user-attachments/assets/cedc1e1a-f2d3-494d-a598-4aceffebb8d2)

## Code Snapshot (Visualization Logic)

Below is a screenshot showing the code used to generate the line chart:
![Screenshot 2025-06-10 174759](https://github.com/user-attachments/assets/e6dd368c-ee92-459e-8455-1af5d2ba47a7)




🧭 **Navigating Data Journeys with Power BI**

After tuning the data engine in Databricks and cruising through analysis in Azure Synapse Analytics, this project reaches its destination with dynamic, interactive dashboards in Power BI — providing a clear, visual roadmap of business performance.


![Screenshot 2025-06-09 225832](https://github.com/user-attachments/assets/6ce5e43f-19e2-44bb-a881-dafc3842bf20)





# Conclusion: Accelerating Strategic Insights in the Automotive Industry 🏁

This project successfully transforms raw transactional data into powerful business intelligence that fuels strategic decision-making within the automotive sector. Through a streamlined pipeline leveraging **Databricks**, **Azure Synapse Analytics**, and **Power BI**, we unlocked deep insights across key dimensions:

- 🚗 Identified **top-performing car models and manufacturers**  
- 🚘 Discovered correlations between **pricing, income levels, and purchasing behavior**  
- 🚙 Performed **gender-based analysis** to reveal market trends and preferences  
- 🚕 Compared **regional and brand-based performance** to highlight competitive advantages  
- 🚓 Pinpointed **monthly sales peaks** to inform inventory and marketing strategies  
- 🏎 Delivered **real-time dashboards** providing instant visibility into sales and customer demographics  

By integrating cutting-edge tools and embracing a data-driven mindset, this project empowers business leaders to take the driver’s seat — steering growth, targeting the right customers, and confidently navigating a competitive landscape.

---

## Future Steps 🚀

To further amplify the impact of this project, future enhancements could include:

- 🚗 **Incorporating predictive analytics** to forecast sales trends and customer behavior  
- 🚘 **Integrating external data sources** such as market trends, economic indicators, or social media sentiment for richer context  
- 🚙 **Building personalized recommendation engines** to enable targeted marketing campaigns  
- 🚕 **Expanding real-time analytics** with automated alerts and AI-driven insights  
- 🚓 **Applying advanced segmentation** with machine learning to uncover hidden customer profiles and preferences  

These initiatives will enable more proactive, intelligent decision-making, helping maintain a competitive edge in the rapidly evolving automotive market.




















