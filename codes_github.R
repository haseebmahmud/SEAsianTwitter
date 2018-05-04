# Haseeb Mahmud
# haseeb.mahmud@gmail.com
# License: MIT
# Email: haseeb.mahmud@gmail.com

####################################
# Libraries
####################################

library(twitteR)
library(rtweet)
library(ggthemes)
library(ggplot2)
library(tidyverse)
library(gridExtra)

# Authentication
api_key <- "secret"
api_secret <- "secret"
access_token <- "secret"
access_token_secret <- "secret"

setup_twitter_oauth(api_key,api_secret)

####################################
# Rees Edward # 
####################################

ReesEdward <- getUser("ReesEdward")
ReesEdward_follower_IDs<-ReesEdward$getFollowers(retryOnRateLimit=180)
df.ReesEdward <- twListToDF(ReesEdward_follower_IDs)
write.csv(df.ReesEdward, file = "ReesEdward.csv")
 
ReesEdward_1st <- df.ReesEdward %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
ReesEdward_2nd <- df.ReesEdward %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
ReesEdward_3rd <- df.ReesEdward %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
ReesEdward_4th <- df.ReesEdward %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
ReesEdward_all <- rbind(ReesEdward_1st, ReesEdward_2nd, ReesEdward_3rd, ReesEdward_4th)

# # Since March 1, 2018 
p1 <- df.ReesEdward %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
   ggplot2::labs(
     x = NULL, y = NULL,
     title = "Rees Edward",
     subtitle = "Daily newly created followers since March 2018"
   )
 p1 <- p1 + ylim(0,50)
 p1
 
# # Since June 1, 2018
 p1.1 <- df.ReesEdward %>% 
   dplyr::filter(created > "2017-06-01") %>% 
   ts_plot("days", trim = 1L) +
   ggplot2::geom_point() +
   ggplot2::theme_minimal() +
   ggplot2::theme(
     legend.title = ggplot2::element_blank(),
     legend.position = "bottom",
     plot.title = ggplot2::element_text(face = "bold")) +
   ggplot2::labs(
     x = NULL, y = NULL,
     title = "Rees Edward",
     subtitle = "Daily newly created followers since June 2017"
   )
 p1.1 <- p1.1 + ylim(0,50)

####################################
# Poppy McPherson # 
####################################
poppymcp <- getUser("poppymcp")
poppymcp_follower_IDs<-poppymcp$getFollowers(retryOnRateLimit=180)
df.poppymcp <- twListToDF(poppymcp_follower_IDs)
write.csv(df.poppymcp, file = "poppymcp.csv")

poppymcp_1st <- df.poppymcp %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
poppymcp_2nd <- df.poppymcp %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
poppymcp_3rd <- df.poppymcp %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
poppymcp_4th <- df.poppymcp %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
poppymcp_all <- rbind(poppymcp_1st, poppymcp_2nd, poppymcp_3rd, poppymcp_4th)

p2_phase_4 <- df.poppymcp %>% dplyr::filter(created > "2018-03-01")

p2 <- df.poppymcp %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Poppy McPherson",
    subtitle = "Daily newly created followers since March 2018"
  )
p2 <- p2 + ylim(0,50)
p2

p2.1 <- df.poppymcp %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Poppy McPherson",
    subtitle = "Daily newly created followers since June 2017"
  )
p2.1 <- p2.1 + ylim(0,50)
p2.1

####################################
# Matt Wells # 
####################################

mattfwells <- getUser("mattfwells")
mattfwells_follower_IDs<-mattfwells$getFollowers(retryOnRateLimit=180)
df.mattfwells <- twListToDF(mattfwells_follower_IDs)
write.csv(df.mattfwells, file = "mattfwells.csv")

mattfwells_1st <- df.mattfwells %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
mattfwells_2nd <- df.mattfwells %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
mattfwells_3rd <- df.mattfwells %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
mattfwells_4th <- df.mattfwells %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
mattfwells_all <- rbind(mattfwells_1st, mattfwells_2nd, mattfwells_3rd, mattfwells_4th)

p3 <- df.mattfwells %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Matt Wells",
    subtitle = "Daily newly created followers since March 2018"
  )
p3 <- p3 + ylim(0,50)
p3

p3.1 <- df.mattfwells %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Matt Wells",
    subtitle = "Daily newly created followers since June 2017"
  )
p3.1 <- p3.1 + ylim(0,50)
p3.1

####################################
# Tania Rashid # 
####################################

TaniaRashid9 <- getUser("TaniaRashid9")
TaniaRashid9_follower_IDs<-TaniaRashid9$getFollowers(retryOnRateLimit=180)
df.TaniaRashid9 <- twListToDF(TaniaRashid9_follower_IDs)
write.csv(df.TaniaRashid9, file = "TaniaRashid9.csv")

TaniaRashid9_1st <- df.TaniaRashid9 %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
TaniaRashid9_2nd <- df.TaniaRashid9 %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
TaniaRashid9_3rd <- df.TaniaRashid9 %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
TaniaRashid9_4th <- df.TaniaRashid9 %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
TaniaRashid9_all <- rbind(TaniaRashid9_1st, TaniaRashid9_2nd, TaniaRashid9_3rd, TaniaRashid9_4th)

