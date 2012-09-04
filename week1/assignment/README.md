Week 1 Assignment
==========

Working memory training is a rapidly growing market with potential to further expand in the future. Several computerized software programs promoting cognitive improvements have been developed in recent years, with controversial results and implications. In a distinct literature, aerobic exercise has been shown to broadly enhance cognitive functions, in humans and animals. My research group is attempting to bring together these two trends of research, leading to an emerging third approach: designed sports training. Specifically designed sports – wrestling, fencing, martial arts – which tax working memory by incorporating motion in three-dimensional space, are an optimal way to combine the benefits of traditional cognitive training and aerobic exercise into a single activity.

So, suppose we conducted a training experiment in which subjects were randomly assigned to one of two conditions:

Designed sports training (des)
Aerobic training (aer)

Also, assume that we measured both verbal and spatial working memory capacity before and after training, using two separate measures:

* wm.v
* wm.s

Fictional data are available in the file: [DAA.01.txt](https://raw.github.com/boboppie/coursera-course-statistics_one/master/week1/assignment/DAA.01.txt) Right click on link to save the file to your computer.

Write an R script that does the following:

1. Plots histograms for all variables (therefore 8 histograms)
2. Provides descriptive statistics for all variables

*Description*
----------
              var   n  mean    sd median trimmed   mad min max range  skew kurtosis   se
    cond*       1 200  1.50  0.50    1.5    1.50  0.74   1   2     1  0.00    -2.01 0.04
    pre.wm.s    2 200 16.94  4.93   18.0   17.62  2.97   1  26    25 -1.54     2.71 0.35
    post.wm.s   3 200 23.18  4.94   23.0   23.39  4.45  11  37    26 -0.31     0.12 0.35
    pre.wm.v    4 200 15.22  8.93   15.0   14.83  8.90   0  45    45  0.48     0.05 0.63
    post.wm.v   5 200 17.47 12.06   16.0   16.92 11.86   0  52    52  0.34    -0.62 0.85

*Histogram*
----------
![ggplot](https://raw.github.com/boboppie/coursera-course-statistics_one/master/week1/assignment/plots/ggplot.png)
