# Overview 
The tidy data set is a 180 x 88 data frame. Column/variable details are described below:

* Column 1 - subject id, numbered 1 to 30 corresponding to 30 subjects
* Column 2 - activity labels, there are 6: walking, sitting, standing, laying, walkingup, walkingdown
* Columns 3-88 - mean and standard deviation measurements extracted from accelerometer and gyroscope readings of Samsung Phone S. 


# Accelerometer and gyroscope labels details
The labels describe the type of measurement, the paremeters estimated from these measurements, and the direction of the measured raw signal (i.e. X, Y or Z). Accelerometer and gyroscope measurements were prefixed with a 't', as there are time series signals. The prefix 't' is followed by either 'body' or 'gravity', depending on whether they are body or gravity signals, then by either 'acc' or 'gyro', depending on whether they are accelerometer (linear acceleration) reading or gyroscope (angular acceleration) readings. The parameter estimate is also included in the label (i.e. mean or std). The complete dataset (please see README for the link) includes other estimates apart from mean and std. The last portion of the name is the direction of motion - X, Y or X. For example, the name for the mean of body acceleration signal in the X direction through time is tbodyaccmeanx.  Other data derived from these signals include jerk signals. Magnitude of these 3-axial signals are computed and labeled as tbodyaccmag, tgravityaccmag, tbodyaccjerkmag, tbodygyromag, and tbodygyrojerkmag. Fourier transforms of these readings were also obtained and are prefixed 'f'. All labels are listed below.

# Column headings
subject 
Subject number

activity 
Activity labels. Values include walking, sitting, standing, laying, walkingup, walkingdown

tbodyaccmeanx
tbodyaccmeany
tbodyaccmeanz
tbodyaccstd
tbodyaccstdy
tbodyaccstd
tgravityaccmean
tgravityaccmean
tgravityaccmean
tgravityaccstd
tgravityaccstd
tgravityaccstd
tbodyaccjerkmean
tbodyaccjerkmean
tbodyaccjerkmean
tbodyaccjerkstd
tbodyaccjerkstd
tbodyaccjerkstd
tbodygyromean
tbodygyromean
tbodygyromean
tbodygyrostd
tbodygyrostd
tbodygyrostd
tbodygyrojerkmean
tbodygyrojerkmean
tbodygyrojerkmean
tbodygyrojerkstd
tbodygyrojerkstd
tbodygyrojerkstd
tbodyaccmagmean"
tbodyaccmagstd"
tgravityaccmagmean"
tgravityaccmagstd"
tbodyaccjerkmagmean"
tbodyaccjerkmagstd"
tbodygyromagmean"
tbodygyromagstd"
tbodygyrojerkmagmean"
tbodygyrojerkmagstd"
fbodyaccmean
fbodyaccmean
fbodyaccmean
fbodyaccstd
fbodyaccstd
fbodyaccstd
fbodyaccmeanfreq
fbodyaccmeanfreq
fbodyaccmeanfreq
fbodyaccjerkmean
fbodyaccjerkmean
fbodyaccjerkmean
fbodyaccjerkstd
fbodyaccjerkstd
fbodyaccjerkstd
fbodyaccjerkmeanfreq
fbodyaccjerkmeanfreq
fbodyaccjerkmeanfreq
fbodygyromean
fbodygyromean
fbodygyromean
fbodygyrostd
fbodygyrostd
fbodygyrostd
fbodygyromeanfreq
fbodygyromeanfreq
fbodygyromeanfreq
fbodyaccmagmean
fbodyaccmagstd
fbodyaccmagmeanfreq
fbodybodyaccjerkmagmean
fbodybodyaccjerkmagstd
fbodybodyaccjerkmagmeanfreq
fbodybodygyromagmean
fbodybodygyromagstd
fbodybodygyromagmeanfreq
fbodybodygyrojerkmagmean
fbodybodygyrojerkmagstd
fbodybodygyrojerkmagmeanfreq
angletbodyaccmeangravit
angletbodyaccjerkmeangravitymean
angletbodygyromeangravitymean
angletbodygyrojerkmeangravitymean
anglexgravitymean
angleygravitymean
anglezgravitymean