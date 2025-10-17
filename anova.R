# Anova using randomization-based Inference (Table 3-1 in text)
TestPermute <- function(data){
  Y <- sample(test$accuracy)
  xaov <- anova(lm(Y ~ display * order * timer, data = test))
  x <- xaov[1:7,"F value"]
  names(x) <- rownames(xaov[1:7,])
  return(x)
}
CalPr <- function(perm,factorName){
  obsAnova <- anova(lm(accuracy ~ display * order * timer, data = test))
  obsF <- obsAnova[factorName,"F value"]
  c(obsF,sum(permTestF[,factorName] >= obsF) / length(permTestF[,factorName]))
}
set.seed(1234)
permTestF <- t(replicate(1000, TestPermute(test)))
source <- c("display","order","timer","display:order","display:timer","order:timer","display:order:timer")
for (fact in source){
  print(CalPr(permTestF,fact))
}
