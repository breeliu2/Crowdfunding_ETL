# Crowdfunding_ETL

## Project Description
For this ETL mini project, we were instructed to work with a partner to practice building an ETL pipeline using Python, Pandas, Python dictionary methons and regular expressions to extract and transform the data. After transforming the data, we created four CSV files and used them to create an ERD table schema, which was then uploaded into a Postgres database. 

Contributors
* Andy Metz
* Briana Liu 

## Create the Category and Subcategory DataFrames
1. Create a Category DataFrame that has the following columns:
* A "category_id" column that is numbered sequential form 1 to the length of the number of unique categories.
* A "category" column that has only the categories.
* Export the DataFrame as a category.csv CSV file.

2. Create a SubCategory DataFrame that has the following columns:
* A "subcategory_id" column that is numbered sequential form 1 to the length of the number of unique subcategories.
* A "subcategory" column that has only the subcategories.
* Export the DataFrame as a subcategory.csv CSV file.

## Campaign DataFrame
1. Create a Campaign DataFrame that has the following columns:
* The "cf_id" column.
* The "contact_id" column.
* The “company_name” column.
* The "blurb" column is renamed as "description."
* The "goal" column.
* The "goal" column is converted to a float datatype.
* The "pledged" column is converted to a float datatype.
* The "backers_count" column.
* The "country" column.
* The "currency" column.
* The "launched_at" column is renamed as "launch_date" and converted to a datetime format.
* The "deadline" column is renamed as "end_date" and converted to a datetime format.
* The "category_id" with the unique number matching the “category_id” from the category DataFrame.
* The "subcategory_id" with the unique number matching the “subcategory_id” from the subcategory DataFrame.
* And, create a column that contains the unique four-digit contact ID number from the contact.xlsx file.
* Then export the DataFrame as a campaign.csv CSV file.

## Create the Contacts DataFrame (Both Pandas and Regex)
1. Create a Contacts DataFrame that has the following columns:
* A column named "contact_id" that contains the unique number of the contact person.
* A column named "first_name" that contains the first name of the contact person.
* A column named "last_name" that contains the first name of the contact person.
* A column named "email" that contains the email address of the contact person
* Then export the DataFrame as a contacts.csv CSV file.


## Create the Crowdfunding Database 
crowdfunding_db Instructions:
Create crowdfunding_db in Postgres.
Load crowdfunding_db_schema.sql and run to create tables.
Import Resources/category.csv to category table.
Import Resources/subcategory.csv to subcategory table.
Import Resources/contacts.csv to contacts table.
Import Resources/campaign.csv to campaign table.
