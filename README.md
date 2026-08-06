# 🇬🇹 Dengue Surveillance Analysis in Guatemala (2012–2024)

## Project Overview

This project analyzes reported dengue cases in Guatemala between 2012 and 2024 using national surveillance data published by the Ministerio de Salud Pública y Asistencia Social (MSPAS). The objective is to identify temporal and geographic patterns in reported dengue cases through exploratory data analysis, descriptive statistics, and data visualization.

The project integrates SQL database design, data cleaning, Python, pandas, and statistical analysis to transform raw surveillance data into structured datasets suitable for epidemiological exploration.

Although the analysis is descriptive in nature, it aims to generate evidence-based insights that may support future public health investigations and public health decision-making.

---

## Research Questions

This project addresses the following questions:

- How did reported dengue cases change in Guatemala between 2012 and 2024?
- Which municipalities contributed the largest cumulative dengue burden?
- Is dengue burden geographically concentrated?
- Which municipalities consistently appeared among the highest-burden areas throughout the study period?
- Does aggregating municipalities into departments reveal stronger geographic concentration?

---

## Dataset

**Source:** Ministerio de Salud Pública y Asistencia Social (MSPAS), Guatemala

**Study period:** 2012–2024

The original surveillance dataset contains reported dengue cases by:

- Municipality
- Department
- Year
- Age group
- Sex

For this analysis, the data were cleaned and transformed into three analytical datasets:

- Municipality-level cumulative cases
- Annual national totals
- Municipality-year observations

---

## Methodology

The analytical workflow followed these steps:

```text
Raw MSPAS surveillance data
        │
        ▼
SQLite database design
        │
        ▼
SQL data cleaning and aggregation
        │
        ▼
Export analytical datasets
        │
        ▼
Exploratory Data Analysis (Python)
        │
        ▼
Descriptive statistics
        │
        ▼
Data visualization
        │
        ▼
Interpretation of findings
```

---

## Repository Structure

```text
data/
    Raw MSPAS dataset

exports/
    Clean analytical datasets exported from SQL

notebooks/
    Complete exploratory data analysis and visualizations

sql/
    Database schema, data transformation pipeline, and analytical SQL queries
```

---

## Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- SQLite
- SQL
- Git
- GitHub
- Jupyter Notebook

---

## Current Findings

The analysis currently indicates:

- Two major nationwide dengue outbreaks occurred during the study period.
- Reported dengue cases exhibited substantial year-to-year variability.
- A relatively small number of municipalities accounted for a disproportionate share of reported dengue cases.
- Several municipalities consistently appeared among the annual Top 10 highest-burden municipalities.
- Geographic aggregation suggests stronger spatial concentration at the department level than at the municipality level.

The department-level spatial analysis is currently being expanded, and additional findings will be incorporated as the project progresses.

---

## Skills Demonstrated

This project demonstrates practical experience with:

- Relational database design
- SQL data transformation
- Data cleaning
- Exploratory Data Analysis (EDA)
- Descriptive statistics
- Statistical interpretation
- Data visualization
- Public health data analysis
- Version control using Git

---

## Future Work

Planned improvements include:

- Complete the department-level spatial analysis.
- Incorporate municipal population data to calculate incidence rates.
- Develop interactive dashboards in Power BI.
- Expand the SQL analysis using advanced analytical queries.
- Publish an executive summary of the principal findings.

---

## About Me

I'm **Walter Medrano**, a Biochemistry student at **Universidad Galileo** with a strong interest in public health, epidemiology, statistics, and data analytics.

My goal is to apply data analysis to better understand health-related problems and communicate evidence through clear, reproducible analyses. I enjoy combining SQL, Python, statistics, and data visualization to transform raw data into meaningful insights.

This repository forms part of my professional data analytics portfolio and documents my continued development in SQL, Python, statistics, and public health analytics.

---

## Contact

- **GitHub:** https://github.com/medranow
- **LinkedIn:** *https://www.linkedin.com/in/walmedrano/*
- **Email:** *medranow@icloud.com*

---

## License

This project is released under the MIT License.