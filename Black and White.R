# Author: Hendrik A. Dreyer

# Capture black and white samples into data frame
white <- c(16,17,17,19,17,15,14,19,17,16,18,17,20,15,17,16,16,18,18,16);
black <- c(17,15,15,19,17,18,18,15,17,19,20,18,16,17,17,18,16,17,19,16);

table(white);
table(black);

# Do some EDA
# Normally distributed
par(mfrow=c(2,2))
qqnorm(white, main="White vehicles");
qqnorm(black, main="Black vehicles");

#Frequency
hist(white, breaks=seq(12,22,by=1));
hist(black, breaks=seq(12,22,by=1));

#Spread
boxplot(white, black, names = c("White vehicles","Black vehicles"), ylab = "Wheel diameter (inches)");

#Basic stats
summary(white);
summary(black);

#Null hypothesis: 		    H0	: 	µblack = µwhite
#Alternative hypothesis: 	HA	: 	µblack > µwhite

#Calculate the mean and sd of each sample
white_mean = mean(white);
white_sd = sd(white);
white_var = var(white);
black_mean = mean(black);
black_sd = sd(black);
black_var = var(black);

#Perform an independent samples t-test
zt.test=t.test(black, white, conf.level = 0.95, var.equal=F, alternative="greater");
# alternative = "greater", i.e., black > white = H-alternative
zt.test;





