#  ====Statistician with R ====
  ## EOB


# ==== Introduction to Data in R ====
  ##EOB Introduction to Data in R
# ==== Language of data ====
  ## Background
    installed.packages() #lists all insttaled packages
    # library()

    library(openintro) #load specfificed packages and atatch to session and serach list
    # require(openintro)
    
    data(package = "openintro") # list openintro data set
    
    #Info on data set for example "email50"
    class(email50)
    str(email50)
    
    library(dplyr)
    glimpse(email50)
    show(email50)
  
  ##Loading data into R
    # Load data
    data(email50)
    
    # View the structure of the data
    str(email50)

  ## Type of variables
    ?email50
    ?hsb2
    show(hsb2)
    
    table(hsb2$schtyp)    
    glimpse(hsb2$schtyp)
    
    hsb2_public <- hsb2 %>%
        filter(schtyp == "public")
    hsb2_private <- hsb2 %>%
        filter(schtyp == "private")
    hsb2_private    
    
    3 %>% sum(4)    #it will add 3 to 4
    
    table(hsb2_public$schtyp) 
    
    hsb2_public$schtyp <- droplevels(hsb2_public$schtyp)
    table(hsb2_public$schtyp) 
    
  ## Indentify variable type
    # Glimpse email50
    glimpse(email50)
  
  ## Filtering based on a factor      
    # Subset of emails with big numbers: email50_big
    email50_big <- email50 %>%
      filter(number == "big")
    
    # Glimpse the subset
    glimpse(email50_big)
    
    
  ##  Complete filtering based on a factor  
    # Subset of emails with big numbers: email50_big
    email50_big <- email50 %>%
      filter(number == "big")
    
    # Table of the number variable
    table(email50_big$number)
    
    # Drop levels
    email50_big$number_dropped <- droplevels(email50_big$number)
    
    # Table of the number_dropped variable
    table(email50_big$number_dropped)
    
  ## Discretize a variable
    avg_read = mean(hsb2$read)  #without printing output
    (avg_read = mean(hsb2$read))   #assign and print
    
    hsb2_2 <- hsb2 %>%
        mutate(read_cat = ifelse(
          read < avg_read,"below average","at or above average"
          )
        )
    
    (hsb2_2)
    
##EOB Language of data





