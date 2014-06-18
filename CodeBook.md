The Data

The Zip file was downloaded and extracted. Each file was examined and the background material was reviewed. 
The codebook was reviewed to determine the nature of the variables. These were 561 features with each observation 
representing measurements obtained from the accelerometer and gyroscopes in Samsung Galaxy S II smartphones worn by 30 
volunteeers engaging in various activities such as standing, walking and climbing or descending stairs. Some of the 
measurements were means and standard deviatiions and these were subsetted out to produce the data file for this assignment. 
Renaming each feature from V1, V2 etc to the feature name seemed to make it clear to me what the variable was measuring in 
human terms. Modifying the name further may have made the variable more confusing so I used the feature names as provided. 
This would allow a straightforward review back to the data code book to check the meaning of the variable.

The Process

The Test data and Training data files were downloaded, read into R and combined. Variable headings at this stage were 
V1, V2 etc. The Features file was examined and determined to match the length of the combined data file combinex. 
The features file was read into R and joined with the combined data file to provide variable column headings. 
These files are output as text files using capture.output The files were renamed with .txt extensions I then 
used grep to subset features that included Mean, mean ans std in the variable names. These were then combined 
in the object "MeansAndStd". The table was reveiwed to determine that it contained all the rows and 86 variable 
columns representing features representing means and standard deviation measurements.

The Tidy Data File

The Tidy Data file contains the Means and Standard Deviations variables. For the assignment the average of each 
variable and each subject is needed. This is provided along with the Tidy Data File. These are 
produced with colMeans and rowMeans and provided as separate data files ObservationAvg and VariableAvg
