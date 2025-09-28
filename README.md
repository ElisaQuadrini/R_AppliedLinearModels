# Applied Linear Model's project: a study on women in STEM education fields 

## ManagingNA file
This R script handles missing data in the Women in STEM dataset through mean/median imputation, applying mean or median substitution depending on how adding these values would affect the variable’s distribution. Further more, it explores autocorrelation and independence across years, fits a linear regression with Durbin–Watson testing, and provides univariate and bivariate visualizations for exploratory analysis.

### Assignment 1: Data exploration and Imputation of missing values 
This assignment, from the Applied Linear Models course (Jan–Mar 2025) is the Rmarkdown version including comment of the "ManagingNA" R file, and includes some preliminary dataset analyses, which I later used in the "Women in STEM" project, to evaluate whether the use of panel data could pose issues for the analysis. 

### Packages used in this scripts
`readxl`, `mice`, `stats`, `dplyr`, `lmtest`, `corrplot`, `knitr`,  

### Source dataset 
*DATASET_Women_In_STEM.xlsx* : customized dataset created by selecting variables from the Eurostat website at the following link:
[https://ec.europa.eu/eurostat/web/education-and-training/database](https://ec.europa.eu/eurostat/web/education-and-training/database)