# Since March 1, 2018 
p4 <- df.TaniaRashid9 %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Tania Rashid",
    subtitle = "Daily newly created followers since March 2018"
  )
p4 <- p4 + ylim(0,50)
p4

p4.1 <- df.TaniaRashid9 %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Tania Rashid",
    subtitle = "Daily newly created followers since June 2017"
  )
p4.1 <- p4.1 + ylim(0,50)
p4.1

####################################
# Jonah Fisher # 
####################################

JonahFisherBBC <- getUser("JonahFisherBBC")
JonahFisherBBC_follower_IDs<-JonahFisherBBC$getFollowers(retryOnRateLimit=180)
df.JonahFisherBBC <- twListToDF(JonahFisherBBC_follower_IDs)
write.csv(df.JonahFisherBBC, file = "JonahFisherBBC.csv")

JonahFisherBBC_1st <- df.JonahFisherBBC %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
JonahFisherBBC_2nd <- df.JonahFisherBBC %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
JonahFisherBBC_3rd <- df.JonahFisherBBC %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
JonahFisherBBC_4th <- df.JonahFisherBBC %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
JonahFisherBBC_all <- rbind(JonahFisherBBC_1st, JonahFisherBBC_2nd, JonahFisherBBC_3rd, JonahFisherBBC_4th)

p5 <- df.JonahFisherBBC %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Jonah Fisher",
    subtitle = "Daily newly created followers since March 2018"
  )
p5 <- p5 + ylim(0,50)
p5

p5.1 <- df.JonahFisherBBC %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Jonah Fisher",
    subtitle = "Daily newly created followers since June 2017"
  )
p5.1 <- p5.1 + ylim(0,80)
p5.1

####################################
# Tun Khin # 
####################################

tunkhin80 <- getUser("tunkhin80")
tunkhin80_follower_IDs<-tunkhin80$getFollowers(retryOnRateLimit=180)
df.tunkhin80 <- twListToDF(tunkhin80_follower_IDs)
write.csv(df.tunkhin80, file = "tunkhin80.csv")

tunkhin80_1st <- df.tunkhin80 %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
tunkhin80_2nd <- df.tunkhin80 %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
tunkhin80_3rd <- df.tunkhin80 %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
tunkhin80_4th <- df.tunkhin80 %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
tunkhin80_all <- rbind(tunkhin80_1st, tunkhin80_2nd, tunkhin80_3rd, tunkhin80_4th)

p6 <- df.tunkhin80 %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Tun Khin",
    subtitle = "Daily newly created followers since March 2018"
  )
p6 <- p6 + ylim(0,50)
p6

p6.1 <- df.tunkhin80 %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Tun Khin",
    subtitle = "Daily newly created followers since June 2017"
  )
p6.1 <- p6.1 + ylim(0,200)
p6.1

####################################
# Ro Nay San Lwin # 
####################################

nslwin <- getUser("nslwin")
nslwin_follower_IDs<-nslwin$getFollowers(retryOnRateLimit=180)
df.nslwin <- twListToDF(nslwin_follower_IDs)
write.csv(df.nslwin, file = "nslwin.csv")

nslwin_1st <- df.nslwin %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
nslwin_2nd <- df.nslwin %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
nslwin_3rd <- df.nslwin %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
nslwin_4th <- df.nslwin %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
nslwin_all <- rbind(nslwin_1st, nslwin_2nd, nslwin_3rd, nslwin_4th)

p7 <- df.nslwin %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Ro Nay San Lwin",
    subtitle = "Daily newly created followers since March 2018"
  )
p7 <- p7 + ylim(0,120)
p7

p7.1 <- df.nslwin %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Ro Nay San Lwin",
    subtitle = "Daily newly created followers since June 2017"
  )
p7.1 <- p7.1 + ylim(0,200)
p7.1 

####################################
# Sally Mairs # 
####################################

ssmairs <- getUser("ssmairs")
ssmairs_follower_IDs<-ssmairs$getFollowers(retryOnRateLimit=180)
df.ssmairs <- twListToDF(ssmairs_follower_IDs)
write.csv(df.ssmairs, file = "ssmairs.csv")

ssmairs_1st <- df.ssmairs %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
ssmairs_2nd <- df.ssmairs %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
ssmairs_3rd <- df.ssmairs %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
ssmairs_4th <- df.ssmairs %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
ssmairs_all <- rbind(ssmairs_1st, ssmairs_2nd, ssmairs_3rd, ssmairs_4th)

p8 <- df.ssmairs %>%
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Sally Mairs",
    subtitle = "Daily newly created followers since March 2018"
  )
p8 <- p8 + ylim(0,50)
p8

p8.1 <- df.ssmairs %>%
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Sally Mairs",
    subtitle = "Daily newly created followers since June 2017"
  )
p8.1 <- p8.1 + ylim(0,50)
p8.1

####################################
# Ursula Mueller # 
####################################

UschiMuller <- getUser("UschiMuller")
UschiMuller_follower_IDs<-UschiMuller$getFollowers(retryOnRateLimit=180)
df.UschiMuller <- twListToDF(UschiMuller_follower_IDs)
write.csv(df.UschiMuller, file = "UschiMuller.csv")

