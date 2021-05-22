library(ggplot2)

###refining panel (a) #############################################

data1 = read.csv("data1.csv", strip.white=TRUE, header=TRUE)

#recreate
geom_bar(aes(fill=Dose), stat="summary", fun="mean") +
    geom_point(size=5)+
    scale_y_log10() +
    theme_linedraw(16)

#refine
library(scales)
set.seed(1)
ggplot(data1, aes(x=Dose, y=Copies)) +
    geom_bar(aes(fill=Dose), stat="summary", fun="mean") +
    geom_jitter(height=0, width=0.2, size=5) +
    scale_y_log10(labels=trans_format("log10", math_format(10^.x))) +
    theme_linedraw(16)

###refining panel (g)  #############################################

data2 = read.csv("data2.csv", strip.white = TRUE, header=TRUE)

#recreate
ggplot(data2, aes(x=Axis1, y=Axis2)) +
    geom_point(aes(colour=Dose), size=6) +
    theme_linedraw(16)

#refine
set.seed(1)
ggplot(data2, aes(x=Axis1, y=Axis2)) +
    geom_jitter(aes(colour=Dose), size=6, height=0.02, width=0.02) +
    theme_linedraw(16)

ggplot(data2, aes(x=Axis1, y=Axis2)) +
    geom_point(aes(colour=Dose), shape=4, size=6) +
    theme_linedraw(16)

ggplot(data2, aes(x=Axis1, y=Axis2)) +
    geom_point(aes(fill=Dose), shape=21, size=6, alpha=0.5) +
    theme_linedraw(16)

ggplot(data2, aes(x=Axis1, y=Axis2)) +
    geom_point(aes(colour=Dose), size=6, alpha=0.25) +
    theme_linedraw(16)











