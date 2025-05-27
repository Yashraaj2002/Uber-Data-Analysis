# Uber Trip Data Dashboard Project 🚗📊

## Project Goal 🎯  
Address key business questions:  
- When and where do peak Uber bookings occur?  
- How do payment types, trip times (day/night), and vehicle types impact revenue and usage?  
- What are the distance patterns and customer preferences for pickups?  

Analyze Uber trip data to extract actionable insights that help optimize fleet allocation, pricing strategies, and enhance customer experience.

---

## Data Preparation Process ⚙️  

1. **Data Cleaning & Normalization:**  
   Used Excel Power Query and VBA for date/time standardization, handling missing values, and data type consistency.

2. **ETL & Storage:**  
   Loaded cleaned data into PostgreSQL with appropriate data types (timestamps, numerics).

3. **Data Aggregation & Manipulation:**  
   Applied advanced SQL techniques including window functions, grouping, and filtering to prepare analytical datasets.

4. **Business Logic Implementation:**  
   Embedded classification rules (e.g., day vs. night trips) within SQL queries for dynamic segmentation.

5. **Visualization Setup:**  
   Developed interactive Power BI dashboards with dynamic filters and drill-through capabilities for actionable insights.


---

## Tools & Technologies 🛠️  
- **PostgreSQL:** Complex querying, data aggregation, business logic implementation.  
- **Excel Power Query & VBA:** Data cleaning, transformation, normalization.  
- **Power BI:** Interactive dashboards, dynamic filtering, and drill-through reporting.

---

## Project Structure 📁  
- `Dashboard_Report.pbix` — Power BI file containing the 3-page interactive dashboard with KPIs, booking trends, and drill-through tables.  
- `SQL_Queries.sql` — Collection of SQL scripts for data aggregation, business logic, and dataset preparation.  

---

## Key Insights & Business Impact 💡  
- Peak demand times identified by hour and day, enabling smarter driver allocation and surge pricing to maximize revenue.  
- Payment method preferences uncovered, guiding tailored promotions and payment platform enhancements.  
- Vehicle usage patterns analyzed to optimize fleet mix, reducing idle time and improving utilization.  
- High-frequency pickup locations and longest trips mapped to prioritize service quality and dynamic pricing in key areas.  
- Granular trip data empowers quick issue resolution and supports data-driven operational decisions.

---

## 📊 Dashboard 1: Overview Analysis  
![Dashboard 1](https://github.com/Yashraaj2002/Uber-Data-Analysis/blob/main/Uber%20Dashboard%201.png)  
💡 Covers 6 key KPIs, payment type trends, trip value by time of day, vehicle usage, location performance, and most frequent pickups.

---

## ⏱️ Dashboard 2: Time Analysis  
![Dashboard 2](https://github.com/Yashraaj2002/Uber-Data-Analysis/blob/main/Uber%20Dashboard%202.png)  
💡 Shows booking trends by pickup time, day of week, and hour to identify peak operational periods.

---

## 📋 Dashboard 3: Drillthrough Details  
![Dashboard 3](https://github.com/Yashraaj2002/Uber-Data-Analysis/blob/main/Uber%20Dashboard%203.png)  
💡 Interactive table showing trip-level details including ID, pickup time, vehicle, payment type, passenger count, distance, and value.

