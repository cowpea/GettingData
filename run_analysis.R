# Read test data into R
subjecttest=read.table("subject_test.txt")
rowNames(subjecttest)
xtest= read.table("X_test.txt")
activity = read.table("y_test.txt")
#Gives the names of the Activities
Activity1= read.table("activity_labels.txt")
class(Activity1)
(Activity1$V2 = factor(x=Activity1$V2, levels=Activity1$V2,ordered=TRUE))

#The names of the various measurement means recorded on the 30 subjects. These will be the column names of the test and train data sets.
features=read.table("features.txt")
#Label the columns  of the Subjects
colnames(subjecttest)= c("subject")
# Column names of the test data set
colnames(xtest)= features1
#Column name of Activity
colnames(activity)= "Activity"

# merging the test data set into one data frame
testdata= data.frame(subjecttest, activity, xtest)
head(testdata[1:3, 1:3])
# Read train data into R
subjecttrain=read.table("subject_train.txt")
xtrain= read.table("X_train.txt")
activitytrain = read.table("y_train.txt")
#Gives the names of the Activities
Activity1= read.table("activity_labels.txt")
Activity1
#The names of the various measurement means recorded on the 30 subjects. These will be the column names of the test and train data sets.
features=read.table("features.txt")
#Label the columns  of the Subjects
colnames(subjecttrain)= c("subject")
# Column names of the test data set
colnames(xtrain)= features1
colnames(activitytrain)= "Activity"
head(activitytrain)
# merging the test data set into one data frame

traindata= data.frame(subjecttrain, activitytrain, xtrain)
#Merging test and train data into one data set
humanActivity = merge(testdata, traindata, all=TRUE)
head(humanActivity[1:3, 1:3])
tail(humanActivity[, 1:3])
