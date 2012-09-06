Week 1 Assignment
==========

Working memory training is a rapidly growing market with potential to further expand in the future. Several computerized software programs promoting cognitive improvements have been developed in recent years, with controversial results and implications. In a distinct literature, aerobic exercise has been shown to broadly enhance cognitive functions, in humans and animals. My research group is attempting to bring together these two trends of research, leading to an emerging third approach: designed sports training. Specifically designed sports – wrestling, fencing, martial arts – which tax working memory by incorporating motion in three-dimensional space, are an optimal way to combine the benefits of traditional cognitive training and aerobic exercise into a single activity.

So, suppose we conducted a training experiment in which subjects were randomly assigned to one of two conditions:

Designed sports training (des)
<br>
Aerobic training (aer)

Also, assume that we measured both **V**erbal and **S**patial **W**orking **M**emory capacity before and after training, using two separate measures:

* wm.v (verbal)
* wm.s (spatial)

Fictional data are available in the file: [DAA.01.txt](https://raw.github.com/boboppie/coursera-course-statistics_one/master/week1/assignment/DAA.01.txt) Right click on link to save the file to your computer.

Write an R script that does the following:

1. Plots histograms for all variables (therefore 8 histograms)
2. Provides descriptive statistics for all variables

*Description*
----------
All conditions:

              var   n  mean    sd median trimmed   mad min max range  skew kurtosis   se
    cond*       1 200  1.50  0.50    1.5    1.50  0.74   1   2     1  0.00    -2.01 0.04
    pre.wm.s    2 200 16.94  4.93   18.0   17.62  2.97   1  26    25 -1.54     2.71 0.35
    post.wm.s   3 200 23.18  4.94   23.0   23.39  4.45  11  37    26 -0.31     0.12 0.35
    pre.wm.v    4 200 15.22  8.93   15.0   14.83  8.90   0  45    45  0.48     0.05 0.63
    post.wm.v   5 200 17.47 12.06   16.0   16.92 11.86   0  52    52  0.34    -0.62 0.85
    
Designed sports training:

              var   n  mean    sd median trimmed   mad min max range  skew kurtosis   se
    cond*       1 100  2.00  0.00    2.0    2.00  0.00   2   2     0   NaN      NaN 0.00
    pre.wm.s    2 100 18.07  3.13   18.0   18.06  2.97  10  26    16 -0.08     0.01 0.31
    post.wm.s   3 100 23.06  4.14   23.0   23.10  4.45  11  33    22 -0.06     0.08 0.41
    pre.wm.v    4 100 16.44  8.65   16.0   15.96  8.90   0  45    45  0.58     0.47 0.87
    post.wm.v   5 100 18.02 12.20   16.5   17.38 11.86   0  52    52  0.43    -0.34 1.22

Aerobic training:

              var   n  mean    sd median trimmed   mad min max range  skew kurtosis   se
    cond*       1 100  1.00  0.00      1    1.00  0.00   1   1     0   NaN      NaN 0.00
    pre.wm.s    2 100 15.81  6.03     17   16.64  4.45   1  25    24 -1.26     0.66 0.60
    post.wm.s   3 100 23.30  5.64     23   23.66  5.93  11  37    26 -0.42    -0.20 0.56
    pre.wm.v    4 100 14.01  9.08     13   13.55  8.90   0  36    36  0.44    -0.39 0.91
    post.wm.v   5 100 16.92 11.96     16   16.50 13.34   0  43    43  0.24    -1.01 1.20

*Histogram*
----------
![ggplot](https://raw.github.com/boboppie/coursera-course-statistics_one/master/week1/assignment/plots/ggplot.png)

*Density*
----------
![Rplot](https://raw.github.com/boboppie/coursera-course-statistics_one/master/week1/assignment/plots/Rplot.png)
