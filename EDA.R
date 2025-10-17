# Check the distribution of response and calculate its mean and median (Figure 3-1 in text)
test <- read.csv("test.csv")
test$order <- factor(test$order,
levels = c("hard to easy", "random", "easy to hard"),
labels = c("h", "r", "e"))
test$display <- as.factor(test$display)
test$timer <- as.factor(test$timer)
test$combination <- paste(test$display, test$order, test$timer, sep = ":")
par(mfrow = c(1,2))
hist(test$accuracy, main = "histogram of accuracy", xlab = "accuracy")
boxplot(test$accuracy, main = "boxplot of accuracy")
mean(test$accuracy); median(test$accuracy)
###############
###############
# make strip chart (Figure 3-2 in text)
pch <- c(21, 22, 23)[test$order]
bg <- c("red", "blue")[test$display]
col <- rep("black", length=length(test$accuracy))
col[test$timer == "no"] <- bg[test$timer == "no"]
par(mar=c(7, 3, 1, 1))
with(test, plot(as.numeric(display:order:timer), accuracy, xaxt="n",xlab="", pch = pch, bg = bg, col = col))
with(test, axis(1, at = as.numeric(display:order:timer),labels = display:order:timer, las = 2))
with(test, legend("topleft", levels(order), pch = c(21,22,23), title = "order"))
with(test, legend("top", levels(display), fill = c("red","blue"), title = "display"))
with(test, legend("topright", levels(timer), pch = c(21,21), pt.bg = c("blue","blue"),col = c("black","green"), title = "timer"))
###############
###############
# make main effect plot (Figure 3-3 in text)
source("multiStripchart.R")
multiStripchart(test$accuracy, facnames=c("display","order","timer"), data = test, lines=FALSE, jitter=.5, pch = 20, cex = 1.2)
###############
###############
#two-way interaction plot (Figure 3-4 in text)
par(mfrow=c(1,3), pin=c(2,1.5))
with(test,interaction.plot(x.factor=display,trace.factor=order,accuracy,
trace.label="Order",xlab="display",ylab="Accuracy"))
with(test,interaction.plot(x.factor=display,trace.factor=timer,accuracy,
trace.label="Timer",xlab="display",ylab="Accuracy"))
with(test,interaction.plot(x.factor=timer,trace.factor=order,accuracy,
trace.label="Order",xlab="Timer",ylab="Accuracy"))
###############
###############
# three-way interaction plot(Figure 3-5 in text)
par(mfrow=c(1,3), pin=c(2,1.5))
with(test, interaction.plot(x.factor = timer[order=="h"],
trace.factor = display[order=="h"],
accuracy[order=="h"],trace.label="display",
xlab="with or without timer", ylab="accuracy"))
with(test, interaction.plot(x.factor = timer[order=="r"],
trace.factor = display[order=="r"],
accuracy[order=="r"],trace.label="display",
xlab="with or without timer", ylab="accuracy"))
with(test, interaction.plot(x.factor = timer[order=="e"],
trace.factor = display[order=="e"],
accuracy[order=="e"],trace.label="display",
xlab="with or without timer", ylab="accuracy"))
