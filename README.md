---
title: "Readme"
author: "Georgios Kaperonis"
date: "27 July 2014"
output: html_document
---

### About

This project is the submitted solution to the **Getting and Cleaning data** course project available at <https://class.coursera.org/getdata-005/human_grading>.

In order to run the solution you need to download the data from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> and unzip it in the project file. This has already been done so if you fork the project form GitHub you will get the data files as well.

### The R Script

The main script is **run_analysis.R**. All you need is run this after you set your working directory to the directory where this file exists.

This R script will read the data from the dataset and follow the instruction as set out on the course project and output a file called **data_tidy.txt** which contains an aggregated subset of the original data in a tidy format.

The R code is documented with comments which can help you understand the process. A quick view of the steps is:

- Reads the various files from the original dataset and created one table with all the data. 
- Uses a file containing the column names to create user friendly column names (rather than V1, V2, etc.). 
- Uses a file describing Activities to create a user friendly column (with names rather than IDs). 
- Keeps only measures around mean() and std(). 
- Creates even friendlier column names for the measures kept, using gsub(). 
- Creates the aggregated dataset (using mean for all measures) and exports to commma-separates file

### Output

Tidy data set is output to **data_tidy.txt** which is a comma separated file and available in the same directory as the  **run.analysis.R** file.
