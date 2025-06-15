# Doctors ratings evaluation on RateMDs - CIS 4400 Project 2  
**Group 1 - Baruch College, Summer 2025**   
**Professor: Jefferson Bien-Aime**  

# Project Readme

## A. Problem Context
Provide a brief description of the problem you're addressing. Include any background information necessary to understand the project.

*Problem description goes here.*

## B. Requirements

## Requirements Analysis
- Business Personas
  - List the key stakeholders and their roles.
  - Example:
    - Data Analyst: Responsible for data analysis and reporting.
    - IT Manager: Oversees technical implementation.
- Risks
  - Identify potential risks and challenges.
  - Example:
    - Data privacy concerns
    - Integration with existing systems
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
  - Outline the expected benefits of the project.
  - Example:
    - Improved data accuracy
    - Enhanced decision-making capabilities

## Business Requirements:  
Analyze and visualize doctor ratings from RateMDs to provide insights into healthcare quality accross different regions, and help patients make informed choices:  
- Identify geographic trends in doctor ratings at the state, county and zip code.  
- Determine which specialities perfrom best or worst in specific regions.  
- Help patients locate areas with high-rated doctors based on speciality and location.  

## Functional Requirements
- List the functional requirements for the project, detailing the core features and actions.
- Example:
  - System must allow users to filter doctor ratings by state, county or zip code.  
  - Users must be able to view avverage, minimum, maximum and count of doctor ratings for a selected location.  
  - System should display ratings by speciality within the chosen location.
  - Data must be consistently and accurately grouped by region and specialty.   
    
### 4. Data Requirements
- Outline the types and sources of data required for the project.
- Example:
  - Structured data from internal databases
  - Unstructured data from external sources (e.g., social media, surveys)

## C. Architecture

### 1. Information Architecture
- Describe the structure and flow of the information.
- Include diagrams or images if necessary. 
  - ![Information Architecture Diagram](path_to_image)

### 2. Data Architecture
- Describe the structure and flow of the data.
- Include diagrams or images if necessary. 
  - ![Data Architecture Diagram](path_to_image)

### 3. Technical Architecture
- Define the software and hardware systems involved in the project.
- List any key technologies, tools, or platforms used. 
  - Example: 
    - Python for data analysis
    - Azure for cloud computing

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
  - ![Dimensional Modeling Diagram](path_to_image)


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
