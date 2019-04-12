
# Define UI for data upload app ----
ui <- fluidPage(
  
  # App title ----
  titlePanel(" Fake News Detector"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      textInput(inputId = "text", label = "Text input"
                
      ),
      # Input: Select a file ----
      fileInput("file1", "File input",
                multiple = FALSE,
                accept = c("text/csv",
                           "text/comma-separated-values,text/plain",
                           ".csv")),
      
      
      # Input: Checkbox if file has header ----
      
      
      # Input: Select separator ----
      
      
      # Input: Select quotes ----
      submitButton(text = "Submit", icon = NULL, width = NULL),
      
      # Horizontal line ----
      tags$hr()
      
      
    ),   # slidebar panel closed
    
    # Main panel for displaying outputs ----
    mainPanel(
      
      # Output: Data file ----
      tableOutput("contents")
      
    ) # main panel closed
    
  ) # slidebar layout closed
) # fluid page closed
