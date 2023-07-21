# InventoryAnalysis
Business Case 
**** A medium-sized  Manufacturing Company produces electronic components. They have a wide range of products and maintain an inventory of raw materials, work-in-progress (WIP), and finished goods. The company has been experiencing issues with inventory management, including stockouts, excess inventory, and increased carrying costs. The management team wants to conduct an inventory analysis to identify areas for improvement and optimize their inventory management practices.
Objectives 
The primary objectives of the inventory analysis are as follows:
Determine the optimal inventory levels for raw materials, WIP, and finished good
Identify opportunities to reduce stockouts and excess inventory.
Analyze inventory turnover and carrying costs to optimize working capital.
Desired Output
A clean and organized Excel sheets that shows key trends to help optimize the inventory management
Dataset
https://www.kaggle.com/datasets/bhanupratapbiswas/inventory-analysis-case-study
Type of Analysis
Descriptive
Analyzing Process
A) Asking questions
 Which products experience higher demand than their production amount?( leading to stockouts)
Which products experience lower demand than their production amount? (resulting in carrying costs)
Which raw materials are consumed in larger quantities?
What are the purchased items that have higher sales?
B) Preparing Data
I download four excel sheets in CSV format for this analysis, Each one is a different dataset:
 BeginInvFinal:  Contains information about the remaining products in each store at the start of 2015.
EndInvFinal: Contains information about the remaining products in each store at the end of the year 2016
PurchasesFinal: Contains  information about the products and raw materials that were bought during the year 2016. 
 SalesFinal: Contains information about the products and raw materials that were sold during the year 2016.
C) Processing Data
I created an xlsx copy of all the four files that I mentioned in the preparing step to facilitate data preparation, processing, and analysis.
 In these copies, I formatted each column in the four sheets to an appropriate type of data.
Moreover, I excluded  unnecessary data for the current objectives, like  description, volume/size and classification of the product/material. As well as the vendors information.
D) Analyzing Data
Highlighting Production Issues
To optimize the production streamline, we need to identify the problems in production. This is achieved by analyzing the level of demand for each brand.
The following steps demonstrate how I conducted the analysis:
1- I joined the BeginInv and EndInv tables together using the InventoryID, and summed the total amount the company manufactured and stored for each brand at the beginning (startonHand) and the end(EndOnHand) of 2016 .
2- Moreover, I calculated the difference between the two quantities to get the additional amount that the company produced (diffUnits) and sorted them according to this difference.
The negative values in diffUnits column indicates that the company increased the production of certain brands through out the year.
The higher these negative values are, the higher  the impact on the carrying cost. Which leads to a significate downfall in the working capital.
On the other hand, the positive values means a decrease in the production of other products, this reduce excess inventory, decrease carrying cost and saves the working capital.
Also, we can see which items runout from the inventory. We only need to sort them in ascending order  by EndOnHand column.
Highlighting Procurement Issues
1- To summarize  purchases table, I used Sum() function to calculate the total amount of units that were bought in each store for each product and their total cost. I did the same thing for the sales table.
2- After I generated Purchases Summary table and Sales Summary table, I joined them using full outer join. The reason for this is their are some items that were bought but not sales, these are the raw materials that were used in production. Similarly, many goods in sales tables were not available in the purchases table, as these were the manufactured products, So I used full outer join to include all the data in one place.
3- To reorganize the table and combine all the common data in one column instead of two, I populated the InventoryID, store and Brand  data from sales table into purchases data  if these fields has NULL values in the Purchases table.
4- Then, I replaced all the NULL values in the totalBought and totalSold column with 0.
5- Finally after generating the final Summary report for bought and sold items. I added another column called to calculate the difference between the bought and sold units for each item to see how many units remained in  the inventory.
You can notice that there are negative values in the remaining column, this goes back to the fact that the quantity of sold units of a certain product (for example, Brand 4379) are much higher than the quantity that the company bought. This is because the company already had a stock of these products already since previous years, and they bought additional stock in 2016.
Using this summary table, we can highlight which products have high demand or used in manufacturing more often. That way, we can decide how may products or items we can buy next year.