UschiMuller_1st <- df.UschiMuller %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
UschiMuller_2nd <- df.UschiMuller %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
UschiMuller_3rd <- df.UschiMuller %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
UschiMuller_4th <- df.UschiMuller %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
UschiMuller_all <- rbind(UschiMuller_1st, UschiMuller_2nd, UschiMuller_3rd, UschiMuller_4th)

p9 <- df.UschiMuller %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Ursula Mueller",
    subtitle = "Daily newly created followers since March 2018"
  )
p9 <- p9 + ylim(0,50)
p9

p9.1 <- df.UschiMuller %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Ursula Mueller",
    subtitle = "Daily newly created followers since June 2017"
  )
p9.1 <- p9.1 + ylim(0,50)
p9.1

####################################
# Matthew Smith # 
####################################

matthewfsmith <- getUser("matthewfsmith")
matthewfsmith_follower_IDs<-matthewfsmith$getFollowers(retryOnRateLimit=180)
df.matthewfsmith <- twListToDF(matthewfsmith_follower_IDs)
write.csv(df.matthewfsmith, file = "matthewfsmith.csv")

matthewfsmith_1st <- df.matthewfsmith %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
matthewfsmith_2nd <- df.matthewfsmith %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
matthewfsmith_3rd <- df.matthewfsmith %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
matthewfsmith_4th <- df.matthewfsmith %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
matthewfsmith_all <- rbind(matthewfsmith_1st, matthewfsmith_2nd, matthewfsmith_3rd, matthewfsmith_4th)

p10 <- df.matthewfsmith %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Matthew Smith",
    subtitle = "Daily newly created followers since March 2018"
  )
p10 <- p10 + ylim(0, 50)
p10

# Since June 1, 2018
p10.1 <- df.matthewfsmith %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Matthew Smith",
    subtitle = "Daily newly created followers since June 2017"
  )
p10.1 <- p10.1 + ylim(0, 350)
p10.1

####################################
# Kristian Schmidt # 
####################################

EUAmbSchmidt <- getUser("EUAmbSchmidt")
EUAmbSchmidt_follower_IDs<-EUAmbSchmidt$getFollowers(retryOnRateLimit=180)
df.EUAmbSchmidt <- twListToDF(EUAmbSchmidt_follower_IDs)
write.csv(df.EUAmbSchmidt, file = "EUAmbSchmidt.csv")

EUAmbSchmidt_1st <- df.EUAmbSchmidt %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
EUAmbSchmidt_2nd <- df.EUAmbSchmidt %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
EUAmbSchmidt_3rd <- df.EUAmbSchmidt %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
EUAmbSchmidt_4th <- df.EUAmbSchmidt %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
EUAmbSchmidt_all <- rbind(EUAmbSchmidt_1st, EUAmbSchmidt_2nd, EUAmbSchmidt_3rd, EUAmbSchmidt_4th)

p12 <- df.EUAmbSchmidt %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Kristian Schmidt",
    subtitle = "Daily newly created followers since March 2018"
  )
p12 <- p12 + ylim(0, 120)
p12

p12.1 <- df.EUAmbSchmidt %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Kristian Schmidt",
    subtitle = "Daily newly created followers since June 2017"
  )
p12.1 <- p12.1 + ylim(0, 120)
p12.1

####################################
# Pierre Peron # 
####################################

pierre_peron <- getUser("pierre_peron")
pierre_peron_follower_IDs<-pierre_peron$getFollowers(retryOnRateLimit=180)
df.pierre_peron <- twListToDF(pierre_peron_follower_IDs)
write.csv(df.pierre_peron, file = "pierre_peron.csv")

pierre_peron_1st <- df.pierre_peron %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
pierre_peron_2nd <- df.pierre_peron %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
pierre_peron_3rd <- df.pierre_peron %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
pierre_peron_4th <- df.pierre_peron %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
pierre_peron_all <- rbind(pierre_peron_1st, pierre_peron_2nd, pierre_peron_3rd, pierre_peron_4th)


p13 <- df.pierre_peron %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Pierre Peron",
    subtitle = "Daily newly created followers since March 2018"
  )
p13 <- p13 + ylim(0, 80)
p13

p13.1 <- df.pierre_peron %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Pierre in Myanmar",
    subtitle = "Daily newly created followers since June 2017"
  )
p13.1 <- p13.1 + ylim(0, 200)
p13.1

####################################
# Kitty McKinsey # 
####################################

KittyMcKinsey <- getUser("KittyMcKinsey")
KittyMcKinsey_follower_IDs<-KittyMcKinsey$getFollowers(retryOnRateLimit=180)
df.KittyMcKinsey <- twListToDF(KittyMcKinsey_follower_IDs)
write.csv(df.KittyMcKinsey, file = "KittyMcKinsey.csv")

