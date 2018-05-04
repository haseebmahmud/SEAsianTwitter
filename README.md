## Investigating the twitter follower surge in SE Asia

Recently there was a **huge** surge of twitter followers in influential twitter accounts in SE Asia. Here are some media reports, 

- [Twitter doesn’t care that someone is building a bot army in Southeast Asia](https://techcrunch.com/2018/04/20/twitter-doesnt-care-that-someone-is-building-a-bot-army-in-southeast-asia/)
- [Surge in anonymous Asia Twitter accounts sparks bot fears](https://www.straitstimes.com/asia/se-asia/surge-in-anonymous-asia-twitter-accounts-sparks-bot-fears)
- [A swarm of Twitter bots is threatening to invade Southeast Asia](https://www.dailydot.com/debug/twitter-bots-southeast-asia/)
- [Twitter Has a Big Problem in Southeast Asia: Bots Before the Ballot in Malaysia and Beyond](http://time.com/5260832/malaysia-election-twitter-bots-social-media/?xid=tcoshare)

I have decided to check if the claim is true. After having a short look, it seems the recent surge started at the end of March 2018. Affected accounts are complaining in the twitter. E.g. Edward Rees tweeted this on 3rd April. 

![ReesTweet](https://github.com/haseebmahmud/SEAsianTwitter/blob/master/rees_tweet.png)
 
Unfortunately, Twitter [REST API](https://developer.twitter.com/en/docs/api-reference-index) does not allow third parties to get any information about the real time follower database. That means, even though we can count how many new followers a person having during a time period, we can not see who are those new followers. 

However, I found most of the Edwards’ new followers are newly created accounts. We all have newborn followers. And like birthdays of a population, the creation date of tweeter accounts should follow a uniform distribution with occasional random insignificant spikes. For example, if we compare my account, which is not affected, with Edward's account, then we will notice the difference. 

![Reesandme](https://raw.githubusercontent.com/haseebmahmud/SEAsianTwitter/master/mevsrees.png)

Edward's twitter follower trend seems way beyond what I have expected. He has lot of followers created in the same day. Those newly created accounts either have Myanmar as their self declared location or have a SE Asian name (my opinion though). Since those are newly created accounts, it is clear that they are at least partly responsible for the recent follower surge. 

To investigate if it is a general trend, I have selected 33 twitter accounts as a sample. I took Journalist, diplomats, UN employees, think tank officials, activists tweeting about Myanmar.

|Name 						| 	Twitter account  										| 	Work/Affiliation											|
| --------------------------|	------------------------------------------------------	|	----------------------------------------------------------	|
|Edward Ress				|	[ReesEdward](https://twitter.com/ReesEdward)			|	UN, Bangladesh												|
|Poppy McPherson			|	[poppymcp](https://twitter.com/poppymcp)				| 	Journalist, Guardian, Time, IRIN, Foreign Policy, Buzzfeed 	|
|Matt Wells 				|	[matwells](https://twitter.com/matwells)  				|	Amnesty International 										|
|Tania Rashid 				|	[TaniaRashid9](https://twitter.com/TaniaRashid9) 		|	Journalist, PBS News Hour 									|
|Jonah Fisher 				|	[JonahFisherBBC](https://twitter.com/JonahFisherBBC) 	|	Journalist, BBC 											|
|Tun Khin 					|	[kunkhin80](https://twitter.com/kunkhin80) 				|	President, Burmese Rohingya Organization, UK 				|
|Ro Nay San Lwin 			|	[nslwin](https://twitter.com/nslwin) 					|	Blogger, Rohingyablogger.com 								|
|Sally Mairs	 			| 	[ssmairs](https://twitter.com/ssmairs) 					|	Journalist, AFP 											|
|Ursula Müller 				| 	[UschiMuller](https://twitter.com/UschiMuller) 			|	UNOCHA 														|
|Matthew Smith 				|	[matthewfsmith](https://twitter.com/matthewfsmith) 		|	Fortify Rights 												| 
|Kristian Schmidt 			|	[EUAmbSchmidt](https://twitter.com/EUAmbSchmidt) 		|	EU Ambassador, Myanmar  									|
|Piere Peron 				|	[pierre_peron](https://twitter.com/pierre_peron) 		|	UNOCHA 														|
|Kitty McKinsey 			|	[KittyMcKinsey](https://twitter.com/KittyMcKinsey) 		|	UNHCR 														|
|Alexandra Field 			|	[AFieldCNN](https://twitter.com/AFieldCNN) 				|	Jounalist, CNN 												|
|Laetitia van den Assum 	|	[lvandenassum](https://twitter.com/lvandenassum)  		|	Diplomat													|
|Yimou Lee 					|	[YimouLee](https://twitter.com/YimouLee)  				|	Journalist, Reuters 										|
|Antoni Slodkowski 			|	[slodek](https://twitter.com/slodek) 					|	Journalist, Reuters 										|
|Richard Horsey 			|	[rshorsey](https://twitter.com/rshorsey) 				|	Independent analyst, consultant Crisis Group 				|
|Ikhtiyar Aslano 			|	[IkhtiyarAslano](https://twitter.com/IkhtiyarAslano) 	|	ICRC, Bangladesh 											|
|May Wong 					|	[MayWongCNA](https://twitter.com/MayWongCNA) 			|	Channel News Asia 											|
|Joe Freeman 				|	[joefree215](https://twitter.com/joefree215) 			|	Journalist, AFP 											|
|Francis Wade 				|	[Francis_Wade](https://twitter.com/Francis_Wade)		|	Journalist, Author 											|
|Kayleigh E. Long 			|	[ayleighk](https://twitter.com/ayleighk)				| 	Journalist, Freelance										|
|Mark Farmaner 				|	[MarkFarmaner](https://twitter.com/MarkFarmaner) 		|	Director, Burma Campaign, UK 								|
|Jonathan Head 				|	[pakhead](https://twitter.com/pakhead) 					|	Journalist, BBC 											|
|Laura Haigh 				|	[Lauraehaigh](https://twitter.com/Lauraehaigh) 			|	Amnesty International 										|
|Fi MacGregor 				|	[FiMacGregor](https://twitter.com/FiMacGregor) 			|	IOM															|
|Oliver Slow 				|	[oslow99](https://twitter.com/oslow99) 					|	Chief of Staff, FrontierMM 									|
|Jeffrey Gettleman 			|	[gettleman](https://twitter.com/gettleman) 				|	Journalist, NYT 											|
|Edith Mirante 				| 	[EdithMirante](https://twitter.com/EdithMirante) 		|	Author, activist											|
|Ashley S. Westerman 		|	[NPRAshley](https://twitter.com/NPRAshley) 				|	Journalist, NPR 											|
|Andrew RC Marshall 		|	[Journotopia](https://twitter.com/Journotopia) 			|	Journalist, Reuters 										|

## Newly created follower trend
In the sample, [Ro Nay San Lwin](https://twitter.com/nslwin) and EU Ambassador to Myanmar [Kristian Schmidt](https://twitter.com/EUAmbSchmidt) seems two most affected twitter accounts. 

![lwinscmidt](https://raw.githubusercontent.com/haseebmahmud/SEAsianTwitter/master/Phase4_plots/phase4_top2.png)

More than 100 followers of [Kristian Schmidt](https://twitter.com/EUAmbSchmidt) were created in a day. And as we see, both have similar trend in the follower time series. Most of the accounts were created (approximately) on 26th March or later. This trend is true for most of the accounts in the sample. For example, 

![phase4rest](https://raw.githubusercontent.com/haseebmahmud/SEAsianTwitter/master/Phase4_plots/phase4_secondary.png)

From the plots above, it is clear that the trend started in the third to fourth week of March, 2018. If we aggregate the daily newly created number of followers of sample accounts starting from 15th March 2018, then it looks like this,

![phase1aggregate](https://raw.githubusercontent.com/haseebmahmud/SEAsianTwitter/master/Phases_Data_Plots/phase4.png)

Now, let's see if we have any other spikes in creation date of the twitter accounts we are investigating. I choose four accounts from the sample and plot the creation date of their followers starting from June 1, 2017.

![phasedetect](https://raw.githubusercontent.com/haseebmahmud/SEAsianTwitter/master/Phases_Data_Plots/phase_all_detection.png)

As we see, the trend is highly correlated and there are at least four surge in the sample time. Those are, 
- Phase 1: 15 June 2017 to 15th June, 2017
- Phase 2: 15 August 2017 to 15th October, 2017 (It's the time Myanmar refugee crisis unfolded)
- Phase 3: 15 December 2017 to 15th January, 2018
- Phase 4: 15 March 2018 to 30 April, 2018 (recent surge time)

Accounts created during phase 1 affect [Tun Khin](https://twitter.com/kunkhin80), [Matthew Smith](https://twitter.com/matthewfsmith) and [Ro Nay San Lwin](https://twitter.com/nslwin) most in my sample. 

![phase1](https://raw.githubusercontent.com/haseebmahmud/SEAsianTwitter/master/Phases_Data_Plots/phase1.png)

Journalist [May Wong](https://twitter.com/MayWongCNA) has over 4000 followers that were created in phase 2. For [Matthew Smith](https://twitter.com/matthewfsmith), the number is 3548. 

![phase2](https://raw.githubusercontent.com/haseebmahmud/SEAsianTwitter/master/Phases_Data_Plots/phase2.png)

[May Wong](https://twitter.com/MayWongCNA) and [Matthew Smith](https://twitter.com/matthewfsmith) have over 1000 followers created in phase 3.

![phase3](https://raw.githubusercontent.com/haseebmahmud/SEAsianTwitter/master/Phases_Data_Plots/phase3.png)

It is not yet clear if those newly created accounts are bots. To check if those are bots, we need to make a machine learning algorithm with SE Asian train datasets. I will do that later if I have some time. 


## Codes
- The code should work under the following setup,

```r 
> sessionInfo()
R version 3.4.4 (2018-03-15)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 18.04 LTS

Matrix products: default
BLAS: /usr/lib/x86_64-linux-gnu/blas/libblas.so.3.7.1
LAPACK: /usr/lib/x86_64-linux-gnu/lapack/liblapack.so.3.7.1

locale:
 [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C               LC_TIME=de_DE.UTF-8        LC_COLLATE=en_US.UTF-8     LC_MONETARY=de_DE.UTF-8   
 [6] LC_MESSAGES=en_US.UTF-8    LC_PAPER=de_DE.UTF-8       LC_NAME=C                  LC_ADDRESS=C               LC_TELEPHONE=C            
[11] LC_MEASUREMENT=de_DE.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] bindrcpp_0.2.2  gridExtra_2.3   forcats_0.3.0   stringr_1.3.0   dplyr_0.7.4     purrr_0.2.4     readr_1.1.1     tidyr_0.8.0    
 [9] tibble_1.4.2    ggplot2_2.2.1   tidyverse_1.2.1 ggthemes_3.4.2  rtweet_0.6.0    twitteR_1.1.9  

loaded via a namespace (and not attached):
 [1] reshape2_1.4.3     haven_1.1.1        lattice_0.20-35    colorspace_1.3-2   yaml_2.1.18        rlang_0.2.0        pillar_1.2.2      
 [8] foreign_0.8-69     glue_1.2.0         DBI_0.8            RColorBrewer_1.1-2 bit64_0.9-7        modelr_0.1.1       readxl_1.1.0      
[15] bindr_0.1.1        plyr_1.8.4         munsell_0.4.3      gtable_0.2.0       cellranger_1.1.0   rvest_0.3.2        psych_1.8.3.3     
[22] labeling_0.3       parallel_3.4.4     curl_3.2           broom_0.4.4        Rcpp_0.12.16       openssl_1.0.1      scales_0.5.0      
[29] jsonlite_1.5       bit_1.1-12         mnormt_1.5-5       digest_0.6.15      rjson_0.2.15       hms_0.4.2          stringi_1.1.7     
[36] grid_3.4.4         cli_1.0.0          tools_3.4.4        magrittr_1.5       lazyeval_0.2.1     crayon_1.3.4       pkgconfig_2.0.1   
[43] xml2_1.2.0         lubridate_1.7.4    assertthat_0.2.0   httr_1.3.1         rstudioapi_0.7     R6_2.2.2           nlme_3.1-131      
[50] compiler_3.4.4   
```

- Please keep in mind that the code takes a lot of time and memory to run. I have a laptop with 8th generation CPU and 12 gigs of RAM. This spec is only sufficient for about 10 accounts at a time. The trick is to run 5 accounts, clean the workplace objects, restart r-session and do the next 5. 

