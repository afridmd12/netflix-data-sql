# 🎥 Netflix Dataset Analysis

This project analyzes a dataset of Netflix titles, including movies and TV shows, to uncover insights related to content type, genres, countries, ratings, and release trends. The analysis is conducted using SQL and Python-based tools.

---

## 📂 Dataset Overview

The dataset used in this project was sourced from [Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows) and contains global Netflix content. The key columns include:

- `show_id`: Unique identifier
- `type`: Movie or TV Show
- `title`: Title of the content
- `director`: Director's name
- `cast`: Leading actors
- `country`: Country of origin
- `date_added`: Date added to Netflix
- `release_year`: Year of release
- `rating`: Maturity rating
- `duration`: Length (minutes or seasons)
- `listed_in`: Genre(s)
- `description`: Summary

---

## 📊 Project Objectives

- Analyze content distribution by type, genre, and country
- Study release year and content addition trends
- Identify the most frequent directors, actors, and countries
- Compare movies vs. TV shows
- Handle missing data and optimize query performance

---

## ⚙️ Tools Used

- **SQL** (PostgreSQL) for data analysis and queries
- **Python** (Pandas, NumPy) for data manipulation
- **Matplotlib & Seaborn** for visualization
- **Jupyter Notebook** for interactive analysis
- **Streamlit** (optional) for dashboard development

---

## 🔑 Key Insights

- ✨ **Movies are the most common content type** on Netflix.
- 🇺⁦‍🇸 **USA produces the most content**, followed by India and the UK.
- 🎥 **Top genres** include Dramas, Comedies, and Documentaries.
- ⏰ **Peak content addition occurred in 2019**, with increasing global variety.
- ✨ **TV-MA is the most frequent content rating**, favoring mature audiences.
- ⚠️ **Missing values in columns** like `director`, `cast`, and `country` must be carefully addressed.

---

## 🚀 How to Run This Project

1. Clone the repo:
```bash
git clone https://github.com/yourusername/netflix-data-analysis.git
cd netflix-data-analysis
```

2. Load the data into PostgreSQL or use the provided CSV in Jupyter Notebook

3. Run analysis using SQL or Python scripts

4. (Optional) Launch the dashboard:
```bash
streamlit run app.py
```

---

## 🏆 Deliverables

- SQL queries for data analysis (`queries.sql`)
- Visualizations in Jupyter Notebook (`analysis.ipynb`)
- Optional dashboard with Streamlit (`app.py`)

---

## 📈 Future Work

- Time-series analysis of content additions
- Sentiment analysis on descriptions
- Content recommendation engine using genres and cast

---

## ✉️ Feedback & Contributions

Feel free to fork, improve, and submit pull requests to expand this project.

---

**🌐 Data Source:** [Kaggle - Netflix Titles Dataset](https://www.kaggle.com/datasets/shivamb/netflix-shows)

