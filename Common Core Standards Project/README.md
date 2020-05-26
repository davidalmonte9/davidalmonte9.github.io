Almonte, “Explaining Variation in CCSS Math Performance using Variations in Teacher Preparedness”



All analysis files were created using R-Markdown within RStudo, an open source statistical programing suite. Code was created on a 2018 Macbook Pro using the MacOs Mojave operating system. 



Structure:



Replication Documentation

​	

- •	Analysis Data (sub folder of main folder) 

- - o	Students_Sample_VO1.csv: csv output of the selected sample of student data, in csv form
  - o	Students_V01
  - •	Command Files
  - o	37046-0001-Data.csv
  - o	37046-0004-Data.csv
  - o	Data Dictionary.xlsx
  - o	Insight Project Code.rmd
  - •	Original Data
  - •	Documents
  - o	DALMONT_Insight_Paper.pdf: Final Paper by David Almonte, containing results.
  - o	README.rtf: This file



Instructions for Replicating the Study



1. 1. 1.	All analysis was done using Studio’s software suite; the following packages were installed.



library(dplyr)

library(writexl)

library(ggplot2)

library(tidyverse)

library(prettyR)

​		



1. 1. 2.	Data for the replication may be imported from the following files, using the read.csv() function in R



37046-0001-Data.csv

37046-0004-Data.csv



1. 1. 3.	Existing R Code for the project is in following file. Use this code to conduct analysis.



Insight Project Code.rmd