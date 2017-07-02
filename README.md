# Getting and Cleaning Data - Course Project - README


This README describes how the run_analysis.R script works.


## Background



The data used in this analysis were part of the Human Activity Recognition (HAR) study using the embedded accelerometers and gyroscopes of the Samsung Galaxy S smartphone. Thirty subjects asked to perform six different activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a Samsung Galaxy S II on their waists. The embedded accelerometer and gyroscope captured 3-axial (X, Y, Z) linear acceleration and 3-axial (X, Y, Z) angular velocity measurements. The CodeBook.md file included in this repository provides additional descriptions of the measurements collected.

The resulting dataset was randomly separated into a "training" group (70% of subjects) and a "testing" group (30% of subjects).

Further information on the UCI HAR study is available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones




## The run_analysis.R script

This script assumes that the unzipped UCI HAR Dataset folder supplied in the project instructions is the working directory. It also requires two R packages be installed: *dplyr* and *reshape2*.



#### Preparing the data for analysis

Each of the training and testing data were found in three files--one file for the activity code (WALKING, SITTING, etc.) assigned to each observation, one file for the test subject ID assigned to each observation (1, 2, 3...30), and one file containing the observation data set. A fourth file, features.txt, supplied the 561 column names for the observation data set.

The first task was therefore to create a dataframe for each of the training and testing sets which contained the subject IDs, the activity performed, and the observations collected for each.

<ol><li>The script starts by ensuring the *dplyr* package is loaded. </li>

<li>The features.txt file is then read in as a dataframe and its second column, with the descriptions, is isolated as a character vector. </li>

<li>The testing dataframe is created first. The testing observation data set is read in and given the column names supplied in the *featurecolnames* character vector created in the previous step. The testing subject IDs are read in and given a descriptive column name "subject". The testing activity codes are read in and given a descriptive column name "activity". The final testing dataframe is created by cbinding the subject ID data, the activity data, and the observation dataset (*xtest2*).</li>

<li>The above steps are repeated for the training data: the training dataset is read in and given the column names from the *featurecolnames* character vector, then the subject IDs are read in, then the activity codes are read in. The three objects are put together with cbind to create the final training dataframe (*xtrain2*).</li></ol>

With the above steps complete, the script can then start executing on the requirements outlined in the assignment.


#### Merging the datasets

The first instruction is to merge the training data set (*xtrain2*) and the test data set (*xtest2*) to create one data set. This was completed using rbind to create the *hardata* dataframe.


#### Extracting mean and standard deviation measurements

The assignment was only interested in mean and standard deviation data, so a new limited dataframe was created (*harlim*) which included only those columns. "grep" was used to select the columns of interest from the full dataframe (*hardata*), and the resulting subset became *harlim*. 

NB: For the purposes of this analysis, "meanfreq()", which is a weighted average of the frequency components, was not included.


#### Applying descriptive activity names

The activity codes are defined by the activity_labels.txt file as follows:

<ol><li>WALKING</li>
<li>WALKING_UPSTAIRS</li>
<li>WALKING_DOWNSTAIRS</li>
<li>SITTING</li>
<li>STANDING</li>
<li>LAYING</li></ol>

The activity_labels.txt file is read in and the label names isolated as a vector. The "activity" column in the *harlim* data frame is converted from integers to factors and the labels are applied.


#### Giving the observation data set clearer names

The observation names provided in the features.txt file contain multiple abbreviations and non-alphanumeric characters. The script first removes the non-alphanumeric characters and then endeavours to make some of the abbreviations clearer, while keeping the format of column names consistent.

NB: See the CodeBook.md file for additional detail on variable names.


#### Create a second, independent tidy data set

The final requirement of the assignment was to create a second, independent tidy data set with the average of each variable for each activity and each subject.

<ol><li>The script first ensures the *reshape2* package is loaded.</li>

<li>"melt" is used on the *harlim* dataframe, denoting "subject" and "activity" as ID variables. By default, all other columns will be considered as measure variables. This generates a long, narrow dataset called *harmelt*.</li>

<li> The *harmelt* dataframe is then recast using "dcast" to show the mean for each variable by activity and subject. The final tidy dataset is stored as *hartidy*.</li></ol>


#### Output the resulting tidy data file

The submission instructions for this assignment includes a requirement to use write.table() using row.name=FALSE to output the tidy data set from the previous step to a .txt file.