KittyMcKinsey_1st <- df.KittyMcKinsey %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
KittyMcKinsey_2nd <- df.KittyMcKinsey %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
KittyMcKinsey_3rd <- df.KittyMcKinsey %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
KittyMcKinsey_4th <- df.KittyMcKinsey %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
KittyMcKinsey_all <- rbind(KittyMcKinsey_1st, KittyMcKinsey_2nd, KittyMcKinsey_3rd, KittyMcKinsey_4th)

p14 <- df.KittyMcKinsey %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Kitty McKinsey",
    subtitle = "Daily newly created followers since March 2018"
  )
p14 <- p14 + ylim(0, 50)
p14

p14.1 <- df.KittyMcKinsey %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Kitty McKinsey",
    subtitle = "Daily newly created followers since June 2017"
  )
p14.1 <- p14.1 + ylim(0, 50)
p14.1

####################################
# Alexandra Field # 
####################################

AFieldCNN <- getUser("AFieldCNN")
AFieldCNN_follower_IDs<-AFieldCNN$getFollowers(retryOnRateLimit=180)
df.AFieldCNN <- twListToDF(AFieldCNN_follower_IDs)
write.csv(df.AFieldCNN, file = "AFieldCNN.csv")

AFieldCNN_1st <- df.AFieldCNN %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
AFieldCNN_2nd <- df.AFieldCNN %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
AFieldCNN_3rd <- df.AFieldCNN %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
AFieldCNN_4th <- df.AFieldCNN %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
AFieldCNN_all <- rbind(AFieldCNN_1st, AFieldCNN_2nd, AFieldCNN_3rd, AFieldCNN_4th)

p15 <- df.AFieldCNN %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Alexandra Field",
    subtitle = "Daily newly created followers since March 2018"
  )
p15 <- p15 + ylim(0, 50)
p15

p15.1 <- df.AFieldCNN %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Alexandra Field",
    subtitle = "Daily newly created followers since June 2017"
  )
p15.1 <- p15.1 + ylim(0, 50)
p15.1

####################################
# LaetitiavandenAssum # 
####################################

lvandenassum <- getUser("lvandenassum")
lvandenassum_follower_IDs<-lvandenassum$getFollowers(retryOnRateLimit=180)
df.lvandenassum <- twListToDF(lvandenassum_follower_IDs)
write.csv(df.lvandenassum, file = "lvandenassum.csv")

lvandenassum_1st <- df.lvandenassum %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
lvandenassum_2nd <- df.lvandenassum %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
lvandenassum_3rd <- df.lvandenassum %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
lvandenassum_4th <- df.lvandenassum %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
lvandenassum_all <- rbind(lvandenassum_1st, lvandenassum_2nd, lvandenassum_3rd, lvandenassum_4th)

p16 <- df.lvandenassum %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "LaetitiavandenAssum",
    subtitle = "Daily newly created followers since March 2018"
  )
p16 <- p16 + ylim(0, 50)
p16

p16.1 <- df.lvandenassum %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "LaetitiavandenAssum",
    subtitle = "Daily newly created followers since June 2017"
  )
p16.1 <- p16.1 + ylim(0, 50)
p16.1

####################################
# Yimou Lee # 
####################################

YimouLee <- getUser("YimouLee")
YimouLee_follower_IDs<-YimouLee$getFollowers(retryOnRateLimit=180)
df.YimouLee <- twListToDF(YimouLee_follower_IDs)
write.csv(df.YimouLee, file = "YimouLee.csv")

lvandenassum_1st <- df.lvandenassum %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
lvandenassum_2nd <- df.lvandenassum %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
lvandenassum_3rd <- df.lvandenassum %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
lvandenassum_4th <- df.lvandenassum %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
lvandenassum_all <- rbind(lvandenassum_1st, lvandenassum_2nd, lvandenassum_3rd, lvandenassum_4th)

p17 <- df.YimouLee %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Yimou Lee",
    subtitle = "Daily newly created followers since March 2018"
  )
p17 <- p17 + ylim(0, 80)
p17

p17.1 <- df.YimouLee %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Yimou Lee",
    subtitle = "Daily newly created followers since June 2017"
  )
p17.1 <- p17.1 + ylim(0, 80)
p17.1

####################################
# Antoni Slodkowski # 
####################################

slodek <- getUser("slodek")
slodek_follower_IDs<-slodek$getFollowers(retryOnRateLimit=180)
df.slodek <- twListToDF(slodek_follower_IDs)
write.csv(df.slodek, file = "slodek.csv")

slodek_1st <- df.slodek %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
slodek_2nd <- df.slodek %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
slodek_3rd <- df.slodek %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
slodek_4th <- df.slodek %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
slodek_all <- rbind(slodek_1st, slodek_2nd, slodek_3rd, slodek_4th)

p18 <- df.slodek %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Antoni Slodkowski",
    subtitle = "Daily newly created followers since March 2018"
  )
p18 <- p18 + ylim(0, 50)
p18

p18.1 <- df.slodek %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Antoni Slodkowski",
    subtitle = "Daily newly created followers since June 2017"
  )
p18.1 <- p18.1 + ylim(0, 50)
p18.1

####################################
# Richard Horsey # 
####################################

rshorsey <- getUser("rshorsey")
rshorsey_follower_IDs<-rshorsey$getFollowers(retryOnRateLimit=180)
df.rshorsey <- twListToDF(rshorsey_follower_IDs)
write.csv(df.rshorsey , file = "rshorsey.csv")

