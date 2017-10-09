
year_atp <- data.frame(Year=c(1),ratio_winner_L=c(0),avg_winner_ht=c(0),
                       avg_loser_ht=c(0),avg_winner_age=c(0),avg_loser_age=c(0),
                       avg_gametime=c(0),avg_gametime_gs=c(0),avg_w_ace=c(0),
                       avg_l_ace=c(0),avg_w_1stinwonratio=c(0),avg_l_1stinwonration=c(0),
                       avg_w_bpsaved_ratio=c(0),avg_l_bpsaved_ratio=c(0))
gs <- c("US Open","Australian Open","Wimbledon","Roland Garros")


for (i in 1991:2015){
  year <- as.character(i)
  File_name = paste0("atp_matches_",year,".csv")
  cc<- read.csv(File_name)
  ##数据清理
  cc<-subset(cc,cc$winner_ht>150)
  cc<-subset(cc,cc$winner_age>18)
  cc<-subset(cc,cc$loser_ht>150)
  cc<-subset(cc,cc$loser_age>18)
  cc<-subset(cc,cc$minutes>40)
  cc<-subset(cc,cc$minutes<300)
  cc<-subset(cc,cc$w_ace>0)
  cc<-subset(cc,cc$l_ace>0)
  cc<-subset(cc,cc$w_ace<30)
  cc<-subset(cc,cc$l_ace<30)
  
  
  ##数据统计
  L <-length(cc$winner_hand[cc$winner_hand == "L"])
  R <-length(cc$winner_hand[cc$winner_hand == "R"])
  ratio_winner_L <- (L/(L+R))
  avg_winner_ht <- mean(cc$winner_ht,na.rm = T)
  avg_loser_ht <- mean(cc$loser_ht,na.rm = T)
  avg_winner_age <- mean(cc$winner_age,na.rm = T)
  avg_loser_age <- mean(cc$loser_age,na.rm = T)
  avg_gametime <- mean(cc$minutes,na.rm = T)
  game_gs <- subset(cc,cc$tourney_name == "US Open" |cc$tourney_name == "Australian Open"|
                      cc$tourney_name == "Wimbledon"|cc$tourney_name == "Roland Garros")
  avg_gametime_gs <- mean(game_gs$minutes,na.rm=T)
  avg_w_ace = mean(cc$w_ace,na.rm = T)
  avg_l_ace = mean(cc$l_ace,na.rm = T)
  avg_w_1stin = mean(cc$w_1stIn,na.rm = T)
  avg_w_1stwon = mean(cc$l_1stWon,na.rm = T)
  avg_w_1stinwonratio = avg_w_1stwon/avg_w_1stin
  avg_l_1stinwonration = mean(cc$l_2ndWon,na.rm = T)/mean(cc$l_1stIn,na.rm = T)
  avg_w_bpsaved_ratio = mean(cc$w_bpSaved,na.rm = T)/mean(cc$w_bpFaced,na.rm = T)
  avg_l_bpsaved_ratio = mean(cc$l_bpSaved,na.rm = T)/mean(cc$l_bpFaced,na.rm = T)
#  Y = as.Date(year,"%Y")
  year_avg = c(i,ratio_winner_L,avg_winner_ht,
       avg_loser_ht,avg_winner_age,avg_loser_age,
       avg_gametime,avg_gametime_gs,avg_w_ace,
       avg_l_ace,avg_w_1stinwonratio,avg_l_1stinwonration,
       avg_w_bpsaved_ratio,avg_l_bpsaved_ratio)
  year_atp=t(data.frame(t(year_atp),year_avg))
}

year_atp <- year_atp[-1,]
year_atp < data.frame(year_atp)


write.csv(year_atp,file = "year_atp.csv")


