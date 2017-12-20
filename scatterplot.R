#Creating plots 
#Set Working Directory to Downloads/Cholorophyta-master
setwd("~/Downloads/Chlorophyta-master")
#install ggplot2 
install.packages("ggplot2")
#load ggplot2
library("ggplot2")
#read csv file of plastid vs mitochondria length
mitovsplastid_3<- read.csv("mitovsplastid_3.csv")

#creates plots of chloroplast and mitochondrial genome size from the table created by 'tablecode'
#plot displays the difference in length of mitochondria and chloroplasts genome size for each species of green algae.
#created scatter plot by using geom_point and assign specific color
mc1 <-ggplot(data = mitovsplastid_3, aes(x = Genome, y =X.Genome.length.mito., colour = "X.Genome.length.mito.")) + 
#Use groups label for x-axis
geom_point() +xlab('Groups') + 
#Use Molecular Length (nt) label for x-axis
ylab('Molecular Length (nt)') +
#labs sets the title of the graph as Mitochondria Length vs Plastid lengths
labs(title = 'Mitochondrial Length vs Chloroplast Length within different organisms')+ 
#Use geom_point by adding plastid length and assign specific color
geom_point(data = mitovsplastid_3,aes(x = Genome, y = X.Genome.length.plastid, colour = "X.Genome.length.plastid"))+
#theme manipulates the appearance of the plot,the gradients, and angle of the plots 
theme(axis.text = element_text(angle=90,hjust=1,vjust=0.5))+
scale_colour_manual("", 
#breaks Points at which y-grid lines appear.
breaks = c("X.Genome.length.plastid","X.Genome.length.mito."),
#values set the colors c() creates a vector holding multiple colors
values = c("red","blue")) +
geom_smooth(aes(x = Genome, y = X.Genome.length.mito., colour = "X.Genome.length.mito."))+
#geom_smooth allows the implementation of a formula using different modeling functions
geom_smooth(aes(x = Genome, y = X.Genome.length.plastid, colour = "X.Genome.length.plastid"))
#setting scales of axises 
library(scales)
#scale y continuous allows specific limits to where the points continues or breaks
mc1 + scale_y_continuous(labels = scientific)
mc1 +  scale_y_log10(breaks = trans_breaks("log10", function(x) 10^x),
                     labels = trans_format("log10", math_format(10^.x)))

