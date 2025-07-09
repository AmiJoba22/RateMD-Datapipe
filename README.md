# Doctors Ratings Evaluation On RateMDs - CIS 4400 Project 2  
**Group 1 - Baruch College, Summer 2025**   
**Data Engineers: Amina Jobarteh & Brayan Benito Tirado**  

## Problem Context
RateMD is a website that allows users to find doctors locally and view their ratings and patients’ experiences with them. You can filter these ratings by location, specialty, service, facilities, etc. Patients rely on RateMD to find suitable healthcare providers; therefore, we must ensure the data maintains its value of consistency and reliability. 

A data warehouse will be created to evaluate and analyze the ratings of doctors, preferably in the U.S.A., based on contributing factors such as location, services, specialty, and number of doctors. This analysis will allow us to query and analyze different metrics and KPI’s such as ratings, location, trends, and doctor population. It will also reveal patterns that can aid in decision-making for healthcare administrators and facilities

## Requirements   
### Requirements Analysis
- **Business Personas**
  - The stakeholders involved in this project are the following:
       - Data Analyst: Responsible for data analysis and reporting.
       - Healthcare Administrators & Analysts: Can use analysis to understand RateMD’s reliability.They can also use the UI visualization to make decisions for facilities. 

- **Risks**  
  - Potential risks and challenges: 
    - Continuous updates of records can throw off accuracy
    - Lack of consistent data between locations and ratings.
    - Missing or incomplete data on specific fields (Location, zip code, specialty). 

- **Costs** 
    - Software licenses: $306 - $307
       - MongoDB Atlas: $25/month
       - Snowflake: $100/month
       - dbt Cloud: $100/month
       - Azure Blob Storage: $1-$2
       - Tableau: $70
       - dbSchema: $10/month
       - Google Colab: $0
    - Hardware upgrades: $0  
       - Personal computers are being used for this project, therefore no addiional hardware is needed.  
    - Data access: $0  
         - Provided by Professor: $0
    - Total Estimated Cost: $306 - $307
- **Timeline**  
    - Week 1: Requirements Gathering and Data Understanding
        - Define busniess and functional requirements
    - Week 2: Extract and clean data from MongoDB; begin ELT pipeline setup
        - Clean and trandform data for analysis
    - Week 3: Data Integration and Preparation
        - Load cleaned data into structured format.
        -  Begin building visualization dashboard on Tableau.
    - Week 4: Analysis, and Visualization
        - Finalize visualizations
        - Run queries (avg/min/max ratings per state, , zip and speciality)  
    - Week 5: Final Report, Presentation and Submission
        - Complete README, presentation slides and tableau visuals
          
