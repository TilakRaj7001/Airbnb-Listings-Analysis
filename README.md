# 🏙️ AIRNB — NYC Airbnb Market Analysis

An end-to-end data analytics project that cleans, explores, and analyzes New York City Airbnb listings data to answer key business questions about market distribution, pricing, hosts, listing performance, availability, and opportunities for new hosts. The workflow spans **Python (pandas)** for cleaning, **SQL (MySQL)** for analysis, and **Power BI** for visualization.

##  Project Overview

Using a raw Airbnb "Inside Airbnb"-style listings export for New York City, this project:

1. Cleans and prepares ~54K raw listings into a ~30K-row analysis-ready dataset
2. Loads the cleaned data into a MySQL database
3. Runs a structured set of SQL queries across six business areas
4. Explores and answers the same business questions in Jupyter/pandas
5. Visualizes findings in an interactive Power BI dashboard

##  Project Structure

```
AIRNB/
├── data/
│   ├── rawdata/
│   │   └── listings.csv              # Raw NYC Airbnb listings export (~54K rows, 90 cols)
│   └── processdata/
│       └── listings_cleaned.csv      # Cleaned dataset used for analysis (~30K rows, 45 cols)
│      
│
├── notebooks/
│   ├── datainfo.ipynb                # Initial exploration: shape, columns, dtypes, head()
│   ├── datacleaning.ipynb            # Full cleaning pipeline (see below)
│   └── Business.ipynb                # Answers the 15 business questions in pandas
│
├── sql/
│   ├── database_setup.sql            # Creates the `airbnb` database and inspects the table
│   ├── data_quality.sql              # Row counts and NULL/missing value checks
│   ├── market_analysis.sql           # Neighbourhood & room-type market distribution
│   ├── pricing_analysis.sql          # Price by neighbourhood/room type, outlier detection
│   ├── host_analysis.sql             # Top hosts, multi-listing hosts, geographic concentration
│   ├── listing_performance.sql       # Reviews, ratings by neighbourhood/room type
│   ├── opportunity_analysis.sql      # Best neighbourhood/room type for a new host
│   └── importingdataset.ipynb        # (empty placeholder notebook)
│
├── src/
│   └── importingdata.ipynb           # Quick load/columns check of the raw CSV
│
├── power bi/
│   └── Airbnb-dashboard.pbix         # Interactive Power BI dashboard
│
├── venvairnb/                        # Local Python virtual environment (not for version control)
└── requirements.txt                  # Python dependencies
```

## Dataset

- **Source file:** `data/rawdata/listings.csv` — 54,271 listings × 82 columns
- **Cleaned file:** `data/processdata/listings_cleaned.csv` — 30,259 listings × 45 columns
- **Coverage:** All 5 NYC boroughs — Manhattan, Brooklyn, Queens, Bronx, Staten Island
- **Room types:** Entire home/apt, Private room, Shared room, Hotel room
- **Key fields:** price, room type, neighbourhood, host details, review scores, availability, estimated revenue/occupancy

##  Data Cleaning (`notebooks/datacleaning.ipynb`)

The raw dataset is cleaned in `pandas` before being used anywhere else:

- Drops columns not needed for analysis (URLs, images, free-text descriptions, etc.) and any 100%-null columns
- Fills numeric/text columns with ≤5% missingness (`0` for numbers, `"Unknown"` for text)
- Fills `first_review` / `last_review` with `"Unknown"` where missing
- Fills remaining numeric columns with the column **median**
- Converts `price` from a currency string (e.g. `"$113.97"`) to a numeric float
- Exports the result to `data/processdata/listings_cleaned.csv`

##  Business Questions Answered

The same 15 questions are answered both in SQL (`sql/*.sql`) and in pandas (`notebooks/Business.ipynb`):

**Market Area**
1. Which neighbourhoods have the most listings?
2. Which room types dominate the market?
3. How is the market distributed geographically (by borough)?

**Pricing Area**
4. What is the average price by neighbourhood and room type?
5. Which areas are the most expensive?
6. Are there unusual/extreme prices (outliers)?

**Hosts Area**
7. Which hosts manage the most listings?
8. How common are multi-listing hosts?
9. Where are multi-listing hosts geographically concentrated?

**Performance Area**
10. Which listings receive the most reviews?
11. Which neighbourhoods / room types have better ratings?
12. Is price related to ratings or number of reviews?

**Availability Area**
13. Which areas and room types have high or low availability?
14. What does availability suggest about the market?

**Opportunity Area**
15. If a new host enters the NYC market, which neighbourhood/room type and price range is worth considering?

##  Tech Stack

| Layer | Tools |
|---|---|
| Data wrangling | Python, pandas, numpy |
| Database | MySQL |
| Visualization (notebooks) | matplotlib, seaborn |
| Machine learning (optional/exploratory) | scikit-learn |
| BI Dashboard | Power BI (`Airbnb-dashboard.pbix`) |
| Notebooks | Jupyter |

Full dependency list is in [`requirements.txt`](requirements.txt).

##  Getting Started

### 1. Set up the environment
```bash
python -m venv venvairnb
venvairnb\Scripts\activate        # Windows
# source venvairnb/bin/activate   # macOS/Linux

pip install -r requirements.txt
```
### 2. Run the data pipeline
1. Open `notebooks/datainfo.ipynb` to explore the raw dataset
2. Run `notebooks/datacleaning.ipynb` to produce `data/processdata/listings_cleaned.csv`
3. Run `notebooks/Business.ipynb` to explore the business questions in pandas

### 3. Load into MySQL
1. Run `sql/database_setup.sql` to create the `airbnb` database
2. Import `listings_cleaned.csv` into a `listings_cleaned` table
3. Run the analysis scripts in any order: `data_quality.sql`, `market_analysis.sql`, `pricing_analysis.sql`, `host_analysis.sql`, `listing_performance.sql`, `opportunity_analysis.sql`

### 4. Explore the dashboard
Open `power bi/Airbnb-dashboard.pbix` in Power BI Desktop to view the interactive visualizations.

##  Notes

- File paths in some notebooks are hardcoded to a local Windows path (`C:\Users\Desktop\AIRNB\...`) — update these to relative paths (e.g. `../data/rawdata/listings.csv`) if running on a different machine.
- `venvairnb/` is a local virtual environment and is excluded from version control via its own `.gitignore`; it doesn't need to be committed or shared.
- `data/processdata/ext class.sql` contains unrelated scratch queries (Sakila sample database) and is not part of the Airbnb analysis.
- `sql/importingdataset.ipynb` is currently an empty placeholder file.

##  Author
**Tilak Raj Meena**
[LinkedIn](https://www.linkedin.com/in/tilakraj7) 

---
*This project was built as part of my Data Analysis training to practice the complete workflow: from raw data to actionable business insights.*
