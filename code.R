tutorial <- read.csv("OswegoTutorial.csv")

View(tutorial)
sapply(tutorial, class)
#covert age from factor to integer
tutorial$age <- as.integer(tutorial$age)

#data’s sex variable and change it to character. In this case, 1 = Male, 2 = Female. 
tutorial$sex <- as.character(tutorial$sex)
tutorial$sex[which(tutorial$sex == 1)] <- "Male"
tutorial$sex[which(tutorial$sex == 2)] <- "Female"
tutorial$sex[which(tutorial$sex == -1)] <- "Male"

#Remove all of the rows that have an NA in the onsettime column
tutorial2 <- tutorial[which(is.na(tutorial$onsettime)== F), ]
View(tutorial2)
