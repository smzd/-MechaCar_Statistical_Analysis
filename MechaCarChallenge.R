library(dplyr)
library(tidyverse)
#Deliverable1 the mpg performance of MechaCar prototypes
#read csv
mechaCar<-read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)
#dataframe
mechaCar_df<-data_frame(mechaCar)
head(mechaCar_df)
#linear regression
model<- lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,mechaCar_df)
model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,mechaCar_df))

#deliverable 2
suspensionCoil<-read.csv(file="Suspension_Coil.csv",check.names=F,stringsAsFactors = F)
suspensionCoil_df<-data_frame(suspensionCoil)
head(suspensionCoil_df)
total_summary<-suspensionCoil_df%>%summarize(mean_PSI=mean(PSI),
                                            median_PSI=median(PSI),
                                            var_PSI=var(PSI),
                                            sd_PSI=sd(PSI),
                                            .groups = 'keep')
total_summary

lot_summary<-suspensionCoil_df %>% group_by(Manufacturing_Lot)%>%summarize(mean_PSI=mean(PSI),
                                                               median_PSI=median(PSI),
                                                               var_PSI=var(PSI),
                                                               sd_PSI=sd(PSI),
                                                               .groups = 'keep')
lot_summary


#deliverable 3
t.test(suspensionCoil_df$PSI, mu=1500)

unique(suspensionCoil_df$Manufacturing_Lot)

lot1<- suspensionCoil_df %>% filter(Manufacturing_Lot=='Lot1')
lot2<- suspensionCoil_df %>% filter(Manufacturing_Lot=='Lot2')
lot3<- suspensionCoil_df %>% filter(Manufacturing_Lot=='Lot3')
t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
