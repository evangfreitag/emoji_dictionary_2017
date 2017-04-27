setwd("C:/Users/Evan/Documents")
library(jsonlite)

unicode2hiValLowVal <- function(unicodeVal){
   highVal = floor((unicodeVal - 0x10000)/0x400) + 0xd800
   lowVal = (unicodeVal - 0x10000) + 0xdc00 - (highVal-0xd800)*0x400
   highValLowVal = paste('0x', as.hexmode(c(highVal,lowVal)), sep = '')
   return(highValLowVal)
}

emojis <- fromJSON("emojis_dictionary_2017/emojis.json", flatten=TRUE)
emojis <- emojis[,1:2]
emojis$unifiedR <- ""
for(i in 1:length(emojis$unified)){
	unicode <- paste("0x",emojis$unified[i], sep = "")
	unicode <- as.numeric(unicode)
	emojis$unifiedR[i] <- iconv(intToUtf8(unicode2hilo(unicode)), from="UTF-8", to="ASCII", "byte")
}

# will spit warnings, not an issue unless you care about regional indicator symbols or keycaps
# i'm using this for sentiment analysis so they don't really matter

emojis <- emojis[1:1013,]