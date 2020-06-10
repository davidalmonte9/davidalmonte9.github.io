# MRDC Educational Practices Quantitative Analysis

![summaryFindings](https://user-images.githubusercontent.com/43073356/84318395-5f17bc80-ab3c-11ea-85bf-cf77edd1e513.png)


Teacher preparation for the implementation of the Common Core State Standards (CCSS) has, to date, been the subject of relatively little research. This project builds one existing literature by using quantitative methods, including OLS multiple regression analysis, to identify the relationship between teacher preparation methods and gains in student performance on standardized tests. Results indicate the following: 1) teachers who perceive themselves to be more prepared for standards see greater year-to-year improvements in student test scores, 2) collaborative planning time dedicated to familiarity with standards improves scores more than time dedicated to curriculum alignment, and 3) teacher membership in professional learning communities may induce performance gains in students. Policymakers and administrators seeking to maximize student performance should thus consider these factors in future education policy discussions. 

#### Replication Documentation

All analysis files were created using R-Markdown within RStudo (version 1.2), an open source statistical programing suite. Code creation and execution occurred on a 2018 Macbook Pro running MacOs Catalina.

##### File Structure:

* Summary Findings.pdf - Presentation Slide. Discusses preliminary results and apparent correlations in data.
* MRDC Math Standards Paper.pdf - APA formatted research paper. 
* FOLDER: Original Data
  * Questionnaire.pdf
  * Documentation.pdf
  * manifest.txt
  * FOLDERS: DS0001-10 - Each folder contains an rda and the associated codebook. Each codebook contains summary statistics for responses to each of the relevant questionaires. 
    * NOTE: This project only calls folders DS0001 (student standardized test performance)and DS0004 (teacher responses to a questionaire).
* FOLDER: Command Files
  * 

##### Technical Requirements

The following r libraries must be installed prior to execution.

* dplyr
* writexl
* ggplot2
* tidyverse
* prettyR

