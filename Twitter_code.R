# Haseeb Mahmud
# haseeb.mahmud@gmail.com

# Install and load package TwitteR
if (!require("twitteR")) install.packages("twitteR")
library(twitteR)

# Authentication
api_key <- "tyD2d2DegmnX3ZDlK9SHi51hr"
api_secret <- "SFCI5zdXRrcfff9dFVd3ForGSnPnJhXR1KgZcCRkccqsJB4V7W"
access_token <- "15199563-vLAUrFP0ZgjkYdTRvLxvcYR3d4eyhbiQlerT8A6YB"
access_token_secret <- "t5NSkT5ZbWqvqp0YbmorWwnMu1U8Ys6dampqds4mAI2CR"

setup_twitter_oauth(api_key,api_secret)

# Freekhaleda 
Total_FreeKhaleda <- searchTwitter("FreeKhaleda", n = 10000)
Total_FreeKhaleda.df <- twListToDF(Total_FreeKhaleda)
write.csv(Total_FreeKhaleda.df, file = "Total_FreeKhaleda.csv")

WithoutRT_FreeKhaleda <- searchTwitter("FreeKhaleda -filter:retweets", n = 10000)
WithoutRT_FreeKhaleda.df <- twListToDF(WithoutRT_FreeKhaleda)
write.csv(WithoutRT_FreeKhaleda.df, file = "WithoutRT_FreeKhaleda.csv")

# Freekhaledazia
Total_FreeKhaledaZia <- searchTwitter("FreeKhaledaZia", n = 10000)
Total_FreeKhaledaZia.df <- twListToDF(Total_FreeKhaledaZia)
write.csv(Total_FreeKhaleda.df, file = "FreeKhaledaZia.csv")

WithoutRT_FreeKhaledaZia <- searchTwitter("FreeKhaledaZia -filter:retweets" , n = 10000)
WithoutRT_Total_FreeKhaledaZia.df <- twListToDF(WithoutRT_FreeKhaledaZia)
write.csv(WithoutRT_Total_FreeKhaledaZia.df, file = "WithoutRT_FreeKhaledaZia.csv")