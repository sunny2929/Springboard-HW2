getwd()
titan<- read.csv(file.choose(), header= TRUE, sep = ",")
head(titan)

/* Question 1 */

titan$embarked[titan$embarked == ""] <- 'S'


/* Qustion 2 */

titan$age[which(is.na(titan$age))]<- mean(titan$age, na.rm = TRUE)


/* Question 3 */

titan$boat<- sub(pattern="^$" , replacement= "None", titan$boat)

/* Question 4 */
titan= within(titan, { 
     has_cabin_number= ifelse(cabin== "", 0, 1)
})

write.csv(titan, file= "titanic_clean.csv")
