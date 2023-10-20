
#Define the data
Quantity <- c(10, 13, 20, 18, 17, 15, 16, 14, 11, 12)
Cost <- c(20, 28, 38, 35, 33, 30, 34, 29, 23, 25)

#Regression equation
model <- lm(Cost~Quantity)
summary(model)

#Define coefficients
Quantity <- coef(model)[1]
Cost <- coef(model)[2]

#Define quantity is 25,000 units
new_Quantity <- 25
estimated_cost <- Quantity + Cost * new_Quantity
summary(estimated_cost)


#Find the product moment correlation coefficient
correlation_coefficient <- cor(Quantity, Cost)
summary(correlation_coefficient)

#Calculate the coefficient of determination
coefficient_of_determination <- correlation_coefficient^2
summary(coefficient_of_determination)


