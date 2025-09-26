library(readxl)
women = read_excel("DATASET_Women_In_STEM.xlsx")
head(women)
summary(women)

#missing values
n = nrow(women)
library(mice) #in order to visualize the positions of the missing values

md.pattern(women)

#now we try to apply the mean imputation:
women_imp_mean = women

#third column
women_imp_mean$Early_Childhood_Edu[is.na(women$Early_Childhood_Edu)] = median(women_imp_mean$Early_Childhood_Edu, na.rm = TRUE)

plot(x=women$Early_Childhood_Edu, y=rep(0,n),pch=16, ylim = c(0, 0.1))
lines(x = density(na.omit(women)$Early_Childhood_Edu)$x, y = density(na.omit(women)$Early_Childhood_Edu)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$Early_Childhood_Edu)$x, y = density(women_imp_mean$Early_Childhood_Edu)$y, lwd = 2, lty = 1, col=2)

#fourth column
women_imp_mean$`At_Most_Lower_Sec_Edu(25/34)`[is.na(women$`At_Most_Lower_Sec_Edu(25/34)`)] = median(women_imp_mean$`At_Most_Lower_Sec_Edu(25/34)`, na.rm = TRUE)

plot(x=women$`At_Most_Lower_Sec_Edu(25/34)`, y=rep(0,n),pch=16, ylim = c(0, 0.1))
lines(x = density(na.omit(women)$`At_Most_Lower_Sec_Edu(25/34)`)$x, y = density(na.omit(women)$`At_Most_Lower_Sec_Edu(25/34)`)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$`At_Most_Lower_Sec_Edu(25/34)`)$x, y = density(women_imp_mean$`At_Most_Lower_Sec_Edu(25/34)`)$y, lwd = 2, lty = 1, col=2)

#fifth column
women_imp_mean$`At_Most_Lower_Sec_Edu(35/44)`[is.na(women$`At_Most_Lower_Sec_Edu(35/44)`)] = mean(women_imp_mean$`At_Most_Lower_Sec_Edu(35/44)`, na.rm = TRUE)

plot(x=women$`At_Most_Lower_Sec_Edu(35/44)`, y=rep(0,n),pch=16, ylim = c(0, 0.15))
lines(x = density(na.omit(women)$`At_Most_Lower_Sec_Edu(35/44)`)$x, y = density(na.omit(women)$`At_Most_Lower_Sec_Edu(35/44)`)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$`At_Most_Lower_Sec_Edu(35/44)`)$x, y = density(women_imp_mean$`At_Most_Lower_Sec_Edu(35/44)`)$y, lwd = 2, lty = 1, col=2)

#sixth column
women_imp_mean$`At_Least_Upper_Sec_Edu(20/24)`[is.na(women$`At_Least_Upper_Sec_Edu(20/24)`)] = median(women_imp_mean$`At_Least_Upper_Sec_Edu(20/24)`, na.rm = TRUE)

plot(x=women$`At_Least_Upper_Sec_Edu(20/24)`, y=rep(0,n),pch=16, ylim = c(0, 0.1))
lines(x = density(na.omit(women)$`At_Least_Upper_Sec_Edu(20/24)`)$x, y = density(na.omit(women)$`At_Least_Upper_Sec_Edu(20/24)`)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$`At_Least_Upper_Sec_Edu(20/24)`)$x, y = density(women_imp_mean$`At_Least_Upper_Sec_Edu(20/24)`)$y, lwd = 2, lty = 1, col=2)

#seventh column
women_imp_mean$`At_Least_Upper_Sec_Edu(25/64)`[is.na(women$`At_Least_Upper_Sec_Edu(25/64)`)] = mean(women_imp_mean$`At_Least_Upper_Sec_Edu(25/64)`, na.rm = TRUE)

plot(x=women$`At_Least_Upper_Sec_Edu(25/64)`, y=rep(0,n),pch=16, ylim = c(0, 0.1))
lines(x = density(na.omit(women)$`At_Least_Upper_Sec_Edu(25/64)`)$x, y = density(na.omit(women)$`At_Least_Upper_Sec_Edu(25/64)`)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$`At_Least_Upper_Sec_Edu(25/64)`)$x, y = density(women_imp_mean$`At_Least_Upper_Sec_Edu(25/64)`)$y, lwd = 2, lty = 1, col=2)

