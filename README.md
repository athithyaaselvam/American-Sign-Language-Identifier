# American-Sign-Language-Identifier

The american sign language data is obtained from 18 data streams - 3 from accelerometer - 4 from gyroscope - 3 from orientation - 8 from EMG sensors.
**Phase 1:**
**Task 1:**
  Segmentation of raw data into seperate files for each sign language action like 'ABOUT, AND, CAN, COP' etc. 

**Task 2:**
  Feature Extraction using Fast Fourier Transform, Discrete Wavelet Transform, a set of statistical features(min, max, avg, std, RMS, energy function). Matlab code is written to extract feature from each time series data stored in csv files. Plots are generate for the corresponding gestures.

**Task 3:**
  Reduction of the feature space by keeping only those features which show maximum distance between the two classes. PCA is used for feature selection. 

**Phase 2:**
Performing decsion tree,  support vector machine. neural network classifications on the PCA output data. The accuracy of each classifier is reported. 

**Phase 3:**
Performed the same pahse 2 analysis for 10 more users and tested the accuracy using decison trees, support vector machines and neural networks.
