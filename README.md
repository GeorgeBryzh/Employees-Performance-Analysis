# Employees-Performance-Analysis
Transformed raw-data for Performance Analysis, delivering actionable insights into team optimization methrics.

Modeled user activity by generating a test dataset of 10,000 fragmented activity logs to simulate and resolve data integration problems.

Implemented an ETL pipeline to aggregate user activity logs, transforming related fragments into productivity metrics to identify and reduce ineffective time (such as social media usage)

Calculated a Utilization Rate (UR) metric per employee and implemented query-ready Views to make data-driven decisions, based on continuous performance monitoring.

## How to create an View?
### Or, how create dynamical storage for re-updatable UR methric?
I used Gemini to create 3 fake raw data tables for transformation: 'employees.csv', 'applications.csv', 'raw_activity_logs.csv'
Then i exported these files into data BigQuery this way: 
  1.Created dataset 
  2.Created table selecting created table from upload (thus, from explorer)
After i created 1 query that used these tables to create View

And put Run to generate

The generated views has been exported to Google Data studio to shows this Result




