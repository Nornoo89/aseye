set more off

*Correlation between the two dependent variables
pwcorr Tech_1 Tech_2, sig

* Bivariate probit model
biprobit Tech_1 Tech_2 EDUCATION HHS EXTENSION_CONTACT INCOME Off_Income FBO Experience FARMSIZE LANDRIGHT FARM_DISTANCE CREDIT_ACCESS Age


* For Wald test
biprobit Tech_1 Tech_2 EDUCATION HHS EXTENSION_CONTACT INCOME Off_Income FBO Experience FARMSIZE LANDRIGHT FARM_DISTANCE CREDIT_ACCESS Age, robust



* Predicted probabilities of y1=0 and y2=0, y1=0 and y2=1, y1=1 and y2=0, and y1=1 and y2=1
predict biprob00, p00 
predict biprob01, p01 
predict biprob10, p10 
predict biprob11, p11 

tab1 EDUCATION - Age

*Calculate the predicted probability of choosing each program type at 
*each level holding all other variables in the model at their means. Since there are 
*4 possible outcomes, we will need to use the margins command 4 times, one for each outcome value.

* Summarizing predicted values
summarize biprob00 biprob01 biprob10 biprob11


* Marginal effects
margins, dydx(*) predict(p00)
margins, dydx(*) predict(p01)
margins, dydx(*) predict(p10)
margins, dydx(*) predict(p11)


