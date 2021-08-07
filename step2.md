## Step 2: Import Data from Snowflake

From the empty Datasets view, click the `Add Dataset` button and select the `SNOWFLAKE` connector:

![](images/02_data_1.png)

This launches the `Make Snowflake Query` form.

![](images/02_import_2.png)

Enter into the form

* the Database `Lendingclub`, 
* the Schema as `public`,
* the Warehouse as `demo_wh` (or whatever your Warehouse name is),
* the Name as `loans.csv`,
* the SQL Query `select * from loans`. 

Then click the `CLICK TO MAKE QUERY` button. This imports the data into the Driverless AI system.

![](images/02_import_5.png)

The dataset is now available for next steps in Driverless AI

![](images/02_import_3.png)

