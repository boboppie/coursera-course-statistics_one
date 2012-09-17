Histograms and Descriptions
===============

*Dataset*
----------
*Wine tasting*: there are four types of californian wines (columns), each has 30 ratings (scale 1 - 10)

file: [supplemental-stats1_ex01.txt](https://raw.github.com/boboppie/coursera-course-statistics_one/master/week1/lecture3/supplemental-stats1_ex01.txt)

                  RedTruck                  WoopWoop	HobNob	FourPlay
                  1	1	1	1
                  2	1	2	2
                  2	1	2	5
                  3	2	3	3
                  3	2	3	5
                  3	2	3	7
                  4	3	4	4
                  4	3	4	4
                  4	3	4	7
                  4	4	4	6
                  5	4	5	5
                  5	4	5	5
                  5	5	5	5
                  5	5	5	5
                  5	5	5	5
                  6	6	6	6
                  6	6	6	6
                  6	6	6	6
                  6	7	6	6
                  6	7	6	6
                  7	7	7	7
                  7	8	7	7
                  7	8	5	7
                  7	8	4	7
                  8	9	4	8
                  8	9	6	8
                  8	9	8	8
                  9	10	6	9
                  9	10	9	9
                  10	10	10	10

*Descriptions*
----------
                  var  n mean   sd median trimmed  mad min max range  skew kurtosis   se
         RedTruck   1 30 5.50 2.26    5.5    5.50 2.22   1  10     9  0.00    -0.81 0.41
         WoopWoop   2 30 5.50 2.92    5.5    5.50 3.71   1  10     9  0.00    -1.34 0.53
         HobNob     3 30 5.03 2.01    5.0    4.96 1.48   1  10     9  0.33    -0.01 0.37
         FourPlay   4 30 5.97 2.01    6.0    6.04 1.48   1  10     9 -0.33    -0.01 0.37

*Histograms*
----------
**normal R plot**:
<br>
![Rplot](https://raw.github.com/boboppie/coursera-course-statistics_one/master/week1/lecture/plots/Rplot.png)

[**ggplot2**] [1]:
<br>
![ggplot](https://raw.github.com/boboppie/coursera-course-statistics_one/master/week1/lecture/plots/ggplot.png)

These are density plots with a red line crossing the mean

[1]: http://wiki.stdout.org/rcookbook/Graphs/Plotting%20distributions%20(ggplot2)/

*Notes*
----------
In terms of discrete distribution, turing histogram to PMF (probability mass function) plot is easily done by normalizing the frequency (frequency/N or divided by sum). However, to get a PDF (probability density function) plot, should you must *divide by the area*. Read more on this [thread](http://stackoverflow.com/questions/5320677/how-to-normalize-a-histogram-in-matlab). It then turns to be a question of *probability density estimation*.