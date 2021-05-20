# Microbiome Mini-course: Data Presentation Workshop

Instructor: Kathy N. Lam \
Date: Friday May 21, 2021 \
Time:  3:00-5:00 p.m.


## Workshop summary

A hands-on tutorial discussing tools and tips for figure making and data presentation. This is meant to be a fun, practical tutorial on using the free, open-source vector graphics editor Inkscape as well as RStudio with the package ggplot2. We first cover the basics of Inkscape and go through several exercises, then do a group critique of a real figure, and finally replot the data to refine in RStudio.


## Preparation before class

We will use two applications that are free, open-source, and cross-platform (macOS, Windows, or Linux).

[Inkscape](https://inkscape.org) is a vector graphics editor that is a good free alternative to Adobe Illustrator. We will learn the basics of using Inkscape through some simple exercises. Please download and install before class; note that a fresh install may take up to 15 minutes.

[RStudio Desktop](https://www.rstudio.com) is an integrated development environment (IDE) for R, allowing us to write and run code, with many additional features and customizability. We will be generating and refining plots in RStudio using the ggplot2 package. You should already have R, RStudio, and ggplot2 installed from the previous tutorial. If not, please download and install before class. 

Advantages of using free tools:
- No dependence on expensive licenses, which may be lost after leaving institution
- No pirating software
- Facilitates sharing knowledge with others 

Disadvantages:
- Free or open-source usually means fewer features and perhaps more bugs and crashes; be sure to save your work frequently! *Note: I have noticed that Inkscape running on macOS is somewhat laggy, so be patient!*

*During our virtual class, I will demo exercises while sharing my screen. As a participant, you may also be asked to share your screen to encourage everyone to try these exercises on their own computer and become familiar with the software. Note that this workshop is meant to be casual, fun, and to facilitate learning!*

## Inkscape exercises

We briefly cover the difference between [raster and vector images](https://docs.google.com/presentation/d/1WP622YQeQTGh7a6g0D4qdTETr5GE8pV1PyJQhs2Z68U/edit#slide=id.g5843f28961_0_116). Then we go through a series of exercises together to learn how to use basic tools in Inkscape. These are meant to provide a foundation. *Disclaimer: I am not an expert, just self-taught!*

**Inkscape Basics**: We learn to navigate and use some basic tools and functions
  - General [interface](https://github.com/itskathylam/DataPres/blob/main/inkscape/interface_areas.png) ([Source](https://inkscape-manuals.readthedocs.io/en/latest/interface.html))
  - Zoom (commands bar or + and -)
  - Page dimensions (conference poster vs. manuscript figure)
  - Draw shapes; rotate; resize with and without maintaining aspect ratio (Ctrl)
  - Draw text; adjust space between words and kerning
  - Draw straight lines; draw manual lines and adjust nodes
  - Adjust Fill and Stroke (colours, stroke style)
  - Align objects (by eye with ruler, automatically with command)
  - Save as pdf (File > Save a copy)
  - Export as png (page, drawing, selection)
  
**Simplifying**: We smooth manually drawn strokes 
  - Select the pencil tool
  - Draw a freehand line
  - Path > Simplify (Cmd+L); repeat as desired
  - Alternatively: change the smoothing parameter before drawing the freehand line

**Clipping**: We isolate an object in a photograph
  - Download this [photograph of a streak plate](https://github.com/itskathylam/DataPres/blob/main/inkscape/petri_gfp_crisprcas.jpg)
  - Import into Inkscape 
  - Draw a circle shape directly over one of the petri dishes 
  - Change the fill to be white and transparent so you can easily place it over the object; resize accordingly
  - Select both the circle and the image
  - Object > Clip > Set

**Editing**: We modify an existing vector graphic
  - Go to [Wikimedia Commons](https://commons.wikimedia.org/wiki/Main_Page), a free-use media repository
  - Search for a vector graphic of a laboratory mouse
  - Download the svg file
  - Open in Inkscape
  - Ungroup (may have to do a few times)
  - Try deleting some line objects
  - Try manually adjust some nodes

**Tracing**: We convert a raster image into a vector image
  - Imagine that you are making a poster and would like to credit funding sources
  - Search for the [NIH logo on Google Images](https://www.google.com/search?q=NIH+logo&rlz=1C5CHFA_enUS883US883&sxsrf=ALeKk01t5aydJe1NeHtW4NVjFhusTp8l2g:1621258436877&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiX-d-p6tDwAhUWvJ4KHcs5AnMQ_AUoAXoECAEQAw&cshid=1621258609231260&biw=1920&bih=889)
  - Save the first bitmap
  - Import into Inkscape
  - Select object
  - Path > Trace Bitmap > Multiple Scans > uncheck Smooth; select Colours and specify a number of Scans that approximates the number of colours in the image 
  - Click Update to get a preview 
  - Click OK; the new vector image will be generated on top of the raster image


## Figure Critique 

We critique a real figure generated by and used with permission from my colleague. The figure presents data from mouse experiments that examine the effect of a drug on the microbiota, assessed by 16S rRNA gene analysis. 
- Download the [multi-panel figure](https://github.com/itskathylam/DataPres/blob/main/figure_critique/figure_critique.svg) 
- Take 5 minutes to carefully look at each panel individually as well as the figure as a whole
- Write down 5 things that you think could be improved. *Remember: The goal is not to deride the figure but to try to objectively improve it to help convey the science in a clear, easily readable way.*
- We will share and discuss these points as a group while examining the figure in Inkscape


## Figure Refinement in RStudio using ggplot2

>“The **g**rammar of **g**raphics tells us that a statistical graphic is a mapping from data to **aes**thetic attributes (colour, shape, size) of **geom**etric objects (points, lines, bars).” <br>
>“**ggplot** is designed to work iteratively. You start with a layer… then add layers.” <br>
-- Hadley Wickham, ggplot2, 2nd ed. 

We recreate a few of the panels in the figure above and refine the plots together using ggplot2.

- Download [data1](https://github.com/itskathylam/DataPres/blob/main/figure_refinement/data1.csv), a recreation of the data in panel (a) \
  Try geom_point vs. geom_jitter width \
  Try changing shape and fill 
- Download [data2](https://github.com/itskathylam/DataPres/blob/main/figure_refinement/data2.csv), a recreation of the data in panel (g) \
  Try changing alpha \
  Try geom_jitter
