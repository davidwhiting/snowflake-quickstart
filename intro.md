## Introduction

H2O Driverless AI is an artificial intelligence (AI) platform for automatic machine learning. Driverless AI automates some of the most difficult data science and machine learning workflows such as feature engineering, model validation, model tuning, model selection, and model deployment. It aims to achieve highest predictive accuracy, comparable to expert data scientists, but in much shorter time thanks to end-to-end automation. Driverless AI also offers automatic visualizations and machine learning interpretability (MLI). Especially in regulated industries, model transparency and explanation are just as important as predictive performance. Modeling pipelines (feature engineering and models) are exported (in full fidelity, without approximations) both as Python modules and as Java standalone scoring artifacts.

In this tutorial, we present a thorough introduction to the Driverless AI platform through an example using the famous Lending Club Loans dataset (citation). Our goal is to predict loan default for Lending Club customers based on historic data. We will use Driverless AI to 

- **import** the data from Snowflake, 
- **explore** the data using summary descriptive statistics and automated visualizations (AutoViz), 
- **build** a predictive model using an evolutionary algorithm for automatic feature engineering and model optimization,
- **measure** the model through diagnostics,
- **understand** the model through MLI (machine learning interpretability),
- **deploy** the model into production in a Snowflake system.

















