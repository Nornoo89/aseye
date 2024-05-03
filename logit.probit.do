br
tab Adoption
tab Adoption, nol

// Descriptives
bysort Adoption: sum(Adoption Age Age_Cocoa_Farm Awareness)

//logit regression
logit Adoption Age Age_Cocoa_Farm Awareness

*Logistic regression (Odd ratio)
logit Adoption Age Age_Cocoa_Farm Awareness, or

*Marginal Effects
mfx


margins, dydx(*)



//Probit regression
probit Adoption Age Age_Cocoa_Farm Awareness

*Marginal Effects
mfx


margins, dydx(*)
