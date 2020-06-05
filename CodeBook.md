The following data is fitness data from the sensor of Samsung Galaxy II. The participants engaged in six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). There were 561 categories of data. The following data is fitness data from the sensor of the Samsung Galaxy II. The participants engaged in six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). There were 561 categories of data. This data has been reduced to 79.

The data is of the following variables:
1    tbodyacc-mean()-xaverage
2    tbodyacc-mean()-yaverage
3    tbodyacc-mean()-zaverage
4    tbodyacc-std()-xaverage
5    tbodyacc-std()-yaverage
6    tbodyacc-std()-zaverage
7    tgravityacc-mean()-xaverage
8    tgravityacc-mean()-yaverage
9    tgravityacc-mean()-zaverage
10    tgravityacc-std()-xaverage
11    tgravityacc-std()-yaverage
12    tgravityacc-std()-zaverage
13    tbodyaccjerk-mean()-xaverage
14    tbodyaccjerk-mean()-yaverage
15    tbodyaccjerk-mean()-zaverage
16    tbodyaccjerk-std()-xaverage
17    tbodyaccjerk-std()-yaverage
18    tbodyaccjerk-std()-zaverage
19    tbodygyro-mean()-xaverage
20    tbodygyro-mean()-yaverage
21    tbodygyro-mean()-zaverage
22    tbodygyro-std()-xaverage
23    tbodygyro-std()-yaverage
24    tbodygyro-std()-zaverage
25    tbodygyrojerk-mean()-xaverage
26    tbodygyrojerk-mean()-yaverage
27    tbodygyrojerk-mean()-zaverage
28    tbodygyrojerk-std()-xaverage
29    tbodygyrojerk-std()-yaverage
30    tbodygyrojerk-std()-zaverage
31    tbodyaccmag-mean()average
32    tbodyaccmag-std()average
33    tgravityaccmag-mean()average
34    tgravityaccmag-std()average
35    tbodyaccjerkmag-mean()average
36    tbodyaccjerkmag-std()average
37    tbodygyromag-mean()average
38    tbodygyromag-std()average
39    tbodygyrojerkmag-mean()average
40    tbodygyrojerkmag-std()average
41    fbodyacc-mean()-xaverage
42    fbodyacc-mean()-yaverage
43    fbodyacc-mean()-zaverage
44    fbodyacc-std()-xaverage
45    fbodyacc-std()-yaverage
46    fbodyacc-std()-zaverage
47    fbodyacc-meanfreq()-xaverage
48    fbodyacc-meanfreq()-yaverage
49    fbodyacc-meanfreq()-zaverage
50    fbodyaccjerk-mean()-xaverage
51    fbodyaccjerk-mean()-yaverage
52    fbodyaccjerk-mean()-zaverage
53    fbodyaccjerk-std()-xaverage
54    fbodyaccjerk-std()-yaverage
55    fbodyaccjerk-std()-zaverage
56    fbodyaccjerk-meanfreq()-xaverage
57    fbodyaccjerk-meanfreq()-yaverage
58    fbodyaccjerk-meanfreq()-zaverage
59    fbodygyro-mean()-xaverage
60    fbodygyro-mean()-yaverage
61    fbodygyro-mean()-zaverage
62    fbodygyro-std()-xaverage
63    fbodygyro-std()-yaverage
64    fbodygyro-std()-zaverage
65    fbodygyro-meanfreq()-xaverage
66    fbodygyro-meanfreq()-yaverage
67    fbodygyro-meanfreq()-zaverage
68    fbodyaccmag-mean()average
69    fbodyaccmag-std()average
70    fbodyaccmag-meanfreq()average
71    fbodybodyaccjerkmag-mean()average
72    fbodybodyaccjerkmag-std()average
73    fbodybodyaccjerkmag-meanfreq()average
74    fbodybodygyromag-mean()average
75    fbodybodygyromag-std()average
76    fbodybodygyromag-meanfreq()average
77    fbodybodygyrojerkmag-mean()average
78    fbodybodygyrojerkmag-std()average
79    fbodybodygyrojerkmag-meanfreq()average

The data are all the averages of the titles from the columns without word "average" attached which were all features from the sensor data. The data is either the average from all the means or all the standard deviations from each feature given by whether the word "mean" or the abbreviation "std" is in the name.

The original data with 561 variables was in text files. Importing this into R led to many NA values. The data needed to be first converted into vectors, then into matrices with 561 columns, and finally into data tables.

The resulting data was manipulated by first using regular expressions to find each column with the word "mean" or "std" in it and then taking the column mean of each of these columns. The word "average" was then pasted to the column names.