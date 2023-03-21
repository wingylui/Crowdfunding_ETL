# Project 2: Extract, Transform and Load Mini Project
---

## Project Summary:

This mini project is to build up an ETL (extract, transform and load) pipeline. Two excel files were given for loading the data into the database. Two different methods (Python dictionary and regular expressions method) are used to extract and transform the data. The cleaned and structured data is then loaded into the pre-created table schema in Postgres database.

---

## Method and Language used:

<b>Programming language:</b> Python and SQL (PostgreSQL)</br>
<b>Package used:</b> Pandas, numpy, datetime and json </br>
<b>Dataset:</b> [Contacts](https://github.com/wingylui/Crowdfunding_ETL/blob/main/Resources/contacts.xlsx), [Crowdfunding](https://github.com/wingylui/Crowdfunding_ETL/blob/main/Resources/crowdfunding.xlsx) </br>
<b>Main Script:</b> [Data cleaning and transformation](https://github.com/wingylui/Crowdfunding_ETL/blob/main/ETL_Mini_Project_WYLui.ipynb), [Create a table schema](https://github.com/wingylui/Crowdfunding_ETL/blob/main/crowdfunding_db_schema.sql)</br>


This dataset contains two excel table (crowdfunding and contacts) and customer conatact were stored as a json format. </br>
The data cleaning and transformating starts with creating cateogry and subcategory dataframe. The unqiue items in category and subcategoy in raw data is identified and labelled with an unique primary key. The category and subcategory dataframe is then merge with the campaign dataframe to match with category id and subcategory id. To transfom the json format data into the database, both python dictionary or regular expressions method can be utilised.</br>

The four transformed table will be created in PostregSQL according to the entity relationship diagram showed below and loaded into the database.</br>

<b>Entity Relationship Diagram:</b></br>
![ERD](https://github.com/wingylui/Crowdfunding_ETL/blob/main/Entity_relationship_Diagram/Entity_Relationship_Diagram_for_CrowdfundingETL.png)</br>


---
## References:

Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.