#eight column
women_imp_mean$Tertiary_Edu_Attain[is.na(women$Tertiary_Edu_Attain)] = median(women_imp_mean$Tertiary_Edu_Attain, na.rm = TRUE)

plot(x=women$Tertiary_Edu_Attain, y=rep(0,n),pch=16, ylim = c(0, 0.1))
lines(x = density(na.omit(women)$Tertiary_Edu_Attain)$x, y = density(na.omit(women)$Tertiary_Edu_Attain)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$Tertiary_Edu_Attain)$x, y = density(women_imp_mean$Tertiary_Edu_Attain)$y, lwd = 2, lty = 1, col=2)

#ninth column
women_imp_mean$Employment_Rates_Recent[is.na(women$Employment_Rates_Recent)] = mean(women_imp_mean$Employment_Rates_Recent, na.rm = TRUE)

plot(x=women$Employment_Rates_Recent, y=rep(0,n),pch=16, ylim = c(0, 0.07))
lines(x = density(na.omit(women)$Employment_Rates_Recent)$x, y = density(na.omit(women)$Employment_Rates_Recent)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$Employment_Rates_Recent)$x, y = density(women_imp_mean$Employment_Rates_Recent)$y, lwd = 2, lty = 1, col=2)

#decima colonna -> quella che si eliminera 
women_imp_mean$`Enrolled_From_Abroad(STEM)`[is.na(women$`Enrolled_From_Abroad(STEM)`)] = median(women_imp_mean$`Enrolled_From_Abroad(STEM)`, na.rm = TRUE)

plot(x=women$`Enrolled_From_Abroad(STEM)`, y=rep(0,n),pch=16, ylim = c(0, 0.1))
lines(x = density(na.omit(women)$`Enrolled_From_Abroad(STEM)`)$x, y = density(na.omit(women)$`Enrolled_From_Abroad(STEM)`)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$`Enrolled_From_Abroad(STEM)`)$x, y = density(women_imp_mean$`Enrolled_From_Abroad(STEM)`)$y, lwd = 2, lty = 1, col=2)

#11esima
women_imp_mean$Fem_Teachers_Tertiary_Edu[is.na(women$Fem_Teachers_Tertiary_Edu)] = mean(women_imp_mean$Fem_Teachers_Tertiary_Edu, na.rm = TRUE)

plot(x=women$Fem_Teachers_Tertiary_Edu, y=rep(0,n),pch=16, ylim = c(0, 0.15))
lines(x = density(na.omit(women)$Fem_Teachers_Tertiary_Edu)$x, y = density(na.omit(women)$Fem_Teachers_Tertiary_Edu)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$Fem_Teachers_Tertiary_Edu)$x, y = density(women_imp_mean$Fem_Teachers_Tertiary_Edu)$y, lwd = 2, lty = 1, col=2)

# 12 fa schifo anche questa 
women_imp_mean$`Public_Edu_Exp(Mln)`[is.na(women$`Public_Edu_Exp(Mln)`)] = mean(women_imp_mean$`Public_Edu_Exp(Mln)`, na.rm = TRUE)

plot(x=women$`Public_Edu_Exp(Mln)`, y=rep(0,n),pch=16, ylim = c(0, 0.15))
lines(x = density(na.omit(women)$`Public_Edu_Exp(Mln)`)$x, y = density(na.omit(women)$`Public_Edu_Exp(Mln)`)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$`Public_Edu_Exp(Mln)`)$x, y = density(women_imp_mean$`Public_Edu_Exp(Mln)`)$y, lwd = 2, lty = 1, col=2)

#13 
women_imp_mean$Unexpected_Financial_Exp[is.na(women$Unexpected_Financial_Exp)] = median(women_imp_mean$Unexpected_Financial_Exp, na.rm = TRUE)

