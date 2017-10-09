
library(lubridate)
library(dplyr)
library(ggplot2)
library(gridExtra)


cc <- read.csv("year_atp.csv")
cc$ht_diff <- cc$avg_winner_ht-cc$avg_loser_ht
cc$age_diff <- cc$avg_winner_age-cc$avg_loser_age
cc$ace_diff <- cc$avg_w_ace-cc$avg_l_ace
cc$stinwon_ratio_diff <- cc$avg_w_1stinwonratio-cc$avg_l_1stinwonration
cc$bp_save_diff <- cc$avg_w_bpsaved_ratio-cc$avg_l_bpsaved_ratio
cc$Year <- parse_date_time(as.character(cc$Year), "%Y")
str(cc)

#ע����Щ�����ʵ��ʵ�����С
p1 <- ggplot(cc,aes(x = cc$Year,y=cc$ratio_winner_L))+
  geom_line()

p2 <- ggplot(cc,aes(x = cc$Year,y=cc$avg_winner_ht))+
  geom_line()

p3 <- ggplot(cc,aes(x = cc$Year,y=cc$avg_loser_ht))+
  geom_line()

p4 <- ggplot(cc,aes(x = cc$Year,y=cc$ht_diff))+
  geom_line()

p5 <- ggplot(cc,aes(x = cc$Year,y=cc$avg_winner_age))+
  geom_line()

p6 <- ggplot(cc,aes(x = cc$Year,y=cc$avg_loser_age))+
  geom_line()

p7 <- ggplot(cc,aes(x = cc$Year,y=cc$age_diff))+
  geom_line() 
#��Ҫ���ۺ;���

p8 <- ggplot(cc,aes(x = cc$Year,y=cc$avg_gametime))+
  geom_line()

p9 <- ggplot(cc,aes(x = cc$Year,y=cc$avg_gametime_gs))+
  geom_line()  #1994���1995����������ġ�

p10 <- ggplot(cc,aes(x = cc$Year,y=cc$avg_w_ace))+
  geom_line()

p11 <- ggplot(cc,aes(x = cc$Year,y=cc$avg_l_ace))+
  geom_line()

p12 <- ggplot(cc,aes(x = cc$Year,y=cc$ace_diff))+
  geom_line()

p13 <- ggplot(cc,aes(x = cc$Year,y=cc$avg_w_1stinwonratio))+
  geom_line()

p14 <- ggplot(cc,aes(x = cc$Year,y=cc$avg_l_1stinwonratio))+
  geom_line()

p15 <- ggplot(cc,aes(x = cc$Year,y=cc$stinwon_ratio_diff))+
  geom_line()

p16 <- ggplot(cc,aes(x = cc$Year,y=cc$avg_w_bpsaved_ratio))+
  geom_line()

p17 <- ggplot(cc,aes(x = cc$Year,y=cc$avg_l_bpsaved_ratio))+
  geom_line()

p18 <- ggplot(cc,aes(x = cc$Year,y=cc$bp_save_diff))+
  geom_line()

#����������������ؼ��ֵĴ�����������̬��

#����ȥ������һ���ܼơ�



