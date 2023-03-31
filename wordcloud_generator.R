library(tm)
library(wordcloud)
# Create a vector of text documents
text <- c("Hello my name is Tuhin.",
          "I am a third year student.",
          "I am studying Artificial Intelligence.",
          "Tuhin tuhin tuhin .",
          "My name is Tuhin.")
# Create a corpus of text documents
corpus <- Corpus(VectorSource(text))
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
          max.words=200, random.order=FALSE, rot.per=0.35,
          colors=brewer.pal(8, "Dark2"))