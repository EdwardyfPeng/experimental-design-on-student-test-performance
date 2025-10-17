# Experimental Design on the Effects of Test Environments on Students’ Performance
2023Fall  UCBerkeley STAT158 Final Project

Collaborated with Lisa(Manting) Li and Jason(Dingda) Yang

## Introduction
Students often find themselves encountering diverse emotional responses when taking
examinations. It's not always about how much they have studied or reviewed. Various factors,
besides how well students have learned, can significantly influence their performance in an exam.
Therefore, we want to explore some of them that are likely to affect the students’ ability to do
calculations in the test, which is also the scientific question of interest we want to study.
[
](https://www.google.com/url?sa=i&url=https%3A%2F%2Fabcnews.go.com%2FGMA%2FLiving%2Fus-students-declining-math-scores-sobering-expert%2Fstory%3Fid%3D116481011&psig=AOvVaw366bi5jUly1LmAQWrf4bv1&ust=1760760713288000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCNiX5f6uqpADFQAAAAAdAAAAABAE)<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/66e504e0-4a7f-487e-ae2a-70b260577d49" />

Based on the educational background we have, we figured out 3 different factors of interest
which may have some significant impacts on students’ calculation ability during a test: **the presence
of a countdown timer, the sequencing order of question difficulty, and whether the questions are
displayed at once.**

## Methodology

In order to test the effects of these factors, we conducted a **completely randomized
experiment (i.e., CR[3])** where we recorded the accuracy in a 4-minute calculation test for students
in STAT 158. Besides the conditions we mentioned above, we also conducted some interesting
contrasts which might give us a more specific comparison.

In the experiment we employed, these are the levels we have respectively for the three
factors of interest: **layout of questions (one at a time or on a single page), order of question
difficulty (easy to hard, hard to easy or random), and the presence of timer (with countdown timer
or without countdown timer).** The experimental unit is a single student from STAT 158 Lab Session and the response is the
student’s accuracy in the 4-minute calculation test. 

<img width="889" height="720" alt="image" src="https://github.com/user-attachments/assets/a60813cf-015d-45c7-8977-b92fd7b1cab7" />

Besides the separate effects of the factors, we will also test some relevant contrasts. Since we are much curious about differences within each factor, we decided
to carry out 3 main effect contrasts:
a. one at a time vs. single page in layout of questions;
b. random order vs. not random order in order of questions;
c. with timer vs. without timer in display of countdown timer.

<img width="1092" height="269" alt="Screenshot 2025-10-17 at 6 28 05 PM" src="https://github.com/user-attachments/assets/b52a8318-d1d2-4ec1-b320-da3602f47648" />


Also, according to the pilot run data, we conducted power analysis to decide the sample size
we were going to use. By estimating the variance of measurement error and predicting interesting
effect size for the main conditions, we obtained 3 power curves for the 3 factors respectively (more
details and plots can be found in Protocol). The results we got are that as long as we have 3
replications for each of the treatment combinations, we can have a pretty high power of more than
0.9999 for all of the 3 main factors. Therefore, we decided to have a sample size of 36 students for
our experiment.

## Conclusion
The results of our experiment show that in terms of factors of interest, only the order of
question difficulty has significant effects on the calculation accuracy which corresponds to the
students’ capacity of calculation, while there is no effect of the display of the questions and the
presence of timer. In terms of contrasts, we can only detect a significant mean difference between
the level of hard to easy and other levels within the factor order, which aligns with the result of the
main effects.