rshorsey_1st <- df.rshorsey %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
rshorsey_2nd <- df.rshorsey %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
rshorsey_3rd <- df.rshorsey %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
rshorsey_4th <- df.rshorsey %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
rshorsey_all <- rbind(rshorsey_1st, rshorsey_2nd, rshorsey_3rd, rshorsey_4th)

p19 <- df.rshorsey %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Richard Horsey",
    subtitle = "Daily newly created followers since March 2018"
  )
p19 <- p19 + ylim(0, 50)
p19

p19.1 <- df.rshorsey %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Richard Horsey",
    subtitle = "Daily newly created followers since March 2018"
  )
p19.1 <- p19.1 + ylim(0, 80)
p19.1

####################################
# Ikhtiyar Aslano # 
####################################

IkhtiyarAslano <- getUser("IkhtiyarAslano")
IkhtiyarAslano_follower_IDs<-IkhtiyarAslano$getFollowers(retryOnRateLimit=180)
df.IkhtiyarAslano <- twListToDF(IkhtiyarAslano_follower_IDs)
write.csv(df.IkhtiyarAslano, file = "IkhtiyarAslano.csv")

IkhtiyarAslano_1st <- df.IkhtiyarAslano %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
IkhtiyarAslano_2nd <- df.IkhtiyarAslano %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
IkhtiyarAslano_3rd <- df.IkhtiyarAslano %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
IkhtiyarAslano_4th <- df.IkhtiyarAslano %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
IkhtiyarAslano_all <- rbind(IkhtiyarAslano_1st, IkhtiyarAslano_2nd, IkhtiyarAslano_3rd, IkhtiyarAslano_4th)

p20 <- df.IkhtiyarAslano %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Ikhtiyar Aslano ",
    subtitle = "Daily newly created followers since March 2018"
  )
p20 <- p20 + ylim(0, 50)
p20

p20.1 <- df.IkhtiyarAslano %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Ikhtiyar Aslano ",
    subtitle = "Daily newly created followers since June 2017"
  )
p20.1 <- p20.1 + ylim(0, 50)
p20.1

####################################
# May Wong # 
####################################

MayWongCNA <- getUser("MayWongCNA")
MayWongCNA_follower_IDs<-MayWongCNA$getFollowers(retryOnRateLimit=180)
df.MayWongCNA <- twListToDF(MayWongCNA_follower_IDs)
write.csv(df.MayWongCNA, file = "MayWongCNA.csv")

MayWongCNA_1st <- df.MayWongCNA %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
MayWongCNA_2nd <- df.MayWongCNA %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
MayWongCNA_3rd <- df.MayWongCNA %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
MayWongCNA_4th <- df.MayWongCNA %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
MayWongCNA_all <- rbind(MayWongCNA_1st, MayWongCNA_2nd, MayWongCNA_3rd, MayWongCNA_4th)

p21 <- df.MayWongCNA %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "May Wong",
    subtitle = "Daily newly created followers since March 2018"
  )
p21 <- p21 + ylim(0, 80)
p21

p21.1 <- df.MayWongCNA %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "May Wong",
    subtitle = "Daily newly created followers since June 2017"
  )
p21.1 <- p21.1 + ylim(0, 350)
p21.1

####################################
# Joe Freeman # 
####################################

joefree215 <- getUser("joefree215")
joefree215_follower_IDs<-joefree215$getFollowers(retryOnRateLimit=180)
df.joefree215 <- twListToDF(joefree215_follower_IDs)
write.csv(df.joefree215, file = "joefree215.csv")

joefree215_1st <- df.joefree215 %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
joefree215_2nd <- df.joefree215 %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
joefree215_3rd <- df.joefree215 %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
joefree215_4th <- df.joefree215 %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
joefree215_all <- rbind(joefree215_1st, joefree215_2nd, joefree215_3rd, joefree215_4th)

p22 <- df.joefree215 %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Joe Freeman",
    subtitle = "Daily newly created followers since March 2018"
  )
p22 <- p22 + ylim(0, 50)
p22

p22.1 <- df.joefree215 %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Joe Freeman",
    subtitle = "Daily newly created followers since June 2017"
  )
p22.1 <- p22.1 + ylim(0, 50)
p22.1

####################################
# Francis Wade # 
####################################

Francis_Wade <- getUser("Francis_Wade")
Francis_Wade_follower_IDs<-Francis_Wade$getFollowers(retryOnRateLimit=180)
df.Francis_Wade <- twListToDF(Francis_Wade_follower_IDs)
write.csv(df.Francis_Wade, file = "Francis_Wade.csv")

Francis_Wade_1st <- df.Francis_Wade %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
Francis_Wade_2nd <- df.Francis_Wade %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
Francis_Wade_3rd <- df.Francis_Wade %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
Francis_Wade_4th <- df.Francis_Wade %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
Francis_Wade_all <- rbind(Francis_Wade_1st, Francis_Wade_2nd, Francis_Wade_3rd, Francis_Wade_4th)

