# Employees-Performance-Analysis
Transformed raw-data for Performance Analysis, delivering actionable insights into team optimization methrics.

Modeled user activity by generating a test dataset of 10,000 fragmented activity logs to simulate and resolve data integration problems.

Implemented an ETL pipeline to aggregate user activity logs, transforming related fragments into productivity metrics to identify and reduce ineffective time (such as social media usage)

Calculated a Utilization Rate (UR) metric per employee and implemented query-ready Views to make data-driven decisions, based on continuous performance monitoring.

## How did i create a dashboard for performance monitoring?

This project demonstrates an end-to-end data pipeline, transforming raw data into actionable business insights.

*   **Data Generation:** Generated **mock datasets** (`employees.csv`, `applications.csv`, `raw_activity_logs.csv`) using Gemini to simulate a realistic operational environment.
*   **ETL Pipeline:** Engineered a organized pipeline by ingesting unprocessed CSV data into **Google BigQuery**.
*   **Data Transformation:** Developed structured **SQL queries** to process raw data and created **Views** for efficient reporting.
*   **Visualization:** Connected BigQuery directly to **Looker Studio** to build an interactive dashboard, featuring a **Utilization Rate Histogram (%)** to track and visualize employee performance metrics.
<img width="1020" height="712" alt="Utilization Rate Hystogram" src="https://github.com/user-attachments/assets/c25b1f03-8e57-4b2b-9350-e72b6ba74e48" />

---

### 🔗 Explore the Project
You can view the full dashboard and interact with the data here:
👉 **[View Interactive Dashboard](https://datastudio.google.com/s/u3xevLZtxH0)**







