# Applied Linear Model's project: a study on women in STEM education fields 

## ManagingNA file
This R script handles missing data in the Women in STEM dataset through mean/median imputation, applying mean or median substitution depending on how adding these values would affect the variable’s distribution. Further more, it explores autocorrelation and independence across years, fits a linear regression with Durbin–Watson testing, and provides univariate and bivariate visualizations for exploratory analysis.

### Assignment 1: Data exploration and Imputation of missing values 
This assignment, from the Applied Linear Models course (Jan–Mar 2025) is the Rmarkdown version including comment of the "ManagingNA" R file, and includes some preliminary dataset analyses, which I later used in the "Women in STEM" project, to evaluate whether the use of panel data could pose issues for the analysis. 

### Packages used
`readxl`, `mice`, `stats`, `dplyr`, `lmtest`, `corrplot`, `knitr`.

### Source dataset 
*DATASET_Women_In_STEM.xlsx* : customized dataset created by selecting variables from the Eurostat website: [eurostat/web/education-and-training/database](https://ec.europa.eu/eurostat/web/education-and-training/database)
with the exception of the following variables:
- Inability to Face Unexpected Financial Expenses: [https://ec.europa.eu/eurostat/databrowser/view/ilc_mdes04__custom_14947835/default/table?lang=en](https://ec.europa.eu/eurostat/databrowser/view/ilc_mdes04__custom_14947835/default/table?lang=en)
- Average Weakly Hours of Work: [https://ec.europa.eu/eurostat/databrowser/view/lfsa_ewhun2__custom_14947910/default/table?lang=en](https://ec.europa.eu/eurostat/databrowser/view/lfsa_ewhun2__custom_14947910/default/table?lang=en)
#### Variable selection criteria: 
The dataset has been created in order to develop a study about the increasing phenomenon of women applying to STEM education fields, so each variable has been personalized with the specific function in the Eurostat website in order to visualize data regarding female individuals, referred to the years 2019, 2020, 2021.
The provenance of this data is explained by the UNESCO OECD Eurostat (UOE) joint data collection methodology: Eurostat collects and disseminates data from the EU Member States, candidate countries and EFTA countries: [UNESCO_OECD_Eurostat_(UOE)_joint_data_collection_–_methodology](https://ec.europa.eu/eurostat/statistics-explained/index.php?title=UNESCO_OECD_Eurostat_(UOE)_joint_data_collection_–_methodology)
The data have been collecting with a time frequency of one year.
For more detail, see the "Final Assignment" attached pdf file.



## FINAL_ASSIGNMENT_Quadrini file
The goal of the project is to evaluate the efficacy of a linear regression model, based on the available variables, in predicting the number of women graduated in STEM education fields in a European country. For further details, please refer to the corresponding section in the attached PDF report.
### Project Workflow:
- **Dataset**: *women_imp_mean_cleaned.xlsx*.  
- **Missing data**: handled by mean imputation to preserve country balance, as described in the Missing data section of this README file.  
- **Response variable**: female STEM graduates, log-transformed to improve distribution.  
- **Exploratory analysis**: univariate plots, correlation matrices, and scatterplots to detect relationships and multicollinearity.  
- **Variable selection**: best subset selection evaluated with AIC, BIC, and cross-validation.  
- **Collinearity reduction**: combined education variables and created dummy variables for geographic areas (for the maps, it has been used the *DATASET_Women_In_STEM.xlsx*. 
- **Final model**: linear regression with 7 predictors.  
- **Diagnostics**: tested normality, homoscedasticity, residual patterns, and spatial correlation.  
- **Validation**: applied to new data and simulations, showing good predictive ability despite some assumption violations.

### Packages used 
`readxl`, `dplyr`, `leaps`, `pander`, `GGally`, `corrplot`, `knitr`, `car`, `ggplot2`, `maps`, `faraway`
