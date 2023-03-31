#importing Libraries
library(tm)
library(wordcloud)
read.data <- read.csv('C:/Users/rctuh/Desktop/IMDB Dataset.csv')
print(read.data)
#To print number of columns
print(ncol(read.data))
#To print the number of rows
print(nrow(read.data))
review.data <- (read.data$review)
#Choosing a few columns
a = read.data[c(1, 10),]
b = read.data[c(11,21),]
#printing the dataframe
print(a)
#Printing all the data
print(review.data)
#Create a corpus of text documents
corpus <- Corpus(VectorSource(b))
# Remove stop words
corpus <- tm_map(corpus, removeWords, stopwords("english"))
# Remove numbers
corpus <- tm_map(corpus, removeNumbers)
# Remove punctuation
corpus <- tm_map(corpus, removePunctuation)
# Perform stemming
corpus <- tm_map(corpus, stemDocument)
# Create a term-document matrix
tdm <- TermDocumentMatrix(corpus)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing=TRUE)
d <- data.frame(word = names(v), freq = v)
wordcloud(words = d$word, freq = d$freq, min.freq = 1,
          max.words=2000, random.order=FALSE, rot.per=0.35,
          colors=brewer.pal(8, "Dark2"))