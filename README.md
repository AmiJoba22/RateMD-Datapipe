# Doctors Ratings Evaluation On RateMDs - CIS 4400 Project 2  
**Group 1 - Baruch College, Summer 2025**   
**Data Engineers: Amina Jobarteh & Brayan Benito Tirado**  

## Problem Context
RateMD is a website that allows users to find doctors locally and view their ratings and patients’ experiences with them. You can filter these ratings by location, specialty, service, facilities, etc. Patients rely on RateMD to find suitable healthcare providers; therefore, we must ensure the data maintains its value of consistency and reliability. 

A data warehouse will be created to evaluate and analyze the ratings of doctors, preferably in the U.S.A., based on contributing factors such as location, services, specialty, and number of doctors. This analysis will allow us to query and analyze different metrics and KPI’s such as ratings, location, trends, and doctor population. It will also reveal patterns that can aid in decision-making for healthcare administrators and facilities

## Requirements   
## Requirements Analysis
- Business Personas
  - The stakeholders involved in this project are the following:
       - Data Analyst: Responsible for data analysis and reporting.
       - Healthcare Administrators & Analysts: Can use analysis to understand RateMD’s reliability.They can also use the UI visualization to make decisions for facilities. 

- Risks
  - Potential risks and challenges: 
    - Continuous updates of records can throw off accuracy
    - Lack of consistent data between locations and ratings.
    - Missing or incomplete data on specific fields (Location, zip code, specialty). 

- Costs  
    - Software licenses: $0  
       - All tools used (MongoDb, Tableau, Python) are free to use.  
    - Hardware upgrades: $0  
       - Personal computers are being used for this project, therefore no addiional hardware is needed.  
    - Data access: $0  
       - Data is Provided by the professor via MongoDb.  
    - Total Estimated Cost: $0
- Timeline  
    - Week 1: Requirements Gathering and Data Understanding
        - Define busniess and functional requirements
    - Week 2: Extract and clean data from MongoDB; begin ETL pipeline setup
        - Clean and trandform data for analysis
    - Week 3: Data Integration and Preparation
        - Load cleaned data into structured format.
        -  Begin building visualization dashboard on Tableau.
    - Week 4: Analysis, and Visualization
        - Finalize visualizations
        - Run queries (avg/min/max ratings per state, county, zip and spciality)  
    - Week 5: Final Report, Presentation and Submission
        - Complete README, presentation slides and tableau visuals
- Benefits
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
-	Per county
-	Postal code
-	Per specialty 
-	Per state
  
This will be conducted to determine which county, state, and zip code have the lowest doctor ratings. 
 

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

### 1. Information Architecture
 - Source:
      - The RateMD database is stored in MongoDB
      - The database was accessed via a connection string
 - Gather Data:
      - A Python script was used to connect and extract the data
      - Due to the size of the data (2.2 million records), the script extracted the data to a temporary storage (Azure blob container) in chunks (100k records at a time). 
 - Clean, Reformat, and Transform:
      - The Python script will clean data by identifying missing and inconsistent fields
      - The cleaned data will help us query the average, minimum, maximum, and total number of doctor ratings per specific field. 
 - Data Warehouse Loading: 
      - Data is loaded and stored into the data warehouse

[Information Architecture Diagram File](https://drive.google.com/file/d/1yQ8kCZqVHiXviDYuDzm0dMQ2HInWzBGS/view?usp=sharing)

![Information Architecture Diagram](https://github.com/user-attachments/assets/e70615f7-5122-4eec-981d-7a5464bdbde1)


### 2. Data Architecture
- Raw data is stored in the MongoDB database
- Raw data goes through an ETL pipeline for extracting and cleaning. This process is done to retrieve the relevant fields in the data.
- Clean data is then stored in the Azure blob container as temporary storage.
- Data is loaded into a data warehouse structured by star schema
- Tableau connects to the warehouse for visualization
[Data Architecture Diagram File](https://drive.google.com/file/d/1KyyZ2T4iE91hcL56lzhs4_uFFrmGei2U/view?usp=sharing)

[Data Architecture Diagram](https://github.com/AmiJoba22/RateMD-Datapipe/blob/352cdb8a38ec362f1fed4f2b9ba0500352416103/docs/diagram/Screenshot%202025-07-01%20at%209.40.31%20PM.png)


### 3. Technical Architecture
- The software and hardware systems involved in this project are:
     - Python for ETL pipeline and scripting
     - Azure for cloud computing and temporary storage
     - MongoDB as a source of data
     - Tableau for data visualization
     - Google Collab/Jupyter Notebook for testing Python scripts
     - DB Schema for star schema modeling
     - Excel for star schema planning 


### 4. Product Architecture
- Provide an overview of the product's overall structure.
- Include any major components and how they interact.

## D. Modeling

### 1. Dimensional Modeling
- Explain the dimensional modeling
- Example:
  - **Facts**: describe all the facts
  - **Dimension**: include all dimensions

*Include any necessary images or diagrams to clarify the architecture.*
  - ![Dimensional Modeling Diagram](docs/diagram/ratemd.png)


### 2. Medallion Architecture
- Explain the medallion architecture and its stages: Bronze, Silver, Gold.
- Example:
  - **Bronze**: Raw, unprocessed data
  - **Silver**: Cleaned and enriched data
  - **Gold**: Aggregated, ready-for-use data

*Include any necessary images or diagrams to clarify the architecture.*
  - ![Medallion Architecture Diagram](path_to_image)

## E. Methodology and Implementation
Describe the methodology used in the project and the steps followed during implementation.

- Outline the approach taken (e.g., Agile, Waterfall).
- Describe key phases, such as development, testing, deployment.
- Example:
  - Sprint 1: Setup and Data Collection
  - Sprint 2: Data Processing and Model Building
- Metadata Management
  - Data Dictionary
  - Mapping Sources and Target Systems
  - List of all functions
	- Function 1 
	- Function 2
	- Function 3
- ETL Extract Load Transform
- ELT Extract Transform Load
- Tools 

## F. Visualization
Provide details of the visualizations created for the project.

- Include charts, graphs, and any other visual representation of the data.
  - ![Visualization Example](path_to_image)
- Mention any libraries or tools used for visualization (e.g., Matplotlib, Power BI).

## G. Insights
Highlight any key insights gained from the project.

- Provide an overview of what was learned or discovered through data analysis.
- Example:
  - High correlation between customer satisfaction and response time.
  - Significant opportunity for cost reduction in supply chain operations.

## H. Conclusion
Summarize the outcomes of the project and any potential next steps.

- What was achieved?
- How can the results be used moving forward?
- Example:
  - The project successfully reduced costs by 20% through process automation.
  - Future work may include expanding the solution to new departments.

## I. References
- Provide a list of all references used in the project, formatted according to MLA style.

1. Author Last Name, First Name. *Title of Book*. Publisher, Year.
2. "Title of Article." *Name of Journal*, vol. 1, no. 1, Year, pp. 1-10.
3. *Title of Website*. Website Publisher, Year, URL.

---

*Replace placeholders like "path_to_image" with actual file paths or URLs.*
