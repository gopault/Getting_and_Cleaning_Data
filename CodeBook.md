# Getting and Cleaning Data - Course Project - Code Book


This Code Book describes the variables in the final tidy data set.


## Background


The data used in this analysis were part of the Human Activity Recognition (HAR) study using the embedded accelerometers and gyroscopes of the Samsung Galaxy S smartphone. Thirty subjects asked to perform six different activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a Samsung Galaxy S II on their waists. The embedded accelerometer and gyroscope captured 3-axial linear acceleration and 3-axial angular velocity measurements. 

The README.md file included in this repository provides additional description of the script used to tidy this data set.

Further information on the UCI HAR study is available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones



## Variables - Description from the UCI HAR study

These data come from accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. All measurements are in Hz.

* Variables that begin with "Time" are time domain signals.
* Variables that begin with "Freq" are frequency domain signals, indicating variables to which a Fast Fourier Transform (FFT) was applied.
* Variables that contain "Acc" are accelerometer measurements.
* Variables that contain "Gyro" are gyroscope measurements.
* Signals further separated into body and gravity acceleration signals are denoted in the variable names with "Body" and "Gravity" respectively.
* Body linear acceleration and angular velocity were derived in time to obtain Jerk signals. These are denoted in the variable names with "Jerk". 
* Magnitude of these three-dimensional signals were also calculated. These variables include "Mag".



## Variables - hartidy data set (tidydata.txt)

