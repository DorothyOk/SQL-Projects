## Supermart Case Study
<img width="306" alt="Screenshot 2023-10-31 233955" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/4a77cd8a-bd9c-400c-98af-3b240d6e98b7">

# Supermart Case Study
## by Dorothy Okwubido
___
___
## INTRODUCTION
___
I took up this dataset to practice on my SQL skills. This dataset basically contains data on the operations of a supermarket; from the information of the customers to products sold, purchase orders, payments and credit card details.
___The key process would be to define the schema optimally and manipulate the dataset using appropriate queries to answer the questions below

___
## PROBLEM STATEMENT
___
With the given dataset, Create a database with the right relationships

Create the tables and import the data accordingly. Then query the database to answer the following questions:

### QUESTIONS
* How many orders have been delivered between September 2022 to February 2023?
* What is the top 10 products by revenue?
* What are the top 5 banks customers use the most?
* Who are the top 3 customers in terms of spending?
* How many orders have not been paid for?
* Which 3 cities do we have the most number of customers?
* Which city is generating the most revenue?

___
## DATA SOURCING
The dataset for this project is a generated dataset shared during a tutorial for the sole purpose of SQL practice.  
I used 5 key datasets for this case study:

### customers
<img width="548" alt="Select All Customers" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/bf5d151a-7785-429d-bf96-0d03903028ef">

### order
<img width="381" alt="Select All Orders" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/1946730c-a52e-4a81-8f60-e12f55f3a0e2">

### product
<img width="515" alt="Select All Product" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/43308fd8-fad0-4c2c-b72c-e8bb3424767c">

### payment
<img width="308" alt="Select All Payment" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/53d54c51-b981-4fa8-a22f-bcc2f3407bb1">

### creditcard
<img width="425" alt="Select All CreditCard" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/a6bd436c-e074-4b31-b8b2-e39faca197b0">

___
## DATA MODEL / ERD
___
<img width="572" alt="Sales Data Model" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/4056f9ee-ec86-4018-8ec1-3e6f31b5ba27">

This is a simple Snowflake Schema which I modelled by finding the relationship between each tables and connected the appropriate keys.
___
## QUERIES / SOLUTIONS
* How many orders have been delivered between September 2022 to February 2023?
<img width="416" alt="Question 1" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/ab8be0e3-3763-4746-96cc-baab2d68bd43">

___RESULT___  
<img width="417" alt="Result 1" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/479d05e8-a824-4f24-8d14-841592c0937f">

___
* What is the top 10 products by revenue?
I queried the product and order table to create a new measure to calculate the revenue. Revenue = unit_price (from product table) multiplied by quantity (from order table)
<img width="550" alt="Query 2A Revenue table" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/8dab0427-e493-462f-b78f-5a01e4ec1acc">

<img width="428" alt="Result 2a revenue table" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/d66bafb7-4fda-4cf7-a4f2-47455bc92478">

 Top 10 products by revenue
<img width="649" alt="Query 2b" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/cd109ec0-3706-4ef1-99d0-4887d71709de">

___RESULT___  

<img width="384" alt="Result 2b" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/bbdac8a8-cf46-49bd-994b-8f58322aff44">

___

* What are the top 5 banks customers use the most?
<img width="444" alt="Query 3" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/f33b2f34-90f2-4389-ac60-246fa5804d41">

___RESULT___  
<img width="366" alt="Result 3" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/8f155662-6800-420e-ad59-b79adb7d2422">
___
* Who are the top 3 customers in terms of spending?
<img width="591" alt="Query 4" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/067b94c1-eb1e-4358-a45e-4b31ae3899da">

___RESULT___  
<img width="338" alt="Result 4" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/9e565640-c85d-44af-bad4-d6af1b2dc52c">

___
* How many orders have not been paid for?
<img width="491" alt="Query 5" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/93477514-887a-4ded-becc-f1263cd1d957">

___RESULT___  
<img width="413" alt="Result 5" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/39e4e450-23b9-4a77-adff-ffc1da81f052">

___
* Which 3 cities do we have the most number of customers?
<img width="439" alt="Query 6" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/de708815-9c4f-4682-9ea2-2156ebc773bd">

___RESULT___  
<img width="446" alt="Result 6" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/1222df3d-53cf-4a39-a9f7-2a016631f402">

___
* Which city is generating the most revenue?
<img width="591" alt="Query 7" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/1a698f43-60f0-4107-95e4-ab25d03bd808">

___RESULT___  
<img width="533" alt="Result 7" src="https://github.com/DorothyOk/SQL-Projects/assets/146881329/514853a1-a8ea-4ada-9112-3557f8978072">

___
