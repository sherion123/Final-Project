install.packages("readr")
install.packages("tidyquant")
library(plotly)
library(tidyverse)
library(readr)
library(tidyquant)

#Importing data
Annual_Philippine_Tourism <- read_csv("Annual_Philippine_Tourism2.csv")
data <- as.data.frame(Annual_Philippine_Tourism)

#Defining the different line plots and y-axis (time)

fig <- plot_ly(data, x = ~Year, y = ~South_Korea, name = "South Korea", type = 'scatter', mode = 'lines+markers')%>%
  add_trace(x = ~Year, y = ~USA, name = 'USA', mode = 'lines+markers')%>%
  add_trace(x = ~Year, y = ~Japan, name = 'Japan', mode = 'lines+markers')%>%
  add_trace(x = ~Year, y = ~China, name = 'China', mode = 'lines+markers')%>%
  add_trace(x = ~Year, y = ~Taiwan, name = 'Taiwan', mode = 'lines+markers')%>%
  add_trace(x = ~Year, y = ~Australia, name = 'Australia', mode = 'lines+markers')%>%
  add_trace(x = ~Year, y = ~Singapore, name = 'Singapore', mode = 'lines+markers')%>%
  add_trace(x = ~Year, y = ~Canada, name = 'Canada', mode = 'lines+markers')%>%
  add_trace(x = ~Year, y = ~UK, name = 'UK', mode = 'lines+markers' )%>%
  add_trace(x = ~Year, y = ~Malaysia, name = 'Malaysia', mode = 'lines+markers')%>%
  layout(title = 'Annual Tourists in Philippines by Country',
         legend=list(title=list(text='Country')),
         xaxis = list(dtick = 1, tickformat="%b<br>%Y"),
         yaxis = list(title = "Number of Tourists"),
         width = 1000)
options(warn = -1)
fig <- fig %>%
  layout(
    xaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 0.5,
                 gridcolor = 'ffff'),
    yaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 0.5,
                 gridcolor = 'ffff'),
    plot_bgcolor='#e5ecf6')


fig

#Expenditures(----
expenditures <- read_csv("Expenditures3.csv")

fig2 <- plot_ly(expenditures, x = ~Year, y = ~Accommodation_Services, name = "Accommodation Services", type = "scatter", mode = "lines+markers")%>%
  add_trace(y = ~Food_Beverage, name = 'Food and Beverage')%>%
  add_trace(y = ~Transportation, name = 'Transportation')%>%
  add_trace(y = ~Travel_agencies_and_Reservations, name = 'Travel Agencies and Reservations')%>%
  add_trace(y = ~Entertainment_Recreation, name = 'Entertainment and Recreation')%>%
  add_trace(y = ~Shopping, name = 'Shopping')%>%
  add_trace(y = ~ Miscellaneous, name = "Misc") %>%
  layout(title = 'Average Daily Inbound Expenditure',
         legend=list(title=list(text='Consumption Product')),
         xaxis = list(dtick = "1", tickformat="%b<br>%Y"),
         yaxis = list(title = "Average Daily Expenses in Dollars"))
options(warn = -1)
fig2 <- fig2 %>%
  layout(
    xaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    yaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    plot_bgcolor='#e5ecf6')


fig2


#Expenditure drop down menu----