p23 <- df.Francis_Wade %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Francis Wade",
    subtitle = "Daily newly created followers since March 2018"
  )
p23 <- p23 + ylim(0, 50)
p23

p23.1 <- df.Francis_Wade %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Francis Wade",
    subtitle = "Daily newly created followers since June 2017"
  )
p23.1 <- p23.1 + ylim(0, 80)
p23.1


####################################
# Kayleigh E. Long # 
####################################

ayleighk <- getUser("ayleighk")
ayleighk_follower_IDs<-ayleighk$getFollowers(retryOnRateLimit=180)
df.ayleighk <- twListToDF(ayleighk_follower_IDs)
write.csv(df.ayleighk, file = "ayleighk.csv")

ayleighk_1st <- df.ayleighk %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
ayleighk_2nd <- df.ayleighk %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
ayleighk_3rd <- df.ayleighk %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
ayleighk_4th <- df.ayleighk %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
ayleighk_all <- rbind(ayleighk_1st, ayleighk_2nd, ayleighk_3rd, ayleighk_4th)

p24 <- df.ayleighk %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Kayleigh E. Long",
    subtitle = "Daily newly created followers since March 2018"
  )
p24 <- p24 + ylim(0, 50)
p24

p24.1 <- df.ayleighk %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Kayleigh E. Long",
    subtitle = "Daily newly created followers since June 2017"
  )
p24.1 <- p24.1 + ylim(0, 80)
p24.1

####################################
# Mark Farmaner # 
####################################

MarkFarmaner <- getUser("MarkFarmaner")
MarkFarmaner_follower_IDs<-MarkFarmaner$getFollowers(retryOnRateLimit=180)
df.MarkFarmaner <- twListToDF(MarkFarmaner_follower_IDs)
write.csv(df.MarkFarmaner, file = "MarkFarmaner")

MarkFarmaner_1st <- df.MarkFarmaner %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
MarkFarmaner_2nd <- df.MarkFarmaner %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
MarkFarmaner_3rd <- df.MarkFarmaner %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
MarkFarmaner_4th <- df.MarkFarmaner %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
MarkFarmaner_all <- rbind(MarkFarmaner_1st, MarkFarmaner_2nd, MarkFarmaner_3rd, MarkFarmaner_4th)

p25 <- df.MarkFarmaner %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Mark Farmaner",
    subtitle = "Daily newly created followers since March 2018"
  )
p25 <- p25 + ylim(0, 80)
p25

p25.1 <- df.MarkFarmaner %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Mark Farmaner",
    subtitle = "Daily newly created followers since June 2017"
  )
p25.1 <- p25.1 + ylim(0, 200)
p25.1

####################################
# Jonathan Head # 
####################################

pakhead <- getUser("pakhead")
pakhead_follower_IDs<-pakhead$getFollowers(retryOnRateLimit=180)
df.pakhead <- twListToDF(pakhead_follower_IDs)
write.csv(df.pakhead, file = "pakhead.csv")

pakhead_1st <- df.pakhead %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
pakhead_2nd <- df.pakhead %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
pakhead_3rd <- df.pakhead %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
pakhead_4th <- df.pakhead %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
pakhead_all <- rbind(pakhead_1st, pakhead_2nd, pakhead_3rd, pakhead_4th)

p26 <- df.pakhead %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Jonathan Head",
    subtitle = "Daily newly created followers since March 2018"
  )
p26 <- p26 + ylim(0, 50)
p26

p26.1 <- df.pakhead %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Jonathan Head",
    subtitle = "Daily newly created followers since June 2017"
  )
p26.1 <- p26.1 + ylim(0, 80)
p26.1

####################################
# Laura Haigh # 
####################################

Lauraehaigh <- getUser("Lauraehaigh")
Lauraehaigh_follower_IDs<-Lauraehaigh$getFollowers(retryOnRateLimit=180)
df.Lauraehaigh <- twListToDF(Lauraehaigh_follower_IDs)
write.csv(df.Lauraehaigh, file = "Lauraehaigh.csv")

Lauraehaigh_1st <- df.Lauraehaigh %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
Lauraehaigh_2nd <- df.Lauraehaigh %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
Lauraehaigh_3rd <- df.Lauraehaigh %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
Lauraehaigh_4th <- df.Lauraehaigh %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
Lauraehaigh_all <- rbind(Lauraehaigh_1st, Lauraehaigh_2nd, Lauraehaigh_3rd, Lauraehaigh_4th)

p27 <- df.Lauraehaigh %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Laura Haigh",
    subtitle = "Daily newly created followers since March 2018"
  )
p27 <- p27 + ylim(0, 50)
p27

p27.1 <- df.Lauraehaigh %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Laura Haigh",
    subtitle = "Daily newly created followers since June 2017"
  )
p27.1 <- p27.1 + ylim(0, 200)
p27.1

####################################
# FiMacGregor # 
####################################

FiMacGregor <- getUser("FiMacGregor")
FiMacGregor_follower_IDs<-FiMacGregor$getFollowers(retryOnRateLimit=180)
df.FiMacGregor <- twListToDF(FiMacGregor_follower_IDs)
write.csv(df.FiMacGregor, file = "FiMacGregor.csv")

