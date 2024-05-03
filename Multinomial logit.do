
tab adp

//Multinomial Logit
mlogit adp Age - Awareness, base(1)

mfx

margins, dydx(*)
