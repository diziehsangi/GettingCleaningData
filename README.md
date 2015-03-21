# GettingCleaningData
This is created as part of the Getting and Cleaning data project for the Coursera data science specialization certification.

This document contains information on different files included in this project and how they are related to one another.

The dataset that is tidied is as part of an experiment to classify human activity recognition using smartphones. From the readme file that comes with the dataset:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:

  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
  - Triaxial Angular velocity from the gyroscope. 
  - A 561-feature vector with time and frequency domain variables. 
  - Its activity label. 
  - An identifier of the subject who carried out the experiment."

This project aims at cleaning a dataset that is downloaded from a link and tidying it up. Here is a list of files and their description
  - run_analysis.R: This files contains the R script that works on a directory in the working directory path and tidies up the dataset therein. 
  - CodeBook.MD: This file contains descriptions of the data and the features(variables) that are extracted.
