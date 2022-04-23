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
         legend=list(title=list(text='variable')),
         xaxis = list(dtick = "M1", tickformat="%b<br>%Y"),
         yaxis = list(title = "Number of Tourists"),
         width = 1000)
options(warn = -1)
fig <- fig %>%
  layout(
    xaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    yaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    plot_bgcolor='#e5ecf6')


fig


