# ETL Mini Project: Building an Efficient Crowdfunding Data Pipeline

Welcome to the ETL Mini Project! In this collaborative endeavor, we will be working with Python, Pandas, and Postgres to build an Extract, Transform, and Load (ETL) pipeline for crowdfunding data. Our primary goal is to extract data from Excel files, perform necessary transformations, create CSV files, and import the data into a Postgres database.

## Project Overview
The ETL process is a fundamental step in data engineering and analysis, allowing us to extract valuable information, transform it into a structured format, and load it into a database for further analysis. Throughout this one-week project, we will apply ETL principles to crowdfunding data and create four essential DataFrames: the "category" DataFrame, the "subcategory" DataFrame, the "campaign" DataFrame, and the "contacts" DataFrame.



## Project Structure
1. Create the Category and Subcategory DataFrames.
2. Create the Campaign DataFrame
3. Create the Contacts DataFrame
4. Create the Crowdfunding Database


## Work Allocation
### Create the Category and Subcategory DataFrames
- Urja Dudhwala

This section focuses on extracting and transforming the "crowdfunding.xlsx" Excel data to create two essential DataFrames: the "category" DataFrame and the "subcategory" DataFrame. The objective is to create structured DataFrames containing unique identifiers and titles for categories and subcategories.

__Category DataFrame__

-Data Extraction:_
Import the "crowdfunding.xlsx" file into a DataFrame to access the raw data.

-Data Transformation for Category DataFrame:_
Extract unique category titles from the DataFrame and create a new DataFrame with a "category_id" column, containing entries going sequentially from "cat1" to "catn," where n is the number of unique categories.
The DataFrame will also have a "category" column that contains only the category titles.

_Data Export:_
Export the transformed "category" DataFrame as "category.csv" into the GitHub repository.

__Subcategory DataFrame__

_Data Extraction:_
Import the "crowdfunding.xlsx" file into a DataFrame to access the raw data.

_Data Transformation for Subcategory DataFrame:_
Extract unique subcategory titles from the DataFrame and create a new DataFrame with a "subcategory_id" column, containing entries going sequentially from "subcat1" to "subcatn," where n is the number of unique subcategories.
The DataFrame will also have a "subcategory" column that contains only the subcategory titles.

_Data Export:_
Export the transformed "subcategory" DataFrame as "subcategory.csv" into the GitHub repository.

### Create the Contacts DataFrame
- Sree Rama Pavan Vannemsetti


In this section, we will focus on extracting and transforming the contacts data from the "contacts.xlsx" Excel file using two different methods: Option 1 - Python dictionary methods, and Option 2 - regular expressions. The primary goal is to create a well-structured "contacts" DataFrame containing "contact_id," "first_name," "last_name," and "email" information for each contact.

 __Option 1__: __Extracting and Transforming Contacts Data using Python Dictionary Methods__
 
 _Data Extraction:_
Import the "contacts.xlsx" file into a DataFrame to access the raw data.

_Data Transformation using Python Dictionary Methods:_
Iterate through the DataFrame, converting each row to a dictionary.
Within each dictionary, extract the values from the keys using a Python list comprehension and add them to a new list.

_Creating the "contacts" DataFrame:_
With the extracted data list, create a new DataFrame, resulting in a structured "contacts" DataFrame containing "contact_id," "name," and "email" information.

_Data Cleaning and Transformation:_
Convert the "contact_id" column to the integer type for consistency.
Split the "name" column into "first_name" and "last_name" by extracting substrings based on space separation.

_Data Export:_
Clean and export the transformed "contacts" DataFrame as "contacts.csv" into the GitHub repository.

__Option 2__: __Extracting and Transforming Contacts Data using Regular Expressions__

_Data Extraction:_
Import the "contacts.xlsx" file into a DataFrame to access the raw data.

_Data Transformation using Regular Expressions:_
Extract the "contact_id," "name," and "email" columns using regular expressions and create a new DataFrame with the extracted data.

_Data Cleaning and Transformation:_
Convert the "contact_id" column to the integer type for consistency.
Split the "name" column into "first_name" and "last_name" by extracting substrings based on space separation.

_Creating the "contacts" DataFrame:_
With the extracted and transformed data, create a structured "contacts" DataFrame containing "contact_id," "first_name," "last_name," and "email" information.

_Data Export:_
Clean and export the final "contacts" DataFrame as "contacts.csv" into the GitHub repository.

### Create the Campaign DataFrame
- Jeffrey Robertson
1. Rename the column names
2. Convert the columns goal and pledged frrom objects to floaaats
3. Check to ensure that  the data types were changed
4. Convert the launch date and end date into date time format
5. Merge with the category and subcategory dataframes and drop unneeded columns from the dataframe
6. Save to csv file

### Create the Crowdfunding Database
- Riddhi Mistry

### Technology Used
The ETL Mini Project will utilize the following technologies:
- **Python**: We will use Python programming language for data extraction, transformation, and various data manipulation tasks.
- **Pandas**: Pandas will be used for data processing and to create DataFrames for the crowdfunding data.
- **Postgres**: Postgres will serve as our relational database management system to store and manage the extracted and transformed data.
- **SQLAlchemy**: SQLAlchemy will be used to interact with the Postgres database and perform data insertion and querying.
- **Jupyter Notebook**: We will work with Jupyter Notebook to execute and document our data processing steps.



