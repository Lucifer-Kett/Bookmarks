As a User  
So that I know which links I have saved  
I want to be able to see a list of bookmarks  

![alt text](https://github.com/Luke-Collins/Bookmarks/blob/main/bookmarks_diagram.png)


DATABASE SETUP

command CREATE DATABASE bookmark_manager;

Connect to the database using the pqsl command \c bookmark_manager;

Run the query we have saved in the file 01_create_bookmarks_table.sql

TEST DB SETUP

psql
CREATE DATABASE "bookmark_manager_test";

CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

run 01_create_bookmarks_table.sql