plot(x=women$Unexpected_Financial_Exp, y=rep(0,n),pch=16, ylim = c(0, 0.15))
lines(x = density(na.omit(women)$Unexpected_Financial_Exp)$x, y = density(na.omit(women)$Unexpected_Financial_Exp)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$Unexpected_Financial_Exp)$x, y = density(women_imp_mean$Unexpected_Financial_Exp)$y, lwd = 2, lty = 1, col=2)

#last
women_imp_mean$Average_Weakly_Hrs_Work[is.na(women$Average_Weakly_Hrs_Work)] = median(women_imp_mean$Average_Weakly_Hrs_Work, na.rm = TRUE)

plot(x=women$Average_Weakly_Hrs_Work, y=rep(0,n),pch=16, ylim = c(0, 0.15))
lines(x = density(na.omit(women)$Average_Weakly_Hrs_Work)$x, y = density(na.omit(women)$Average_Weakly_Hrs_Work)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$Average_Weakly_Hrs_Work)$x, y = density(women_imp_mean$Average_Weakly_Hrs_Work)$y, lwd = 2, lty = 1, col=2)

#response variable
women_imp_mean$Tertiary_Edu_STEM[is.na(women$Tertiary_Edu_STEM)] = median(women_imp_mean$Tertiary_Edu_STEM, na.rm = TRUE)

plot(x=women$Tertiary_Edu_STEM, y=rep(0,n),pch=16, ylim = c(0, 0.15))
lines(x = density(na.omit(women)$Tertiary_Edu_STEM)$x, y = density(na.omit(women)$Tertiary_Edu_STEM)$y, lwd = 2, lty = 1)
lines(x = density(women_imp_mean$Tertiary_Edu_STEM)$x, y = density(women_imp_mean$Tertiary_Edu_STEM)$y, lwd = 2, lty = 1, col=2)
points(x = women_imp_mean$Tertiary_Edu_STEM[is.na(women$Tertiary_Edu_STEM)],
       y = rep(0,length(women_imp_mean$Tertiary_Edu_STEM[is.na(women$Tertiary_Edu_STEM)])), pch = 16, col = "red")


#autocorrelazione dei dati 
library(stats)

# Calcola l'autocorrelazione per tutte le variabili 
acf(women_imp_mean$Tertiary_Edu_STEM) 
acf_values <- acf(women_imp_mean$Tertiary_Edu_STEM, plot = FALSE)
acf_values$acf

acf_results <- list()

# Ciclo for per calcolare ACF per ogni colonna numerica
for (col in colnames(women_imp_mean)) {
  if (is.numeric(women_imp_mean[[col]])) { #in questo modo non mi considera le variabili categoriche 
    acf_values <- acf(women_imp_mean[[col]], plot = FALSE)  # Calcola l'ACF senza plot
    acf_results[[col]] <- acf_values$acf  # Salva i valori dell'ACF
  }
}

# Stampare l'ACF al lag 1 per ogni colonna
for (col in names(acf_results)) {
  if(acf_results[[col]][2] > 0.25 || acf_results[[col]][2] < -0.25) {
    cat("ACF(1) per", col, ":", round(acf_results[[col]][2], 4), "\n") #cat concatenates and prints the values of the acf, rounded at 4 decimals digits
  }
}

# Stampare l'ACF al lag 2 per ogni colonna
for (col in names(acf_results)) {
  if(acf_results[[col]][3] > 0.25 || acf_results[[col]][3] < -0.25) {
    cat("ACF(2) per", col, ":", round(acf_results[[col]][3], 4), "\n") #cat concatenates and prints the values of the acf, rounded at 4 decimals digits
  }
}

#da qui posso concludere che non c'è una forte autocorrelazione nelle variabili del secondo anno precedente: cio significa che se considero i dati 
#del 2019 e del 2021, posso assumere indipendenza tra le osservazioni

#il lag persiste all'anno precedente, anche se tolgo 2021 

#controllo se questa autocorrelazione è un problema:
install.packages("dplyr")  # Se non è installato
library(dplyr)

library(lmtest)

# Creare il modello di regressione lineare
women_filtered <- women_imp_mean %>% select(-GEO, -Time, -Area)

model <- lm(Tertiary_Edu_STEM ~ ., data = women_filtered)
summary(model)

