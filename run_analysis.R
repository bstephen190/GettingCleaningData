require(dplyr)
#get common variable names
subject_test <- rename (subject_test,subject=V1)
y_test <- rename(y_test,activity=V1)
subject_train <- rename(subject_train,subject=V1)
y_train <- rename(y_train,activity=V1)

#create test/train sets
test <- cbind(subject_test,y_test,x_test)
train <- cbind(subject_train,y_train,x_train)

#create full dataset
all_fit <- rbind(test,train)

#subset to mean/SD variables
library(dplyr)
all_meas <- select(all_fit,1:8,43:48,83:88,123:128,163:168,203,204,216,217,229,230,
                             242,243,255,256,268:273,347:352,426:431,505,506,518,519,
                             531,532,544,545)

#rename activities
all_meas$activity[all_meas$activity==1]<-"walking"
all_meas$activity[all_meas$activity==2]<-"walking upstairs"
all_meas$activity[all_meas$activity==3]<-"walking downstairs"
all_meas$activity[all_meas$activity==4]<-"sitting"
all_meas$activity[all_meas$activity==5]<-"standing"
all_meas$activity[all_meas$activity==6]<-"laying"

#rename variables
colnames(all_meas)[colnames(all_meas)=="V1"] <- "Time Body Acc mean X"
colnames(all_meas)[colnames(all_meas)=="V2"] <- "Time Body Acc mean Y"
colnames(all_meas)[colnames(all_meas)=="V3"] <- "Time Body Acc mean Z"
colnames(all_meas)[colnames(all_meas)=="V4"] <- "Time Body Acc SD X"
colnames(all_meas)[colnames(all_meas)=="V5"] <- "Time Body Acc SD Y"
colnames(all_meas)[colnames(all_meas)=="V6"] <- "Time Body Acc SD Z"
colnames(all_meas)[colnames(all_meas)=="V41"] <- "Time Gravity Acc mean X"
colnames(all_meas)[colnames(all_meas)=="V42"] <- "Time Gravity Acc mean Y"
colnames(all_meas)[colnames(all_meas)=="V43"] <- "Time Gravity Acc mean Z"
colnames(all_meas)[colnames(all_meas)=="V44"] <- "Time Gravity Acc SD X"
colnames(all_meas)[colnames(all_meas)=="V45"] <- "Time Gravity Acc SD Y"
colnames(all_meas)[colnames(all_meas)=="V46"] <- "Time Gravity Acc SD Z"
colnames(all_meas)[colnames(all_meas)=="V81"] <- "Time Body Acc Jerk mean X"
colnames(all_meas)[colnames(all_meas)=="V82"] <- "Time Body Acc Jerk mean Y"
colnames(all_meas)[colnames(all_meas)=="V83"] <- "Time Body Acc Jerk mean Z"
colnames(all_meas)[colnames(all_meas)=="V84"] <- "Time Body Acc Jerk SD X"
colnames(all_meas)[colnames(all_meas)=="V85"] <- "Time Body Acc Jerk SD Y"
colnames(all_meas)[colnames(all_meas)=="V86"] <- "Time Body Acc Jerk SD Z"
colnames(all_meas)[colnames(all_meas)=="V121"] <- "Time Body Gyro mean X"
colnames(all_meas)[colnames(all_meas)=="V122"] <- "Time Body Gyro mean Y"
colnames(all_meas)[colnames(all_meas)=="V123"] <- "Time Body Gyro mean Z"
colnames(all_meas)[colnames(all_meas)=="V124"] <- "Time Body Gyro SD X"
colnames(all_meas)[colnames(all_meas)=="V125"] <- "Time Body Gyro SD Y"
colnames(all_meas)[colnames(all_meas)=="V126"] <- "Time Body Gyro SD Z"
colnames(all_meas)[colnames(all_meas)=="V161"] <- "Time Body Gyro Jerk mean X"
colnames(all_meas)[colnames(all_meas)=="V162"] <- "Time Body Gyro Jerk mean Y"
colnames(all_meas)[colnames(all_meas)=="V163"] <- "Time Body Gyro Jerk mean Z"
colnames(all_meas)[colnames(all_meas)=="V164"] <- "Time Body Gyro Jerk SD X"
colnames(all_meas)[colnames(all_meas)=="V165"] <- "Time Body Gyro Jerk SD Y"
colnames(all_meas)[colnames(all_meas)=="V166"] <- "Time Body Gyro Jerk SD Z"
colnames(all_meas)[colnames(all_meas)=="V201"] <- "Time Body Acc Mag mean"
colnames(all_meas)[colnames(all_meas)=="V202"] <- "Time Body Acc Mag SD"
colnames(all_meas)[colnames(all_meas)=="V214"] <- "Time Gravity Acc Mag mean "
colnames(all_meas)[colnames(all_meas)=="V215"] <- "Time Gravity Acc Mag SD "
colnames(all_meas)[colnames(all_meas)=="V227"] <- "Time Body Acc Jerk Mag mean"
colnames(all_meas)[colnames(all_meas)=="V228"] <- "Time Body Acc Jerk Mag SD"
colnames(all_meas)[colnames(all_meas)=="V240"] <- "Time Body Gyro Mag mean "
colnames(all_meas)[colnames(all_meas)=="V241"] <- "Time Body Gyro Mag SD "
colnames(all_meas)[colnames(all_meas)=="V253"] <- "Time Body Gyro Jerk Mag mean"
colnames(all_meas)[colnames(all_meas)=="V254"] <- "Time Body Gyro Jerk Mag SD"
colnames(all_meas)[colnames(all_meas)=="V266"] <- "Freq Body Acc mean X"
colnames(all_meas)[colnames(all_meas)=="V267"] <- "Freq Body Acc mean Y"
colnames(all_meas)[colnames(all_meas)=="V268"] <- "Freq Body Acc mean Z"
colnames(all_meas)[colnames(all_meas)=="V269"] <- "Freq Body Acc SD X"
colnames(all_meas)[colnames(all_meas)=="V270"] <- "Freq Body Acc SD Y"
colnames(all_meas)[colnames(all_meas)=="V271"] <- "Freq Body Acc SD Z"
colnames(all_meas)[colnames(all_meas)=="V345"] <- "Freq Body Acc Jerk mean X"
colnames(all_meas)[colnames(all_meas)=="V346"] <- "Freq Body Acc Jerk mean Y"
colnames(all_meas)[colnames(all_meas)=="V347"] <- "Freq Body Acc Jerk mean Z"
colnames(all_meas)[colnames(all_meas)=="V348"] <- "Freq Body Acc Jerk SD X"
colnames(all_meas)[colnames(all_meas)=="V349"] <- "Freq Body Acc Jerk SD Y"
colnames(all_meas)[colnames(all_meas)=="V350"] <- "Freq Body Acc Jerk SD Z"
colnames(all_meas)[colnames(all_meas)=="V424"] <- "Freq Body Gyro mean X"
colnames(all_meas)[colnames(all_meas)=="V425"] <- "Freq Body Gyro mean Y"
colnames(all_meas)[colnames(all_meas)=="V426"] <- "Freq Body Gyro mean Z"
colnames(all_meas)[colnames(all_meas)=="V427"] <- "Freq Body Gyro SD X"
colnames(all_meas)[colnames(all_meas)=="V428"] <- "Freq Body Gyro SD Y"
colnames(all_meas)[colnames(all_meas)=="V429"] <- "Freq Body Gyro SD Z"
colnames(all_meas)[colnames(all_meas)=="V503"] <- "Freq Body Acc Mag mean"
colnames(all_meas)[colnames(all_meas)=="V504"] <- "Freq Body Acc Mag SD"
colnames(all_meas)[colnames(all_meas)=="V516"] <- "Freq Body Acc Jerk Mag mean"
colnames(all_meas)[colnames(all_meas)=="V517"] <- "Freq Body Acc Jerk Mag SD"
colnames(all_meas)[colnames(all_meas)=="V529"] <- "Freq Body Body Gyro Mag mean"
colnames(all_meas)[colnames(all_meas)=="V530"] <- "Freq Body Body Gyro Mag SD"
colnames(all_meas)[colnames(all_meas)=="V542"] <- "Freq Body Body Gyro Jerk Mag mean"
colnames(all_meas)[colnames(all_meas)=="V543"] <- "Freq Body Body Gyro Jerk Mag SD"

#new dataset
hey<-all_meas %>% group_by(subject,activity) %>% summarize_at(vars("Time Body Acc mean X":"Freq Body Body Gyro Jerk Mag SD"),mean,na.rm=TRUE)
