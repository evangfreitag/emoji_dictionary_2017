#setwd("C:/Users/Evan/Documents")
library(jsonlite)
emojis <- fromJSON("emojis_dictionary_2017/emojis.json", flatten=TRUE)

for(i in 1:length(emojis$codepoint)){
	if(is.na(emojis$codepoint[i]) == FALSE){
		emojis$codepoint[i] <- iconv(intToUtf8(as.hexmode(emojis$codepoint[i])), from="UTF-8", to="ASCII", "byte")
	}
}

for(i in 1:length(emojis$presentation.default)){
	if(is.na(emojis$presentation.default[i]) == FALSE){
		result <- try(iconv(intToUtf8(as.hexmode(emojis$presentation.default[i])), from="UTF-8", to="ASCII", "byte"), silent=TRUE)
		if (class(result) == "try-error") {emojis$presentation.default[i] <- NA}
		if (class(result) != "try-error") {
			emojis$presentation.default[i] <- iconv(intToUtf8(as.hexmode(emojis$presentation.default[i])), from="UTF-8", to="ASCII", "byte")
		}
	}
}

for(i in 1:length(emojis$"presentation.variation.emoji")){
	if(is.na(emojis$"presentation.variation.emoji"[i]) == FALSE){
		result <- try(iconv(intToUtf8(as.hexmode(str_split(emojis$"presentation.variation.emoji"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte"), silent=TRUE)
		if (class(result) == "try-error") {emojis$"presentation.variation.emoji"[i] <- NA}
		if (class(result) != "try-error") {
			emojis$"presentation.variation.emoji"[i] <- iconv(intToUtf8(as.hexmode(str_split(emojis$"presentation.variation.emoji"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte")
		}
	}
}

for(i in 1:length(emojis$"presentation.variation.text")){
	if(is.na(emojis$"presentation.variation.text"[i]) == FALSE){
		result <- try(iconv(intToUtf8(as.hexmode(str_split(emojis$"presentation.variation.text"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte"), silent=TRUE)
		if (class(result) == "try-error") {emojis$"presentation.variation.text"[i] <- NA}
		if (class(result) != "try-error") {
			emojis$"presentation.variation.text"[i] <- iconv(intToUtf8(as.hexmode(str_split(emojis$"presentation.variation.text"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte")
		}
	}
}

for(i in 1:length(emojis$"modification.skin.type-1-2.presentation.default")){
	if(is.na(emojis$"modification.skin.type-1-2.presentation.default"[i]) == FALSE){
		result <- try(iconv(intToUtf8(as.hexmode(str_split(emojis$"modification.skin.type-1-2.presentation.default"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte"), silent=TRUE)
		if (class(result) == "try-error") {emojis$"modification.skin.type-1-2.presentation.default"[i] <- NA}
		if (class(result) != "try-error") {
			emojis$"modification.skin.type-1-2.presentation.default"[i] <- iconv(intToUtf8(as.hexmode(str_split(emojis$"modification.skin.type-1-2.presentation.default"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte")
		}
	}
}

for(i in 1:length(emojis$"modification.skin.type-3.presentation.default")){
	if(is.na(emojis$"modification.skin.type-3.presentation.default"[i]) == FALSE){
		result <- try(iconv(intToUtf8(as.hexmode(str_split(emojis$"modification.skin.type-3.presentation.default"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte"), silent=TRUE)
		if (class(result) == "try-error") {emojis$"modification.skin.type-3.presentation.default"[i] <- NA}
		if (class(result) != "try-error") {
			emojis$"modification.skin.type-3.presentation.default"[i] <- iconv(intToUtf8(as.hexmode(str_split(emojis$"modification.skin.type-3.presentation.default"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte")
		}
	}
}

for(i in 1:length(emojis$"modification.skin.type-4.presentation.default")){
	if(is.na(emojis$"modification.skin.type-4.presentation.default"[i]) == FALSE){
		result <- try(iconv(intToUtf8(as.hexmode(str_split(emojis$"modification.skin.type-4.presentation.default"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte"), silent=TRUE)
		if (class(result) == "try-error") {emojis$"modification.skin.type-4.presentation.default"[i] <- NA}
		if (class(result) != "try-error") {
			emojis$"modification.skin.type-4.presentation.default"[i] <- iconv(intToUtf8(as.hexmode(str_split(emojis$"modification.skin.type-4.presentation.default"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte")
		}
	}
}

for(i in 1:length(emojis$"modification.skin.type-5.presentation.default")){
	if(is.na(emojis$"modification.skin.type-5.presentation.default"[i]) == FALSE){
		result <- try(iconv(intToUtf8(as.hexmode(str_split(emojis$"modification.skin.type-5.presentation.default"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte"), silent=TRUE)
		if (class(result) == "try-error") {emojis$"modification.skin.type-5.presentation.default"[i] <- NA}
		if (class(result) != "try-error") {
			emojis$"modification.skin.type-5.presentation.default"[i] <- iconv(intToUtf8(as.hexmode(str_split(emojis$"modification.skin.type-5.presentation.default"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte")
		}
	}
}

for(i in 1:length(emojis$"modification.skin.type-6.presentation.default")){
	if(is.na(emojis$"modification.skin.type-6.presentation.default"[i]) == FALSE){
		result <- try(iconv(intToUtf8(as.hexmode(str_split(emojis$"modification.skin.type-6.presentation.default"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte"), silent=TRUE)
		if (class(result) == "try-error") {emojis$"modification.skin.type-6.presentation.default"[i] <- NA}
		if (class(result) != "try-error") {
			emojis$"modification.skin.type-6.presentation.default"[i] <- iconv(intToUtf8(as.hexmode(str_split(emojis$"modification.skin.type-6.presentation.default"[i], " ")[[1]])), from="UTF-8", to="ASCII", "byte")
		}
	}
}
colnames(emojis)
all_emojis <- rbind(
	cbind(emojis$name, emojis$codepoint),
	cbind(emojis$name, emojis$presentation.default),
	cbind(emojis$name, emojis$"modification.skin.type-1-2.presentation.default"),
	cbind(emojis$name, emojis$"modification.skin.type-3.presentation.default"),
	cbind(emojis$name, emojis$"modification.skin.type-4.presentation.default"),
	cbind(emojis$name, emojis$"modification.skin.type-5.presentation.default"),
	cbind(emojis$name, emojis$"modification.skin.type-6.presentation.default")
)
all_emojis <- as.data.frame(all_emojis, stringsAsFactors = FALSE)
colnames(all_emojis) <- c("emoji_name","emoji_code")
w <- which(is.na(all_emojis$emoji_code) == TRUE)
all_emojis <- all_emojis[-w,]

# 16716 emojis!


