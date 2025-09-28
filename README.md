# Applied Linear Model's project: linear regression

## Assignment 1: Data exploration and Imputation of missing values 
This assignment, from the Applied Linear Models course (Jan–Mar 2025), contains a description of missing value imputation. I applied mean or median substitution depending on how adding these values would affect the variable’s distribution. While these single imputation may underestimate variability, it provided a consistent dataset, as illustrated in the "Missing Values" section of the attached RMarkdown file. The document also includes some preliminary dataset analyses, which I later used in a project, to evaluate whether the use of panel data could pose issues for the analysis.

## ManagingNA file
This R script handles missing data in the Women in STEM dataset through mean/median imputation, checks distributions before and after substitution, explores autocorrelation and independence across years, fits a linear regression with Durbin–Watson testing, and provides univariate and bivariate visualizations for exploratory analysis.
