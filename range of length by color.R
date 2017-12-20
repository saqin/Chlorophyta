#This graph shows that the genome sizes are diverse. 
#The ranges of colors demonstrate how some correlation of molecular lengths (nt) are spreaded out. 
#We observed that when it reaches a certain length the range of color shifts.

#Ranges of length by color
# set ggplot data to variable mc3. Aes means aesthetic adds colors sets mito color to red
mc3 <- ggplot(data = mitovsplastid_3, aes(x = Genome, y =X.Genome.length.mito., 
#geom_point allows the addition of different shapes 
color=X.Genome.length.mito.)) + geom_point() +xlab('Genome') + 
#ylab sets the y axis label to Molecular length
ylab('Molecular length') +
#labs sets the title of the graph as Mitochondria Length vs Plastid lengths
labs(title = 'Mitochondria Length vs Plastid lengths')+ 
#labs colour sets the legend title as Scale of lengths
labs(colour ="Scale of lengths") + geom_point() +
#theme manipulates the appearance of the plot,the gradients, and angle of the plots 
theme(axis.text = element_text(angle=90,hjust=1,vjust=0.5))+
#aesthetic sets plastid color to blue
geom_point(data = mitovsplastid_3, aes(x = Genome, y = X.Genome.length.plastid, color= X.Genome.length.plastid))
#setting scales of axises
library(scales)
#scale y continuous allows specific limits to where the points continues or breaks
mc3 + scale_y_continuous(labels = scientific)
mc3 +  scale_y_log10(breaks = trans_breaks("log10", function(x) 10^x),
                     labels = trans_format("log10", math_format(10^.x)))
#manipulate the range of colors by using color gradient command 
mc3 + scale_colour_gradientn(colours = terrain.colors(10))
