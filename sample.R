library(ggplot2)
scatter <- ggplot(data=iris, aes(x = Sepal.Length, y = Sepal.Width)) 
scatter + geom_point(aes(color=Species, shape=Species)) +
  xlab("アイリスのがくの長さ") +  ylab("がくの幅") +
  ggtitle("がくの長さと幅") 

