library(UsingR)

bmindex <- function(mass, heigth) mass / heigth^2

bmistate <- function(mass, heigth) {

    bmi <- bmindex(mass, heigth)
    if (bmi < 15)
        classLabel <- "Very Severely underweight"
    else if (bmi < 16)
        classLabel <- "Severely Underweight"
    else if (bmi < 18.5)
        classLabel <- "Underweight"
    else if (bmi < 25)
        classLabel <- "Normal"
    else if (bmi < 30)
        classLabel <- "Overweight"
    else if (bmi < 35)
        classLabel <- "Obese Class I (Moderately obese)"
    else if (bmi < 40)
        classLabel <- "Obese Class II (Severely obese)"
    else
        classLabel <- "Obese Class III (Very severely obese)"
    return(classLabel)
}

bmiplot1 <- function(mass, heigth) {
    
    bmi <- bmindex(mass, heigth)
    alt <- .01*(1:100) + 1
    pes1 <-  alt*alt*18.5
    pes2 <-  alt*alt*25
    pes3 <-  alt*alt*30
    pes4 <-  alt*alt*35
    pes5 <-  alt*alt*40
    thePlot <- plot(pes1, alt, type='l', main = "Normal to Overwheight Range", 
                    xlab = "Weight", ylab="Height", xlim=c(60, 120))
    lines(pes2, alt)
    lines(pes3, alt, col="blue")
    lines(pes4, alt, col="blue")
    lines(pes5, alt, col="blue")
    text(mass,heigth, labels="you")
    return (thePlot)
}

bmiplot2 <- function(mass, heigth) {
    
    bmi <- bmindex(mass, heigth)
    alt <- .01*(1:100) + 1
    pes1 <-  alt*alt*18.2
    pes2 <-  alt*alt*25
    pes3 <-  alt*alt*16
    thePlot <- plot(pes1, alt, type='l', main = "Normal to Underwheigh Range", 
                    xlab = "Weight", ylab="Height", xlim=c(40, 80))
    lines(pes2, alt)
    lines(pes3, alt, col="blue")
    text(mass,heigth, labels="you")
    return (thePlot)
}
shinyServer( function(input, output) {
    output$index <- renderPrint({bmindex(input$mass, input$heigth)}) 
    output$class <- renderPrint({bmistate(input$mass, input$heigth)}) 
    output$distPlot1 <- renderPlot({bmiplot1(input$mass, input$heigth)})
    output$distPlot2 <- renderPlot({bmiplot2(input$mass, input$heigth)})
}
)