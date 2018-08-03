# GettingCleaningData
Week 4 Project - Getting &amp; Cleaning Data

This data shows the mean of several variables taken from 30 subjects ages 19-48 utilizing smartwearable technology during 6 activities: walking, walking upstairs, walking downstairs, sitting, standing, and laying. There are two signals, accelerometer (body and gravity) and gyroscope, that were measured by time and frequency. Jerk signals were also obtained as well as 3D signals via Euclidean norm. 

The code renames the subject and activity variables in the starting test/train datasets to be "V1" for easy merging with the full "x" data. Then, the full file is creating by merging the testing and training data. Next, a new dataset was created that contained only the variables we were interested in - mean and standard deviation. Activity values and measurement variables were given meaningful names. Finally, the mean was calculated for each subject's activity for each variable. 
