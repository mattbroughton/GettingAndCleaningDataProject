Codebook
-------------------

##Description of Data

The following data contained in tidydata.csv contain some of the results of experiments that utilized the accelerometers and gyroscopes on smartphones. Here is the description of the original data set from the experimenters:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

"The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details."

##Description of the Process Used to Clean the Data

The following steps were take in cleaning the data:

1. The file "features.txt" was read into a data frame. Only those measurements that were a mean or a standard deviation were kept. The names of the variables were made more descriptive.
2. The files "y_test.txt" and "y_train.txt" were read in. The activity numbers were changed to descriptive activity names.
3. The files containing the variable data ("X_test.txt" and "X_train.txt") and the subject data (subject_test.txt" and "subject_train.txt") were read into data frames.
4.Columns representing the subject and activity data for the traning and test sets were added to the variable data using the cbind function.
5. The variable data for the test and training sets where combined into a single data frame using the rbind function.
6. A data frame containing the mean for each variable for each subject and each activty was created using the melt and dcast functions on test data frame containing the test and training sets. This data frame was written to a comma-delimited file ("tidyData.csv").


##Description of Variables

1. **subject**:
2. **activity**:
3. **TimeDomainBodyAccelerationMeanX**: Mean body acceleration along the X-axis in the time domain.    
4. **TimeDomainBodyAccelerationMeanY**: Mean body acceleration along the Y-axis in the time domain.
5. **TimeDomainBodyAccelerationMeanZ**: Mean body acceleration along the Z-axis in the time domain.
6. **TimeDomainBodyAccelerationStandardDeviationX**: Standard deviation of the mean acceleration along the X-axis in the time domain.
7. **TimeDomainBodyAccelerationStandardDeviationY**: Standard deviation of the mean acceleration along the X-axis in the time domain.
8. **TimeDomainBodyAccelerationStandardDeviationZ**: Standard deviation of the mean acceleration along the Z-axis in the time domain.
9. **TimeDomainGravityAccelerationMeanX**: Mean gravitational acceleration along the X-axis in the time domain.
10. **TimeDomainGravityAccelerationMeanY**: Mean gravitational acceleration along the Y-axis in the time domain.
11. **TimeDomainGravityAccelerationMeanZ**: Mean gravitational acceleration along the Z-axis in the time domain.
12. **TimeDomainGravityAccelerationStandardDeviationX**: Standard deviation of the mean gravitational acceleration along the X-axis in the time domain.
13. **TimeDomainGravityAccelerationStandardDeviationY**: Standard deviation of the mean gravitational acceleration along the Y-axis in the time domain.
14. **TimeDomainGravityAccelerationStandardDeviationZ**: Standard deviation of the mean gravitational acceleration along the X-axis in the time domain.
15. **TimeDomainBodyAccelerationJerkMeanX**: Mean of the jerk acceleration of the body along the X-axis in the time domain.
16. **TimeDomainBodyAccelerationJerkMeanY**: Mean of the jerk acceleration of the body along the Y-axis in the time domain.
17. **TimeDomainBodyAccelerationJerkMeanZ**: Mean of the jerk acceleration of the body along the Z-axis in the time domain.
18. **TimeDomainBodyAccelerationJerkStandardDeviationX**: Standard devation of the jerk acceleration of the body along the X-axis in the time domain.
19. **TimeDomainBodyAccelerationJerkStandardDeviationY**: Standard devation of the jerk acceleration of the body along the Y-axis in the time domain.
20. **TimeDomainBodyAccelerationJerkStandardDeviation**: Standard devation of the jerk acceleration of the body along the Z-axis in the time domain.
21. **TimeDomainBodyAngularVelocityMeanX**: Mean of the angluar velocity of the body about the X-axis in the time domain.
22. **TimeDomainBodyAngularVelocityMeanY**: Mean of the angluar velocity of the body about the Y-axis in the time domain.
23. **TimeDomainBodyAngularVelocityMeanZ**: Mean of the angluar velocity of the body about the Z-axis in the time domain.
24. **TimeDomainBodyAngularVelocityStandardDeviationX**: Standard deviation of the angluar velocity of the body about the X-axis in the time domain.
25. **TimeDomainBodyAngularVelocityStandardDeviationY**: Standard deviation of the angluar velocity of the body about the Y-axis in the time domain.
26. **TimeDomainBodyAngularVelocityStandardDeviationZ**: Standard deviation of the angluar velocity of the body about the Z-axis in the time domain.
27. **TimeDomainBodyAngularVelocityJerkMeanX**: Mean jerk angular velocity of the body about the X-axis in the time domain.
28. **TimeDomainBodyAngularVelocityJerkMeanY**: Mean jerk angular velocity of the body about the Y-axis in the time domain.
29. **TimeDomainBodyAngularVelocityJerkMeanZ**: Mean jerk angular velocity of the body about the Z-axis in the time domain.
30. **TimeDomainBodyAngularVelocityJerkStandardDeviationX**: Standard deviation of the jerk angular velocity of the body about the X-axis in the time domain.
31. **TimeDomainBodyAngularVelocityJerkStandardDeviationY**: Standard deviation of the jerk angular velocity of the body about the Y-axis in the time domain.
32. **TimeDomainBodyAngularVelocityJerkStandardDeviationZ**: Standard deviation of the jerk angular velocity of the body about the Z-axis in the time domain.
33. **TimeDomainBodyAccelerationMagnitudeMean**: Mean magnitude of the acceleration of the body in the time domain.
34. **TimeDomainBodyAccelerationMagnitudeStandardDeviation**: Standard deviation of the acceleration of the body in the time domain.
35. **TimeDomainGravityAccelerationMagnitudeMean**: Mean magnitude of the gravitational acceleration of the body in the time doman.
36. **TimeDomainGravityAccelerationMagnitudeStandardDeviation**: Standard deviation of the magnitude of the gravitational acceleration of the body.
37. **TimeDomainBodyAccelerationJerkMagnitudeMean**: Mean magnitude of the jerk acceleration of the body in the time domain.
38. **TimeDomainBodyAccelerationJerkMagnitudeStandardDeviation**: Standard deviation of the jerk acceleration of the body in the time domain.
39. **TimeDomainBodyAngularVelocityMagnitudeMean**: Mean of the magntidue of the angular velocity of the body in the time domain.
40. **TimeDomainBodyAngularVelocityMagnitudeStandardDeviation**: Standard deviation of the magntidue of the angular velocity of the body in the time domain.
41. **TimeDomainBodyAngularVelocityJerkMagnitudeMean**: Mean of the magntidue of the jerk angular velocity of the body in the time domain.
42. **TimeDomainBodyAngularVelocityJerkMagnitudeStandardDeviation**: Standard deviation of the magntidue of the jerk angular velocity of the body in the time domain.
43. **FrequencyDomainBodyAccelerationMeanX**: Mean of the body acceleration along the X-axis in the frequency domain.
44. **FrequencyDomainBodyAccelerationMeanY**: Mean of the body acceleration along the Y-axis in the frequency domain.
45. **FrequencyDomainBodyAccelerationMeanZ**: Mean of the body acceleration along the Z-axis in the frequency domain.
46. **FrequencyDomainBodyAccelerationStandardDeviationX**: Standard deviation of the body acceleration along the X-axis in the frequency domain.   
47. **FrequencyDomainBodyAccelerationStandardDeviationY**: Standard deviation of the body acceleration along the Y-axis in the frequency domain.    
48. **FrequencyDomainBodyAccelerationStandardDeviationZ**: Standard deviation of the body acceleration along the Z-axis in the frequency domain.    
49. **FrequencyDomainBodyAccelerationJerkMeanX**: Mean of the jerk acceleration of the body along the X-axis in the frequency domain.
50. **FrequencyDomainBodyAccelerationJerkMeanY**: Mean of the jerk acceleration of the body along the Y-axis in the frequency domain.
51. **FrequencyDomainBodyAccelerationJerkMeanZ**: Mean of the jerk acceleration of the body along the Z-axis in the frequency domain.
52. **FrequencyDomainBodyAccelerationJerkStandardDeviationX**: Standard deviation of the jerk acceleration of the body along the X-axis in the frequency domain.
53. **FrequencyDomainBodyAccelerationJerkStandardDeviationY**: Standard deviation of the jerk acceleration of the body along the Y-axis in the frequency domain.
54. **FrequencyDomainBodyAccelerationJerkStandardDeviationZ**: Standard deviation of the jerk acceleration of the body along the Z-axis in the frequency domain.
55. **FrequencyDomainBodyAngularVelocityMeanX**: Mean angular velocity of the body about the X-axis in the frequency domain.
56. **FrequencyDomainBodyAngularVelocityMeanY**: Mean angular velocity of the body about the Y-axis in the frequency domain.
57. **FrequencyDomainBodyAngularVelocityMeanZ**: Mean angular velocity of the body about the Z-axis in the frequency domain.
58. **FrequencyDomainBodyAngularVelocityStandardDeviationX**: Standard deviation of the angular velocity of the body about the X-axis in the frequency domain.
59. **FrequencyDomainBodyAngularVelocityStandardDeviationY**: Standard deviation of the angular velocity of the body about the Y-axis in the frequency domain.
60. **FrequencyDomainBodyAngularVelocityStandardDeviationZ**: Standard deviation of the angular velocity of the body about the Z-axis in the frequency domain.
61. **FrequencyDomainBodyAccelerationMagnitudeMean**: Mean magnitude of the acceleration of the body in the frequency domain.
62. **FrequencyDomainBodyAccelerationMagnitudeStandardDeviation**: Standard deviation of the magnitude of the acceleration of the body in the frequency domain. 
63. **FrequencyDomainBodyBodyAccelerationJerkMagnitudeMean**: Mean of the magnitude of the jerk acceleration of the body in the frequency domain.
64. **FrequencyDomainBodyBodyAccelerationJerkMagnitudeStandardDeviatio**: Standard deviation of the magnitude of the jerk acceleration of the body in the frequency domain.
65. **FrequencyDomainBodyBodyAngularVelocityMagnitudeMean**: Mean magnitude of the angular velocity of the body in the frequency domain.
66. **FrequencyDomainBodyBodyAngularVelocityMagnitudeStandardDeviation**: Standard deviation of the magnitude of the angular velocity of the body in the frequency domain.
67. **FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeMean**: Mean magnitude of the jerk angular velocity of the body in the frequency domain.
68. **FrequencyDomainBodyBodyAngularVelocityJerkMagnitudeStandardDeviation**: Standard deviation of the magnitude of the jerk angular velocity of the body in the frequency domain.

