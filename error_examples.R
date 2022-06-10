teamdata_sub <- data.frame(teamid = c(rep(1,6),rep(2,6)), 
                           age = c(44,18,40,33,33,50,22,23,39,42,57,51), 
                           gender = c("f","m","f","f","m","f","f","f","m","m","m","m"), 
                           ethnicity = c("A","B","A","D","C","B","A","A","B","B","C","C"))

teamdata_sub

my_attr <- c("numeric", "nominal", "nominal")

my_knippenberg <- faultlines(data = teamdata_sub, 
                             group.par = "teamid", 
                             attr.type = my_attr, 
                             method = "knippenberg")
my_knippenberg

my_gibson <- faultlines(data = teamdata_sub, 
                        group.par = "teamid", 
                        attr.type = my_attr, 
                        method = "gibson")

mycategorialdata <- data.frame(teamid = c(rep(1,6),rep(2,6)), 
                               age = c("40 to 50","18 to 25","40 to 49","30 to 39","30 to 39",
                                       "50 to 59","18 to 25", "18 to 25","30 to 39",
                                       "40 to 49", "50 to 59","50 to 59"), 
                               gender = c("f","m","f","f","m","f","f","f","m","m","m","m"), 
                               ethnicity = c("A","B","A","D","C","B","A","A","B","B","C","C"))

my_cat_attr <- c("nominal", "nominal", "nominal")

my_FLS <- faultlines(data = mycategorialdata, 
                     group.par = "teamid", 
                     attr.type = my_cat_attr, 
                     method = "shaw")

my_cat_attr <- c("nominal", "nominal", "nominal")

my_PMD <- faultlines(data = mycategorialdata, 
                     group.par = "teamid", 
                     attr.type = my_cat_attr, 
                     method = "trezzini")