- **Project Documentation File:**
    - [Documentation](https://docs.google.com/document/d/1RVdjYlpa-3S9S72xZNym9Taq5P_20KhUpZmwLKCZ_e4/edit?usp=sharing)
  
- **Benefits**
  	- Reviews and ratings data can help drive decisions based on ways to improve the quality of doctor performance and specialties. 
	- Identify locations with the lowest number of practicing doctors and how to improve that population density. 
	- Information from the data can help organize job placements for aspiring doctors based on location.
 	- Data consistency can potentially increase patient reliance on RateMD
   	  
## Business Requirements:  
Analyze and visualize doctor ratings from RateMDs to provide insights into healthcare quality accross different regions, and help patients make informed choices:  
- Identify geographic trends in doctor ratings at the state, county and zip code.  
- Determine which specialities perfrom best or worst in specific regions.  
- Help patients locate areas with high-rated doctors based on speciality and location.
  
We’ll be identifying the average, minimum, maximum, and total number of doctor ratings
-	Postal code
-	Per specialty 
-	Per state
  
This will be conducted to determine which state, city, and zip code have the lowest doctor ratings. 
 

## Functional Requirements
- The functional requirements for the project, detailing the core features and actions.   
  - System must allow users to filter doctor ratings by state, county or zip code.  
  - Users must be able to view average, minimum, maximum and count of doctor ratings for a selected location.  
  - System should display ratings by speciality within the chosen location.
  - Data must be consistently and accurately grouped by region and specialty.   
    
## Data Requirements
The data required for this process will be retrieved from a MongoDB database with over 2 million records from RateMD. The region analyzed will mainly be in the United States. 

From MongoDB, we’ll be analyzing and querying the following fields for our schema and dimensional modeling: 
-	Doctor ID 
-	Latitude, Longitude
-	Province, Country, City, Zip code 
-	Ratings, rating count
-	Rating services, Rating Facilities
-	Punctuality, Cleanliness, Neutrality, Helpfulness, Knowledge
-	Specialty

## Architecture
### Information Architecture
 - **Source:**
      - The RateMD database is stored in MongoDB
      - The database was accessed via a connection string
 - **Gather Data:**
      - A Python script was used to connect and extract the data
      - Due to the size of the data (2.2 million records), the script extracted the data to a temporary storage (Azure blob container) in chunks (100k records at a time). 
 - **Clean, Reformat, and Transform:**
      - The Python script will clean data by identifying missing and inconsistent fields
      - The cleaned data will help us query the average, minimum, maximum, and total number of doctor ratings per specific field. 
 - **Data Warehouse Loading:** 
      - Data is loaded and stored into the data warehouse

[Information Architecture Diagram File](https://drive.google.com/file/d/1yQ8kCZqVHiXviDYuDzm0dMQ2HInWzBGS/view?usp=sharing)

![Information Architecture Diagram](https://github.com/user-attachments/assets/e70615f7-5122-4eec-981d-7a5464bdbde1)


### Data Architecture
- Raw data is stored in the MongoDB database
- Raw data goes through an ELT pipeline for extracting and cleaning. This process is done to retrieve the relevant fields in the data.
- Clean data is then stored in the Azure blob container as temporary storage.
- Data is loaded into a data warehouse structured by star schema
- Tableau connects to the warehouse for visualization

[Data Architecture Diagram File](https://drive.google.com/file/d/1KyyZ2T4iE91hcL56lzhs4_uFFrmGei2U/view?usp=sharing)

![Data Architecture Diagram](docs/diagram/dataarch.png)


### Technical Architecture
- The software and hardware systems involved in this project are:
     - Python for ELT pipeline and scripting
     - Azure for cloud computing and temporary storage
     - MongoDB as a source of data
     - Tableau for data visualization
     - Google Collab/Jupyter Notebook for testing Python scripts
     - DB Schema for star schema modeling
     - Excel for star schema planning
  
[Technical Architecture Diagram File](https://drive.google.com/file/d/1jEL6L44DEp3OfYQefv5G5MtxkTkDfVfS/view?usp=sharing)

![Technical Architecture Diagram](docs/diagram/techarch.png)

## Product Architecture
### **Product Overview:**
- This product contains an ELT data pipeline and warehousing process that will allow us to understand relevant information and insights behind doctor/healthcare provider ratings, population, and location. The goal is to ensure that the product helps us fulfill our business, functional, and data requirements.
  
### **Main Components:**
- **Data Source** 
     - Healthcare provider data from RateMD is connected and contains data on doctor location, specialty, rating, appointment availability, etc.
- **Python Extraction Script**
     - Python scripts were used to extract the data. 
- **Temporary Storage**
     - The extracted data was stored in an Azure blob in case of any modification or errors when loading the data.
- **Data Warehouse**
     - Raw data is loaded into the Snowflake warehouse. 
- **Transformation**
     - This process contains cleaning, reformatting, and transforming the data to remove inconsistencies and help us retrieve relevant information about doctor ratings. 
- **Data Visualization for Analytics** 
     - The visualization will be created using Tableau, which will help us figure out which city, state, and zip code has the lowest/highest doctor ratings. It also helps us answer whether or not our business, functional, and data requirements were fulfilled. 


## Dimensional Modeling  
### Dimensional Modeling
Our project uses a **star schema** approach to organize the RateMD data. The central `fact_ratemd` table captures metrics such as average ratings, rating counts and service scores. This fact table is connected to three supporting dimension tables: 
- `dim_location`: Provides geographic details such as county, state and zip code.
- `dim_specialty`: Provides doctor specialty information.  
- `dim_date`: This dimension provides date breakdown by day, month, quarter, and year.
- A [data dictionary](https://docs.google.com/document/d/10pqov5ll8gd53zC5Y4RmAVgQYQJkMmGIZE5ut_S-cVw/edit?usp=sharing) was also created to describe the data fields.
  
This star schema model supports filtering and slicing of data across geography, specialties and time.
![Dimensional Model](https://github.com/AmiJoba22/RateMD-Datapipe/blob/main/docs/diagram/ratemd_model.png)    

# Methodology and Implementation  
We used a modified agile approach, across five weeks. Each sprint focused on key milestones from connection to data sources to modeling, trasnforming and visualizing the data. Tasks were divided by sprints and assigned among group members. 

### Sprint 1: Data Collection and Storage  
- We connected to **MongoDb**, which was our source of rateMD data. 
- Using **Google Colab**, we authenticated to MongoDb and extracted the data.  
- Because the dataset was too large to dowload all at once, we extracted it in chunks - this helped avoid memory errors.
- The dowloaded data was then uploaded to **Azure Blob Storage**, which we used as our central cloud respository.
  
### Sprint 2: Data Processing and Modeling  
-  We cleaned and flattened the nested data fields - for example, converting `location.rating.cleanliness` into a clear named column: `rating_cleanliness`.  
-  We desgined a star schema using DbSchema, featuring one central fact table and three supporting dimension tables.
-  Dimension tables include:
      - `dim_location`
      - `dim_date`
      - `dim_specialty`
   
### Spring 3: ELT pipeline and Transformation  
Once the dimensional model was in place, we implemented layer using modern data tooling.  
- We used dbt to create SQL-based models that transformed the raw data into cleaned, warehouse-ready tables.
- The process followed an ELT approach:  
  - **Extract**: From MongoDB.    
  - **Load**: Upload files into Azure Blob Storage, then load into snowflake.  
  - **Transform**: Use dbt models to clean, rename and structure the data.
- The transformed output matched our dimensional models, ensuring consistency.

### Spring 4: Visualization Planning & Wireframing  
- We started designing a wireframe to outline the key Tableau visualizations we want to build.
- These visuals are based on our requirements and will help answer questions.
- Final dashboards will be built using Tableau, and the visuals will be based on the cleaned fact and dimension tables in snowflake.   
## F. Visualization
Provide details of the visualizations created for the project.

- **Visualization Sketch**
  - Various charts were sketched by hand and using **draw.io** to display which visualizations would best fufill our business, functional, and data requirements. 
  - [Sketch by hand](docs/diagram/RateMD-UI-sketch.pdf)
  - [Digital Stetch](https://drive.google.com/file/d/16j-pG0vcj2Kno_AJJmgQAiSPBOsb_uz-/view?usp=sharing)
- A wireframe and prototype show were created using **Figma** to get a more digital version of our visualization plans. Note that doctor finder chart and ratings over time chart were discarded in final planning.
  - [Wireframe](https://www.figma.com/design/xQkFt9CMu45B9M2Ef1x24D/RateMD-Wireframe-Prototype?node-id=0-1&t=VgPqPtrO2UNH4odW-1)
  - [Prototype Show](https://www.figma.com/proto/xQkFt9CMu45B9M2Ef1x24D/RateMD-Wireframe-Prototype?node-id=7-167&p=f&t=KIPGuo8okXWeAFLK-1&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1&starting-point-node-id=4%3A3)
- **Visualization dashboard with Tableau**.
  - [Tableau Dashboard File](https://us-east-1.online.tableau.com/t/aminajobarteh-391df2a485/views/Ratemd_2/RateMDVisualDashboard)
  - ![Tableau Dashboard](docs/diagram/RateMD-Visual-Dashboard.png)

    
## Insights  
- **Puerto Rico tops the list:**
   - Puerto Rico boasts the higest average doctor rating among U.S. States at 4.317, although it's based on a small sample count (3,000+ ratings), so results should be interpreted cautiously.
- **Delware takes the bottom:**
   - Delware has the lowest average doctor rating among U.S States at 3.733. 
- **Regional outliers**:
   - States in the Northeast and Southeast, consistently show above-average ratings, while certain western states trend below-average ratings.
- **Radiation Oncologists and Homeopaths ranked highest**:
   - Among worldwide ratings, Radiation Oncologists, Homeopath's, Physician Assistants and Acupuncturist are on top of the list with average ratings above 4.4, indicating a strong satisfaction within the medical field.
- **Lower specialties ratings**:
  - Specialties like Osteopath, Psychiatrist, Emergency Room Doctor and Dietitian consistently recieved ratings under 3.6, putting these medical fields at the bottom of the list, highlighting potential areas for improvement.
- Filters at the city and zip code level reveal how specialties perform differently by region.  

## Conclusion  
### What was achieved:  
- Discovered that Puerto Rico, despite its lower rating count, had the highest average rating.
- Discovered that Delaware had the lowest average rating. 
- Discovered that Radiation Oncologists and holistic care specialists are ranked top in satisfaction as they have the highest average rating.

### How the results can be used:  
- Healthcare providers can study top-rated specialists to adopt best practices and address the gaps in low-rated medical fields.  
- Hospitals may use the data to make strategic hiring or training decisions to drive higher satisfaction ratings.
- Regional health officials can use location filters to prioritze quality improvement in underperforming areas.

##  References
1. Inmon, W. H. Building the Data Warehouse. 4th ed., John Wiley & Sons, 2005.
2. Sherman, Rick. Business Intelligence Guidebook: From Data Integration to Analytics. Elsevier, 2014.
3. Kimball, Ralph. The Data Warehouse Toolkit: The Definitive Guide to Dimensional Modeling. 3rd ed., John Wiley & Sons, 2013.

---

