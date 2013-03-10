Plan
====

Clean and condition the data
----------------------------
* Convert activity and subject to factors
* Set out how to divide the data into three sets
* Describe the number of observations
* Mention any outliers

Investigate
-----------

Try to find the significant factors
* Run a classification tree
    * show a plot and describe the important variables
    * include a reference
    * cross validate
* Use svd (no time for this)
* Use random forest
    * expand rf to encompass validation set
    * include a reference
    * investigate using rfcv for cross validation (no time for this)

Build a model
-------------

* Decide on error rates (just use misclassification rate)
* Decide on cross validation strategy (is this within the training data, or can we use validation data?)
* Find the best model
* Maybe combine models? (no time)
* Make it into a function (not necessary for assignment)

Diagram ideas
-------------

* Basic tree
* Class centres for randomForest (probably not feasible to plot)