# Test di Durbin-Watson
dwtest(model)
#


## EXPLORATORY ANALYSIS:
# 1. Consider all the variables of your dataset, with at least one categorical
#variable. Provide a detailed exploratory analysis of your data (use eﬀective graphs 
#to show the features of your data). 
#In particular, provide a suitable graphical representation of the relationships among such variables. 
#Also obtain the matrix of sample correlations between the variables and discuss it.

#Univariate plots

boxplot(women_imp_mean$Early_Childhood_Edu, main = "Early childhood education", col = "lightpink", ylab= "Percentages")

boxplot(women_imp_mean$`At_Most_Lower_Sec_Edu(25/34)`, women_imp_mean$`At_Most_Lower_Sec_Edu(35/44)`, main = "At most lower sec edu", 
        col = c("lightblue", "lightgreen"), names = c("Age: 25-34", "Age: 35-44"), ylab = "Percentages")

boxplot(women_imp_mean$`At_Least_Upper_Sec_Edu(20/24)`, women_imp_mean$`At_Least_Upper_Sec_Edu(25/64)`, main = "At least upper sec edu", 
        col = c("lightblue", "lightgreen"), names = c("Age: 20-24", "Age: 25-64"), ylab = "Percentages")

boxplot(women_imp_mean$Tertiary_Edu_Attain, women_imp_mean$Fem_Teachers_Tertiary_Edu, col = c("lightblue", "lightgreen"), 
        names = c("Tertiary education attainment", "Fem teachers in 3ry edu"), ylab = "Percentages")

boxplot(women_imp_mean$Employment_Rates_Recent, women_imp_mean$Unexpected_Financial_Exp, col = c("lightblue", "lightgreen"), 
        names = c("Employment rates", "Inability to face unexpected financial exp"), ylab = "Percentages")

boxplot(women_imp_mean$`Enrolled_From_Abroad(STEM)`, main = "Students Enrolled From Abroad", col = "lightyellow", ylab="Number")

boxplot(women_imp_mean$`Public_Edu_Exp(Mln)`, main = "Public Education Expenditure", col = "red", ylab = "Mln euros")

boxplot(women_imp_mean$Average_Weakly_Hrs_Work, main = "Average Weakly Hours of Work", ylab = "Number")


#bivariate plots:

#with the response variable as y:
plot(x=women_imp_mean$Early_Childhood_Edu, y=women_imp_mean$Tertiary_Edu_STEM, pch=16)
plot(x=women_imp_mean$`At_Most_Lower_Sec_Edu(25/34)`, y=women_imp_mean$Tertiary_Edu_STEM, pch=16)
plot(x=women_imp_mean$`At_Most_Lower_Sec_Edu(35/44)`, y=women_imp_mean$Tertiary_Edu_STEM, pch=16)
plot(x=women_imp_mean$`At_Least_Upper_Sec_Edu(20/24)`, y=women_imp_mean$Tertiary_Edu_STEM, pch=16)
plot(x=women_imp_mean$`At_Least_Upper_Sec_Edu(25/64)`, y=women_imp_mean$Tertiary_Edu_STEM, pch=16)
plot(x=women_imp_mean$Tertiary_Edu_Attain, y=women_imp_mean$Tertiary_Edu_STEM, pch=16)
plot(x=women_imp_mean$Employment_Rates_Recent, y=women_imp_mean$Tertiary_Edu_STEM, pch=16)
plot(x=women_imp_mean$`Enrolled_From_Abroad(STEM)`, y=women_imp_mean$Tertiary_Edu_STEM, pch=16)
plot(x=women_imp_mean$Fem_Teachers_Tertiary_Edu, y=women_imp_mean$Tertiary_Edu_STEM, pch=16)
plot(x=women_imp_mean$`Public_Edu_Exp(Mln)`, y=women_imp_mean$Tertiary_Edu_STEM, pch=16)
plot(x=women_imp_mean$Unexpected_Financial_Exp, y=women_imp_mean$Tertiary_Edu_STEM, pch=16)
plot(x=women_imp_mean$Average_Weakly_Hrs_Work, y=women_imp_mean$Tertiary_Edu_STEM, pch=16)





