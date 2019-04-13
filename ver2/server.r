# Define server logic to read selected file ----
server <- function(input, output) {
  
  output$contents <- renderTable({
    
    # input$file1 will be NULL initially. After the user selects
    # and uploads a file, head of that data file by default,
    # or all rows if selected, will be shown.
    
    #popup addition
    observeEvent(input$submit, {
      if(input$text == "true"){
        showModal(modalDialog(
          title = "Results",
          "The New is TRUE!",
          easyClose = TRUE
        ))
      } 
      
      else{
        showModal(modalDialog(
          title = "Results",
          "The New is FAKE!",
          easyClose = TRUE
        ))
      }
      
    })
    
    req(input$file1)
    
    # when reading semicolon separated files,
    # having a comma separator causes `read.csv` to error
    tryCatch(
      {
        #add the upload path for the Dataset
        current.folder<-"E:/CCT/Year 3/S2/gRUP/farooq/"
        file.copy(input$file1$datapath,paste0(current.folder,"newData.csv"), overwrite = TRUE)  
        #df <- read.csv(input$file1$datapath
                       #header = input$header,
                       #sep = input$sep,
                       #quote = input$quote
         #              )
      },
      error = function(e) {
        # return a safeError if a parsing error occurs
        stop(safeError(e))
      }
    )
    
    #if(input$disp == "head") {
      #return(head(df))
      #print(nrow(df))
      print(input$text)
      
      
     
    #}
    #else {
      #return(nrow(df))
      
    #}
    
  })
  
}

