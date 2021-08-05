## Step 8: Machine Learning Interpretability (MLI)

One of Driverless AI's most important features is the implementation of a host of cutting-edge techniques and methodologies for interpreting and explaining the results of black-box models. In this tutorial, we just highlight some of the MLI features available in Driverless AI without discussing their theoretical underpinnings.


To launch MLI from a completed experiment, select the `INTERPRET THIS MODEL` button

![](images/08_mli_00.png)

The MLI view allows easy navigation through the various interactive plots.

![](images/08_mli_01.png)

### Dashboard

The `Dashboard` view displays four useful summary plots 

![](images/08_mli_02.png)

1. A K-LIME (Local Interpretable Model-agnostic Explanations) surrogate model.
2. A Decision Tree surrogate model.
3. A feature importance plot.
4. A PDP (Partial Dependence Plot).

Each of these plots are available in a larger format from the main MLI view.

### Feature Importance

Other plots include Feature importance on the transformed features

![](images/08_mli_04.png)

and on the original features

![](images/08_mli_05.png)

### Shapley

Shapley values are also available for the transformed and original features

![](images/08_mli_06.png)

### Additional Capabilities

The MLI view provides tools for disparate impact analysis and sensitivity analysis, also called "What If" analysis.

![](images/08_mli_01.png)













