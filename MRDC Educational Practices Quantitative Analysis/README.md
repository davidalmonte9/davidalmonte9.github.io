# MRDC Educational Practices Quantitative Analysis

![summaryFindings](https://user-images.githubusercontent.com/43073356/84318395-5f17bc80-ab3c-11ea-85bf-cf77edd1e513.png)

### Abstract

Teacher preparation for the implementation of the Common Core State Standards (CCSS) has, to date, been the subject of relatively little research. This project builds one existing literature by using quantitative methods, including OLS multiple regression analysis, to identify the relationship between teacher preparation methods and gains in student performance on standardized tests. Results indicate the following: 
1. Teachers who perceive themselves to be more prepared for standards see greater year-to-year improvements in student test scores.
2. Collaborative planning time dedicated to familiarity with standards improves scores more than time dedicated to curriculum alignment.
3. Teacher membership in professional learning communities may induce performance gains in students. Policymakers and administrators seeking to maximize student performance should thus consider these factors in future education policy discussions. 

### Results

<p align="center">
  <img src = "https://user-images.githubusercontent.com/43073356/84319483-1bbe4d80-ab3e-11ea-86fa-d2159fab5739.png"/>
</p>

OLS multiple regression analysis of schoolwide survey response rates on year-to-year changes in student standardized test scores reveals statistically significant relationships for each of the 6 chosen measures of teacher preparedness (Table 1). 

* Schools where all teachers dedicated collaborative planning time to CCSS Standards familiarization could expect scores to rise by an average 0.230 standard deviations (ß = 0.230, p < .001). 
* Schools where teachers reported “Feeling strongly prepared to teach CCSS” saw improved test scores (ß = 0.228, p < .001). 
* Teacher participation in professional learning communities was also associated with improved scores (ß = 0.189, p < .001).

Negative predictors of student performance included the dedication of collaborative planning time to “curriculum adjustment” (ß = -0.330, p < .001), as well as the occurrence of CCSS content trainings (ß = -0.052, p < .001) and Job Embedded training on CCSS (ß = 0.088, p < .001). While both Content training and Job Embedded training are statistically significant, their effects are nominally minimal. CCSS Teacher preparedness metrics in the model explain only 1.35% of the total variation in test scores (R2 = 0.01348).
#### Discussion

The positive correspondence between teacher perceptions of their preparedness for Common Core standards and student performance has multiple implications. First, there might be reason to anticipate increasing returns to CCSS implementation over time as teachers build familiarity with standards and instructional methods. As a corollary, evaluations of CCSS implementation conducted in the immediate aftermath of standards changes likely overrepresent underprepared teachers and should be discounted. Such a relationship may also have implications for the assignment of teachers to students: administrators who prioritize closing or reducing the education gap consider assigning underperforming and at-risk students to better prepared teachers. Lastly, this result gives credence to the idea that teacher self-reporting of their preparedness can be a useful predictor of their ability.

The implications of this research are strongest for the allocation of collaborative planning time. The sign of the parameter estimate for curriculum adjustment is negative, while the same sign for standards familiarization is positive, implying there is strong reason to believe that collaborative planning time is better spent on improving teacher’s familiarity with CCSS. Alternatively, it may be the case that teachers who would underperform anyway resort to “teaching to the test,” which reflects in the data as curriculum adjustment. Teachers who focus on building familiarity with content and standards may be able to compensate for less aligned lesson plans and may generally rely less on strictly proscribed lesson planning materials.

The effect sizes of both Content-focused trainings and Job Embedded trainings on growth in student performance are statistically significant, but nominally insignificant. It likely the case that lower performing teachers are more likely to use either form of training, which may lead to higher scores than would appear in the absence of either form of training. The effect of both may be positive, but offsetting. More detailed data collection on the allocation of teacher time may be useful for future researchers in assessing the efficacy of training tools.

Lastly, this paper confirms the intuition that membership in professional learning communities can supplement teacher resources and improve teaching performance (Reichstetter, 2008). More research into the causal mechanisms behind professional learning community involvments’ effects on student performance may be necessary to conduct cost benefit analyses.

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

