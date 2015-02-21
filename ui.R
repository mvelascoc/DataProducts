library(shiny)
shinyUI( 
    pageWithSidebar(
    # Application title 
        headerPanel("Body Mass Index"),
    sidebarPanel(
        h4("Include your body weight(kg) and height(mts) an submit the values to get your BMI calculation"),
        h5("Notice that the graph changes when passing 60kg"),
        sliderInput('mass', 'Mass in kg', 60, min = 40, max = 120, step = 1), 
        sliderInput('heigth', 'Height in mts', 1.56, min = 1.4, max = 2, step = .01), 
        submitButton('Calculate BMI')
    ), 
    mainPanel(
        h3('Your Body Mass Index'),
        verbatimTextOutput("index"),
        h4('Resulted in '), 
        verbatimTextOutput("class"),
        
        conditionalPanel("input.mass > 60",
            plotOutput("distPlot1", height = 300)
        ),
        conditionalPanel("input.mass <= 60",
            plotOutput("distPlot2", height = 300)
        )
        
    ) )
)

