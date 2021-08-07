# AutoML with Snowflake and H2O Driverless AI

## Introduction

H2O Driverless AI is an artificial intelligence (AI) platform for automatic machine learning. Driverless AI automates the most difficult data science and machine learning workflows such as feature engineering, model validation, model tuning, model selection, and model deployment. Modeling pipelines (feature engineering and models) are exported as standalone scoring artifacts.

This tutorial presents a quick introduction to the Driverless AI platform on Snowflake. Our goal is to build a classification model that predicts whether a Lending Club customer will default on their loan. 



We will use Snowflake and Driverless AI to 

- **import** the data from Snowflake, 
- **explore** the data using summary descriptive statistics and automated visualizations (AutoViz), 
- **build** a predictive model using an evolutionary algorithm for automatic feature engineering and model optimization,
- **measure** the model through diagnostics,
- **understand** the model through MLI (machine learning interpretability),
- **deploy** the model into production in a Snowflake system.

### Prerequisites

* A Snowflake account and access to Snowflake's _Partner Connect_.
* Know how to load data into Snowflake (documentation [here](https://docs.snowflake.com/en/user-guide-data-load.html)).
* A basic understanding of data science and machine learning concepts.


### What You'll Learn

* How to use Snowflake's "Partner Connect" to create a Driverless AI instance
* How to use Driverless AI to build a supervised learning classification model.
* How to deploy the finished model pipeline as a Snowflake JAVA UDF. 

### Assets

The Lending Club Loans data file is available for download here:


<button>
  [Download loans.csv file](https://snowflake-workshop-lab.s3.amazonaws.com/h2o/loans.csv)
</button>



