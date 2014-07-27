---
title: "CodeBook"
author: "Georgios Kaperonis"
date: "27 July 2014"
output: html_document
---

#### Data File Summary
This file contains an aggregated subset of the original data in a tidy format. It has one row of data for each subject (30 available) and activity (6 available) combination (180 rows in total).

#### Column Details 

It has 68 column; the first 2 identify the Subject ID and the Activity and the other 66 represent the **average** of specific measurements that were taken from the accelerometers of the Samsung Galaxy S smartphone. 

Each of the 66 columns measures something different which can be interpreted from the column name. In order to help with this interpretation here's a dictionary of how the column names have been put together:

- time -- *Time domain signal*
- fft -- *Fast Fourier Transformed signal*
- Gyroscope -- *Measurement from the Gyroscope*
- Accelerometer -- *Measurement from the Accelerometer*
- Body -- *Body element of acceleration signal*
- Gravity -- *Gravity element of acceration signal*
- Jerk -- *Jerk signal based on body linear acceleration and angular velocity*
- Magnitude -- *Magnitude of 3 dimensional signals, calculated using the Euclidean norm*
- mean -- *Mean of the individual measurements*
- std -- *Standard Deviation of the individual measurements*
- X -- *The Axis that the measurements were taken or calculated on*
- Y -- *The Axis that the measurements were taken or calculated on*
- Z -- *The Axis that the measurements were taken or calculated on*

#### Column Names

- SubjectID -- *Takes values 1 to 30 and refers to each subject/individual the measurements refer to*
- Activity -- *Takes one of these values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING and ech individual has measurement for each one of these activities*
- time-BodyAccelerometer-mean-X
- time-BodyAccelerometer-mean-Y
- time-BodyAccelerometer-mean-Z
- time-BodyAccelerometer-std-X
- time-BodyAccelerometer-std-Y
- time-BodyAccelerometer-std-Z
- time-GravityAccelerometer-mean-X
- time-GravityAccelerometer-mean-Y
- time-GravityAccelerometer-mean-Z
- time-GravityAccelerometer-std-X
- time-GravityAccelerometer-std-Y
- time-GravityAccelerometer-std-Z
- time-BodyAccelerometerJerk-mean-X
- time-BodyAccelerometerJerk-mean-Y
- time-BodyAccelerometerJerk-mean-Z
- time-BodyAccelerometerJerk-std-X
- time-BodyAccelerometerJerk-std-Y
- time-BodyAccelerometerJerk-std-Z
- time-BodyGyroscope-mean-X
- time-BodyGyroscope-mean-Y
- time-BodyGyroscope-mean-Z
- time-BodyGyroscope-std-X
- time-BodyGyroscope-std-Y
- time-BodyGyroscope-std-Z
- time-BodyGyroscopeJerk-mean-X
- time-BodyGyroscopeJerk-mean-Y
- time-BodyGyroscopeJerk-mean-Z
- time-BodyGyroscopeJerk-std-X
- time-BodyGyroscopeJerk-std-Y
- time-BodyGyroscopeJerk-std-Z
- time-BodyAccelerometerMagnitude-mean
- time-BodyAccelerometerMagnitude-std
- time-GravityAccelerometerMagnitude-mean
- time-GravityAccelerometerMagnitude-std
- time-BodyAccelerometerJerkMagnitude-mean
- time-BodyAccelerometerJerkMagnitude-std
- time-BodyGyroscopeMagnitude-mean
- time-BodyGyroscopeMagnitude-std
- time-BodyGyroscopeJerkMagnitude-mean
- time-BodyGyroscopeJerkMagnitude-std
- fft-BodyAccelerometer-mean-X
- fft-BodyAccelerometer-mean-Y
- fft-BodyAccelerometer-mean-Z
- fft-BodyAccelerometer-std-X
- fft-BodyAccelerometer-std-Y
- fft-BodyAccelerometer-std-Z
- fft-BodyAccelerometerJerk-mean-X
- fft-BodyAccelerometerJerk-mean-Y
- fft-BodyAccelerometerJerk-mean-Z
- fft-BodyAccelerometerJerk-std-X
- fft-BodyAccelerometerJerk-std-Y
- fft-BodyAccelerometerJerk-std-Z
- fft-BodyGyroscope-mean-X
- fft-BodyGyroscope-mean-Y
- fft-BodyGyroscope-mean-Z
- fft-BodyGyroscope-std-X
- fft-BodyGyroscope-std-Y
- fft-BodyGyroscope-std-Z
- fft-BodyAccelerometerMagnitude-mean
- fft-BodyAccelerometerMagnitude-std
- fft-BodyAccelerometerJerkMagnitude-mean
- fft-BodyAccelerometerJerkMagnitude-std
- fft-BodyGyroscopeMagnitude-mean
- fft-BodyGyroscopeMagnitude-std
- fft-BodyGyroscopeJerkMagnitude-mean
- fft-BodyGyroscopeJerkMagnitude-std