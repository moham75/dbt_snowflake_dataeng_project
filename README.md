# End-to-End Data Engineering Project: dbt, Snowflake & Apache Airflow

## 📌 Overview
This project is a complete data engineering pipeline using **dbt**, **Snowflake**, and **Apache Airflow**.  
It covers data ingestion, transformation, and workflow scheduling in a structured, scalable way.

---

## 🛠 Tech Stack
- **dbt Core** – Data transformation & modeling  
- **Snowflake** – Cloud-based data warehouse  
- **Apache Airflow** – Workflow automation & orchestration  
- **Python** – Scripting & automation  
- **Git** – Version control  

---

## 📁 Project Structure

```
snowflake_dataeng_project/
│── models/                 # dbt models (staging, marts)
│── dags/                   # Airflow DAGs (for scheduling)
│── logs/                   # Airflow logs
│── seeds/                  # Seed data for dbt
│── macros/                 # dbt macros
│── dbt_project.yml         # dbt project config file
│── README.md               # Project documentation
```

---

## 🧰 Set Up a Virtual Environment

**Mac / Linux**
```bash
python -m venv venv
source venv/bin/activate
```

**Windows**
```powershell
python -m venv venv
venv\Scripts\activate
```

---

## ❄️ Configure dbt Connection to Snowflake

Update the `profiles.yml` file located in:

- **Mac/Linux:** `~/.dbt/profiles.yml`  
- **Windows:** `C:\Users\<username>\.dbt\profiles.yml`

Use this configuration:

```yaml
snowflake_project:
  outputs:
    dev:
      account: your_snowflake_account
      database: finance_db
      user: dbt_user
      password: your_password
      warehouse: finance_wh
      role: ACCOUNTADMIN
      schema: raw
      type: snowflake
  target: dev
```

---

## 🏗 Run dbt Models

```bash
dbt run
dbt test        # Validates data integrity
```

---

## 🚀 Start Apache Airflow

```bash
airflow standalone        # Starts the UI & Scheduler
```

---
