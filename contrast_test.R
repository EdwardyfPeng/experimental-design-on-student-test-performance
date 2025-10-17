# Contrast using randomization-based Inference (Table 4-2 in text)
library(ri2)
TestC <- rbind(dispalyEffect = c(1,1,1,1,1,1,-1,-1,-1,-1,-1,-1),
randomEffect = c(1/2,1/2,1/2,1/2,-1,-1,1/2,1/2,1/2,1/2,-1,-1),
orderEffect = c(1/2,1/2,-1,-1,1/2,1/2,1/2,1/2,-1,-1,1/2,1/2),
timerEffect = c(1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1))
test_design <- declare_ra(N = nrow(test),
m_each = table(test$combination),
conditions = unique(test$combination))
tstat.contrast <- function(dat, cvec, ni = table(test$combination)){
sig2 <- anova(lm(accuracy ~ display * order * timer, data = dat))["Residuals","Me
an Sq"]
TestMean <- tapply(dat$accuracy, dat$combination, mean)
(matrix(cvec, nrow =1) %*% TestMean)/sqrt(sig2*sum(cvec^2/ni))
}
ri_ttest <- list()
length(ri_ttest) <- 4
set.seed(1234)
testfunction <- function(dat){
tstat.contrast(dat, TestC[i,])
}
for(i in 1:length(ri_ttest)){
ri_ttest[[i]] <- conduct_ri(test_function = testfunction,
declaration = test_design,
assignment = 'combination',
data = test, sims = 1000)
}
ri_pvals <- lapply(ri_ttest, function(x) summary(x)[3][[1]])
result <- cbind(TestC, pvalues=ri_pvals)
padjust.bonferroni <- p.adjust(ri_pvals, method = c("bonferroni"))
final.result <- cbind(result, padjust.bonferroni)
final.result