FiMacGregor_1st <- df.FiMacGregor %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
FiMacGregor_2nd <- df.FiMacGregor %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
FiMacGregor_3rd <- df.FiMacGregor %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
FiMacGregor_4th <- df.FiMacGregor %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
FiMacGregor_all <- rbind(FiMacGregor_1st, FiMacGregor_2nd, FiMacGregor_3rd, FiMacGregor_4th)

p28 <- df.FiMacGregor %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "FiMacGregor",
    subtitle = "Daily newly created followers since March 2018"
  )
p28 <- p28 + ylim(0, 80)
p28

p28.1 <- df.FiMacGregor %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "FiMacGregor",
    subtitle = "Daily newly created followers since June 2017"
  )
p28.1 <- p28.1 + ylim(0, 80)
p28.1

####################################
# Oliver Slow # 
####################################

oslow99 <- getUser("oslow99")
oslow99_follower_IDs<-oslow99$getFollowers(retryOnRateLimit=180)
df.oslow99 <- twListToDF(oslow99_follower_IDs)
write.csv(df.oslow99, file = "oslow99.csv")

oslow99_1st <- df.oslow99 %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
oslow99_2nd <- df.oslow99 %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
oslow99_3rd <- df.oslow99 %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
oslow99_4th <- df.oslow99 %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
oslow99_all <- rbind(oslow99_1st, oslow99_2nd, oslow99_3rd, oslow99_4th)

p29 <- df.oslow99 %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Oliver Slow",
    subtitle = "Daily newly created followers since March 2018"
  )
p29 <- p29 + ylim(0, 50)
p29

p29.1 <- df.oslow99 %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Oliver Slow",
    subtitle = "Daily newly created followers since June 2017"
  )
p29.1 <- p29.1 + ylim(0, 50)
p29.1

####################################
# Jeffrey Gettleman # 
####################################

gettleman <- getUser("gettleman")
gettleman_follower_IDs<-gettleman$getFollowers(retryOnRateLimit=180)
df.gettleman <- twListToDF(gettleman_follower_IDs)
write.csv(df.gettleman, file = "gettleman.csv")

gettleman_1st <- df.gettleman %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
gettleman_2nd <- df.gettleman %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
gettleman_3rd <- df.gettleman %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
gettleman_4th <- df.gettleman %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
gettleman_all <- rbind(gettleman_1st, gettleman_2nd, gettleman_3rd, gettleman_4th)

p30 <- df.gettleman %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Jeffrey Gettleman",
    subtitle = "Daily newly created followers since March 2018"
  )
p30 <- p30 + ylim(0, 50)
p30

p30.1 <- df.gettleman %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Jeffrey Gettleman",
    subtitle = "Daily newly created followers since March 2018"
  )
p30.1 <- p30.1 + ylim(0, 50)
p30.1

####################################
# Edith Mirante # 
####################################

EdithMirante <- getUser("EdithMirante")
EdithMirante_follower_IDs<-EdithMirante$getFollowers(retryOnRateLimit=180)
df.EdithMirante <- twListToDF(EdithMirante_follower_IDs)
write.csv(df.EdithMirante, file = "EdithMirante.csv")

EdithMirante_1st <- df.EdithMirante %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
EdithMirante_2nd <- df.EdithMirante %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
EdithMirante_3rd <- df.EdithMirante %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
EdithMirante_4th <- df.EdithMirante %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
EdithMirante_all <- rbind(EdithMirante_1st, EdithMirante_2nd, EdithMirante_3rd, EdithMirante_4th)

p31 <- df.EdithMirante %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Edith Mirante",
    subtitle = "Daily newly created followers since March 2018"
  )
p31 <- p31 + ylim(0, 50)
p31

p31.1 <- df.EdithMirante %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Edith Mirante",
    subtitle = "Daily newly created followers since June 2018"
  )
p31.1 <- p31.1 + ylim(0, 50)
p31.1

####################################
# Ashley S. Westerman # 
####################################

NPRAshley <- getUser("NPRAshley")
NPRAshley_follower_IDs<-NPRAshley$getFollowers(retryOnRateLimit=180)
df.NPRAshley <- twListToDF(NPRAshley_follower_IDs)
write.csv(df.NPRAshley, file = "NPRAshley.csv")

NPRAshley_1st <- df.NPRAshley %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
NPRAshley_2nd <- df.NPRAshley %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
NPRAshley_3rd <- df.NPRAshley %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
NPRAshley_4th <- df.NPRAshley %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
NPRAshley_all <- rbind(NPRAshley_1st, NPRAshley_2nd, NPRAshley_3rd, NPRAshley_4th)

p32 <- df.NPRAshley %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Ashley S. Westerman",
    subtitle = "Daily newly created followers since March 2018"
  )
p32 <- p32 + ylim(0, 50)
p32

p32.1 <- df.NPRAshley %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Ashley S. Westerman",
    subtitle = "Daily newly created followers since June 2017"
  )
p32.1 <- p32.1 + ylim(0, 50)
p32.1

####################################
# Andrew RC Marshall # 
####################################

