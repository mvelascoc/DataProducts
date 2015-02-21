# DataProducts
Repository for the Developing Data Products (by Brian Caffo, PhD, Jeff Leek, PhD, Roger D. Peng, PhD) Coursera Class Feb 2015
Written by MVelasco on Feb 21 2015

# The Project

Your Shiny Application

Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
Deploy the application on Rstudio's shiny server
Share the application link by pasting it into the text box below
Share your server.R and ui.R code on github
The application must include the following:

Some form of input (widget: textbox, radio button, checkbox, ...)
Some operation on the ui input in sever.R
Some reactive output displayed as a result of server calculations
You must also include enough documentation so that a novice user could use your application.
The documentation should be at the Shiny website itself. Do not post to an external link.
The Shiny application in question is entirely up to you. However, if you're having trouble coming up with ideas, you could start from the simple prediction algorithm done in class and build a new algorithm on one of the R datasets packages. Please make the package simple for the end user, so that they don't need a lot of your prerequisite knowledge to evaluate your application. You should emphasize a simple project given the short time frame.  

# How the App Works
Application created calculates the Body Mass Index and shows the classification, to see if the data included represents a normaly wheight person or if there is any overwheight or underwhweigth
Ranges and scales where taken form http://en.wikipedia.org/wiki/Body_mass_index on Feb 21 2015 10:00

User can slide values for mass and height and recalculate the values with a submit button. 
There is a conditional pane that shows a different graph in case the mass value is less or more than 60kgs

# Where it is running
App is running in https://mvelascoc.shinyapps.io/DataProducts/
