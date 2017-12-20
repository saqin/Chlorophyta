#We used geom_col to create the bar graph to compare the length between 
#mitochondria and plastid
mc2 <- ggplot(data = mitovsplastid_3, aes(x = Genome, y =X.Genome.length.mito., color = "X.Genome.length.mito.")) + geom_col() +xlab('Genome') + 
ylab('Molecular length') +
#labs sets the title of the graph as Mitochondria Length vs Plastid lengths
labs(title = 'Mitochondria Length vs Plastid lengths')+
#labs colour sets the legend title as Scale of lengths
labs(colour ="Scale of lengths") + geom_col() +
#theme manipulates the appearance of the plot,the gradients, and angle of the plots 
theme(axis.text = element_text(angle=90,hjust=1,vjust=0.5))+
#Use geom_col by adding plastid length and assign specific color
geom_col(data = mitovsplastid_3, aes(x = Genome, y = X.Genome.length.plastid, color = "X.Genome.length.plastid"))
#setting scales of axises
library(scales)
#scale y continuous allows specific limits to where the points continues or breaks
mc2 + scale_y_continuous(labels = scientific)
mc2 +  scale_y_log10(breaks = trans_breaks("log10", function(x) 10^x),
                     labels = trans_format("log10", math_format(10^.x)))
