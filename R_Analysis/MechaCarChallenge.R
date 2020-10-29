MechaCar_df <-read.csv(file='MechaCar_mpg.csv')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df)) #generate summary statistics
SuspensionCoil_df <-read.csv(file='Suspension_Coil.csv')
total_summary <- SuspensionCoil_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table with multiple columns
lot_summary <- SuspensionCoil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns
t.test(log10(SuspensionCoil_df$PSI),mu=1500) #compare sample versus population means
lot1 <- subset(SuspensionCoil_df,Manufacturing_Lot == "Lot1")
t.test(log10(lot1$PSI),mu=1500)
lot2 <- subset(SuspensionCoil_df,Manufacturing_Lot == "Lot2")
t.test(log10(lot2$PSI),mu=1500)
lot3 <- subset(SuspensionCoil_df,Manufacturing_Lot == "Lot3")
t.test(log10(lot3$PSI),mu=1500)