Journotopia <- getUser("Journotopia")
Journotopia_follower_IDs<-Journotopia$getFollowers(retryOnRateLimit=180)
df.Journotopia <- twListToDF(Journotopia_follower_IDs)
write.csv(df.Journotopia, file = "Journotopia.csv")

Journotopia_1st <- df.Journotopia %>% dplyr::filter(created > "2017-06-15" & created < "2017-07-15")
Journotopia_2nd <- df.Journotopia %>% dplyr::filter(created > "2017-08-15" & created < "2017-10-15")
Journotopia_3rd <- df.Journotopia %>% dplyr::filter(created > "2017-12-15" & created < "2018-01-15")
Journotopia_4th <- df.Journotopia %>% dplyr::filter(created > "2018-03-15" & created < "2018-04-30")
Journotopia_all <- rbind(Journotopia_1st, Journotopia_2nd, Journotopia_3rd, Journotopia_4th)

p33 <- df.Journotopia %>% 
  dplyr::filter(created > "2018-03-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Andrew RC Marshall",
    subtitle = "Daily newly created followers since March 2018"
  )
p33 <- p33 + ylim(0, 50)
p33

p33.1 <- df.Journotopia %>% 
  dplyr::filter(created > "2017-06-01") %>% 
  ts_plot("days", trim = 1L) +
  ggplot2::geom_point() +
  ggplot2::theme_minimal() +
  ggplot2::theme(
    legend.title = ggplot2::element_blank(),
    legend.position = "bottom",
    plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = NULL, y = NULL,
    title = "Andrew RC Marshall",
    subtitle = "Daily newly created followers since June 2017"
  )
p33.1 <- p33.1 + ylim(0, 50)
p33.1


####################################################################################################
# Phase plots
####################################################################################################

library(ggplot2)

phase1 <- read.csv("~/Documents/OP_Twitter/Phases_Data_Plots/phase1.csv")
phase2 <- read.csv("~/Documents/OP_Twitter/Phases_Data_Plots/phase2.csv")
phase3 <- read.csv("~/Documents/OP_Twitter/Phases_Data_Plots/phase3.csv")
phase4 <- read.csv("~/Documents/OP_Twitter/Phases_Data_Plots/phase4.csv")
total <- read.csv("~/Documents/OP_Twitter/Phases_Data_Plots/total.csv")

# Bar plot
phase1_plot <- ggplot(phase1, aes(x=id, y=newfollwers, fill=newfollwers)) + 
  geom_bar(stat = "identity", position=position_dodge()) + 
  coord_flip() + 
  theme_minimal() +
  geom_text(aes(label=newfollwers), hjust = 0, vjust=.45, color="black", position = position_dodge(3), size=2.5) +
  scale_fill_distiller(name="Newborn followers", palette = "RdYlGn") +
  labs(title = "Number of suspected accounts created during phase 1", subtitle = "15th June 2017 to 15th July 2017")+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank())
phase1_plot

phase2_plot <- ggplot(phase2, aes(x=id, y=newfollwers, fill=newfollwers)) + 
  geom_bar(stat = "identity", position=position_dodge()) + 
  coord_flip() + 
  theme_minimal() +
  geom_text(aes(label=newfollwers), hjust = 0, vjust=.45, color="black", position = position_dodge(3), size=2.5) +
  scale_fill_distiller(name="Newborn followers", palette = "RdYlGn") +
  labs(title = "Number of suspected accounts created during phase 2", subtitle = "15th August 2017 to 15th October 2017")+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank())
phase2_plot

phase3_plot <- ggplot(phase3, aes(x=id, y=newfollwers, fill=newfollwers)) + 
  geom_bar(stat = "identity", position=position_dodge()) + 
  coord_flip() + 
  theme_minimal() +
  geom_text(aes(label=newfollwers), hjust = 0, vjust=.45, color="black", position = position_dodge(3), size=2.5) +
  scale_fill_distiller(name="Newborn followers", palette = "RdYlGn") +
  labs(title = "Number of suspected accounts created during phase 3", subtitle = "15th December 2017 to 15th January 2018")+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank())
phase3_plot

phase4_plot <- ggplot(phase4, aes(x=id, y=newfollwers, fill=newfollwers)) + 
  geom_bar(stat = "identity", position=position_dodge()) + 
  coord_flip() + 
  theme_minimal() +
  geom_text(aes(label=newfollwers), hjust = 0, vjust=.45, color="black", position = position_dodge(3), size=2.5) +
  scale_fill_distiller(name="Newborn followers", palette = "RdYlGn") +
  labs(title = "Number of suspected accounts created during phase 4", subtitle = "15th March 2018 to 30th May 2018")+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank())
phase4_plot

total_plot <- ggplot(total, aes(x=id, y=newfollwers, fill=newfollwers)) + 
  geom_bar(stat = "identity", position=position_dodge()) + 
  coord_flip() + 
  theme_minimal() +
  geom_text(aes(label=newfollwers), hjust = 0, vjust=.45, color="black", position = position_dodge(3), size=2.5) +
  scale_fill_distiller(name="Newborn followers", palette = "RdYlGn") +
  labs(title = "Total Number of suspected accounts created during phase 1-4")+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank())
total_plot