<ol><li>subject: There were 30 subjects in the study. This column indicates which subject was being observed.</li>
<li>activity: There were 6 activities measured in the study: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.</li>
<li>TimeBodyAccMeanX: Time signal, body, acceleration, mean, X-axis</li>
<li>TimeBodyAccMeanY: Time signal, body, acceleration, mean, Y-axis</li>
<li>TimeBodyAccMeanZ: Time signal, body, acceleration, mean, Z-axis</li>
<li>TimeBodyAccStdDevX: Time signal, body, acceleration, standard deviation, X-axis</li>
<li>TimeBodyAccStdDevY: Time signal, body, acceleration, standard deviation, Y-axis</li>
<li>TimeBodyAccStdDevZ: Time signal, body, acceleration, standard deviation, Z-axis</li>
<li>TimeGravityAccMeanX: Time signal, gravity, acceleration, mean, X-axis</li>
<li>TimeGravityAccMeanY: Time signal, gravity, acceleration, mean, Y-axis</li>
<li>TimeGravityAccMeanZ: Time signal, gravity, acceleration, mean, Z-axis</li>
<li>TimeGravityAccStdDevX: Time signal, gravity, acceleration, standard deviation, X-axis</li>
<li>TimeGravityAccStdDevY: Time signal, gravity, acceleration, standard deviation, Y-axis</li>
<li>TimeGravityAccStdDevZ: Time signal, gravity, acceleration, standard deviation, Z-axis</li>
<li>TimeBodyAccJerkMeanX: Time signal, body, acceleration jerk, mean, X-axis</li>
<li>TimeBodyAccJerkMeanY: Time signal, body, acceleration jerk, mean, Y-axis</li>
<li>TimeBodyAccJerkMeanZ: Time signal, body, acceleration jerk, mean, Z-axis</li>
<li>TimeBodyAccJerkStdDevX: Time signal, body, acceleration jerk, standard deviation, X-axis</li>
<li>TimeBodyAccJerkStdDevY: Time signal, body, acceleration jerk, standard deviation, Y-axis</li>
<li>TimeBodyAccJerkStdDevZ: Time signal, body, acceleration jerk, standard deviation, Z-axis</li>
<li>TimeBodyGyroMeanX: Time signal, body, gyroscopic, mean, X-axis</li>
<li>TimeBodyGyroMeanY: Time signal, body, gyroscopic, mean, Y-axis</li>
<li>TimeBodyGyroMeanZ: Time signal, body, gyroscopic, mean, Z-axis</li>
<li>TimeBodyGyroStdDevX: Time signal, body, gyroscopic, standard deviation, X-axis</li>
<li>TimeBodyGyroStdDevY: Time signal, body, gyroscopic, standard deviation, Y-axis</li>
<li>TimeBodyGyroStdDevZ: Time signal, body, gyroscopic, standard deviation, Z-axis</li>
<li>TimeBodyGyroJerkMeanX: Time signal, body, gyroscopic jerk, mean, X-axis</li>
<li>TimeBodyGyroJerkMeanY: Time signal, body, gyroscopic jerk, mean, Y-axis</li>
<li>TimeBodyGyroJerkMeanZ: Time signal, body, gyroscopic jerk, mean, Z-axis</li>
<li>TimeBodyGyroJerkStdDevX: Time signal, body, gyroscopic jerk, standard deviation, X-axis</li>
<li>TimeBodyGyroJerkStdDevY: Time signal, body, gyroscopic jerk, standard deviation, Y-axis</li>
<li>TimeBodyGyroJerkStdDevZ: Time signal, body, gyroscopic jerk, standard deviation, Z-axis</li>
<li>TimeBodyAccMagMean: Time signal, body, acceleration, magnitude mean</li>
<li>TimeBodyAccMagStdDev: Time signal, body, acceleration, magnitude standard deviation</li>
<li>TimeGravityAccMagMean: Time signal, gravity, acceleration, magnitude mean</li>
<li>TimeGravityAccMagStdDev: Time signal, gravity, acceleration, magnitude standard deviation</li>
<li>TimeBodyAccJerkMagMean: Time signal, body, acceleration jerk, magnitude mean</li>
<li>TimeBodyAccJerkMagStdDev: Time signal, body, acceleration jerk, magnitude standard deviation</li>
<li>TimeBodyGyroMagMean: Time signal, body, gyroscope, magnitude mean</li>
<li>TimeBodyGyroMagStdDev: Time signal, body, gyroscope, magnitude standard deviation</li>
<li>TimeBodyGyroJerkMagMean: Time signal, body, gyroscope jerk, magnitude mean</li>
<li>TimeBodyGyroJerkMagStdDev: Time signal, body, gyroscope jerk, magnitude standard deviation</li>
<li>FreqBodyAccMeanX: Frequency signal, body, acceleration, mean, X-axis</li>
<li>FreqBodyAccMeanY: Frequency signal, body, acceleration, mean, Y-axis</li>
<li>FreqBodyAccMeanZ: Frequency signal, body, acceleration, mean, Z-axis</li>
<li>FreqBodyAccStdDevX: Frequency signal, body, acceleration, standard deviation, X-axis</li>
<li>FreqBodyAccStdDevY: Frequency signal, body, acceleration, standard deviation, Y-axis</li>
<li>FreqBodyAccStdDevZ: Frequency signal, body, acceleration, standard deviation, Z-axis</li>
<li>FreqBodyAccJerkMeanX: Frequency signal, body, acceleration jerk, mean, X-axis</li>
<li>FreqBodyAccJerkMeanY: Frequency signal, body, acceleration jerk, mean, Y-axis</li>
<li>FreqBodyAccJerkMeanZ: Frequency signal, body, acceleration jerk, mean, Z-axis</li>
<li>FreqBodyAccJerkStdDevX: Frequency signal, body, acceleration jerk, standard deviation, X-axis</li>
<li>FreqBodyAccJerkStdDevY: Frequency signal, body, acceleration jerk, standard deviation, Y-axis</li>
<li>FreqBodyAccJerkStdDevZ: Frequency signal, body, acceleration jerk, standard deviation, Z-axis</li>
<li>FreqBodyGyroMeanX: Frequency signal, body, gyroscope, mean, X-axis</li>
<li>FreqBodyGyroMeanY: Frequency signal, body, gyroscope, mean, Y-axis</li>
<li>FreqBodyGyroMeanZ: Frequency signal, body, gyroscope, mean, Z-axis</li>
<li>FreqBodyGyroStdDevX: Frequency signal, body, gyroscope, standard deviation, X-axis</li>
<li>FreqBodyGyroStdDevY: Frequency signal, body, gyroscope, standard deviation, Y-axis</li>
<li>FreqBodyGyroStdDevZ: Frequency signal, body, gyroscope, standard deviation, Z-axis</li>
<li>FreqBodyAccMagMean: Frequency signal, body, acceleration, magnitude mean</li>
<li>FreqBodyAccMagStdDev: Frequency signal, body, acceleration, magnitude standard deviation</li>
<li>FreqBodyBodyAccJerkMagMean: Frequency signal, body, acceleration jerk, magnitude mean</li>
<li>FreqBodyBodyAccJerkMagStdDev: Frequency signal, body, acceleration jerk, magnitude standard deviation</li>
<li>FreqBodyBodyGyroMagMean: Frequency signal, body, gyroscope, magnitude mean</li>
<li>FreqBodyBodyGyroMagStdDev: Frequency signal, body, gyroscope, magnitude standard deviation</li>
<li>FreqBodyBodyGyroJerkMagMean: Frequency signal, body, gyroscope jerk, magnitude mean</li>
<li>FreqBodyBodyGyroJerkMagStdDev: Frequency signal, body, gyroscope jerk, magnitude standard deviation</li></ol>

