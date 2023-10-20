getwd()
toy <- read.csv("C:/Users/User/Documents/toydata.csv")
plot(toy$X,toy$y, Xlab="X",ylab = "y")

#fitting a model
lm(y~X, data=toy)

#exploring data
fit <- lm(y~X, data= toy)
summary(fit)

#making prediction
yhat <- fit$coefficients[[1]] + fit$coefficients[[2]]*toy$X
yhat
yhat <- predict(fit,toy)
yhat

#making plot
plot(toy$y~toy$X)
lines(toy$X,yhat,lwd=2)

#adjusting outlier
fit2 <- lm(y~X, data=toy, subset=1:9)
summary(fit2)

yhat2<-predict(fit2,toy)
plot(toy$y~toy$X)
lines(toy$X,yhat2,lwd=2,col='red')

#evaluation
mean((toy$y-yhat)^2) #include outlier
mean((toy$y-yhat2)^2) #exclude outlier
