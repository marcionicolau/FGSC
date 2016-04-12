
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

shinyUI(fluidPage(
  title = 'Examples of DataTables',
  sidebarLayout(
    sidebarPanel(
      conditionalPanel(
        'input.view === "maps"', h1('Hello')
        # checkboxGroupInput('show_vars', 'Columns in diamonds to show:',
        #                    names(diamonds), selected = names(diamonds))
      ),
      conditionalPanel(
        'input.view === "fgsc"',
        helpText('Display 5 records by default.')
      )
    ),
    mainPanel(
      tabsetPanel(
        id = 'view',
        tabPanel('maps', h1('Maps')),
        tabPanel('fgsc', DT::dataTableOutput('mytable3'))
      )
    )
  )
))
