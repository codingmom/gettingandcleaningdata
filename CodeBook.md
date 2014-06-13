Useful information for code book

The tidy data set is a 180 x 88 data frame with variables as follows:

* Column 1 - subject id, numbered 1 to 30 corresponding to 30 subjects
* Column 2 - activity labels, there are 6: walking, sitting, standing, laying, walkingup, walkingdown
* Columns 3-88 - mean and standard deviation measurements extracted from accelerometer and gyroscope of Samsung Phone

* subject: subject number
* activity: subject activity when features were measured. Possible values: walking, sitting, standing, laying, walkingup, walkingdown
* tbodyaccmeanx: 
[,3] tbodyaccmeanx
"4" "tbodyaccmeany"
"5" "tbodyaccmeanz"
"6" "tbodyaccstdx"
"7" "tbodyaccstdy"
"8" "tbodyaccstdz"
"9" "tgravityaccmeanx"
"10" "tgravityaccmeany"
"11" "tgravityaccmeanz"
"12" "tgravityaccstdx"
"13" "tgravityaccstdy"
"14" "tgravityaccstdz"
"15" "tbodyaccjerkmeanx"
"16" "tbodyaccjerkmeany"
"17" "tbodyaccjerkmeanz"
"18" "tbodyaccjerkstdx"
"19" "tbodyaccjerkstdy"
"20" "tbodyaccjerkstdz"
"21" "tbodygyromeanx"
"22" "tbodygyromeany"
"23" "tbodygyromeanz"
"24" "tbodygyrostdx"
"25" "tbodygyrostdy"
"26" "tbodygyrostdz"
"27" "tbodygyrojerkmeanx"
"28" "tbodygyrojerkmeany"
"29" "tbodygyrojerkmeanz"
"30" "tbodygyrojerkstdx"
"31" "tbodygyrojerkstdy"
"32" "tbodygyrojerkstdz"
"33" "tbodyaccmagmean"
"34" "tbodyaccmagstd"
"35" "tgravityaccmagmean"
"36" "tgravityaccmagstd"
"37" "tbodyaccjerkmagmean"
"38" "tbodyaccjerkmagstd"
"39" "tbodygyromagmean"
"40" "tbodygyromagstd"
"41" "tbodygyrojerkmagmean"
"42" "tbodygyrojerkmagstd"
"43" "fbodyaccmeanx"
"44" "fbodyaccmeany"
"45" "fbodyaccmeanz"
"46" "fbodyaccstdx"
"47" "fbodyaccstdy"
"48" "fbodyaccstdz"
"49" "fbodyaccmeanfreqx"
"50" "fbodyaccmeanfreqy"
"51" "fbodyaccmeanfreqz"
"52" "fbodyaccjerkmeanx"
"53" "fbodyaccjerkmeany"
"54" "fbodyaccjerkmeanz"
"55" "fbodyaccjerkstdx"
"56" "fbodyaccjerkstdy"
"57" "fbodyaccjerkstdz"
"58" "fbodyaccjerkmeanfreqx"
"59" "fbodyaccjerkmeanfreqy"
"60" "fbodyaccjerkmeanfreqz"
"61" "fbodygyromeanx"
"62" "fbodygyromeany"
"63" "fbodygyromeanz"
"64" "fbodygyrostdx"
"65" "fbodygyrostdy"
"66" "fbodygyrostdz"
"67" "fbodygyromeanfreqx"
"68" "fbodygyromeanfreqy"
"69" "fbodygyromeanfreqz"
"70" "fbodyaccmagmean"
"71" "fbodyaccmagstd"
"72" "fbodyaccmagmeanfreq"
"73" "fbodybodyaccjerkmagmean"
"74" "fbodybodyaccjerkmagstd"
"75" "fbodybodyaccjerkmagmeanfreq"
"76" "fbodybodygyromagmean"
"77" "fbodybodygyromagstd"
"78" "fbodybodygyromagmeanfreq"
"79" "fbodybodygyrojerkmagmean"
"80" "fbodybodygyrojerkmagstd"
"81" "fbodybodygyrojerkmagmeanfreq"
"82" "angletbodyaccmeangravity"
"83" "angletbodyaccjerkmeangravitymean"
"84" "angletbodygyromeangravitymean"
"85" "angletbodygyrojerkmeangravitymean"
"86" "anglexgravitymean"
"87" "angleygravitymean"
"88" "anglezgravitymean"



Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
