

## MINI PROJECT - 1 - GOKULAKRISHNAN. V ##

#### Sentimental Analysis ####
library(syuzhet)

#### Read File ####
text_df1 <- read.csv("review.csv")

### restored data in charecter format ###
review1<-as.character(text_df1$Content)

### Obtain Sentiment Scores ###
get_nrc_sentiment('happy')
get_nrc_sentiment('abuse')

# store this data set into new variable ###
s1<-get_nrc_sentiment(review1)

### Combine text and sentiment columns ###
review_sentiment1 <- cbind(text_df1$Content,s1)

### Bar Plot for Sentiments ###
barplot(colSums(s1), col = rainbow(10), ylab = 'Count', main = 'Amazon review of the book "The Psychology of Money"')


















