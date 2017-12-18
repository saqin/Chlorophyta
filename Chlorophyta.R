mitovsplastid_2
g1 <-ggplot(data = mitovsplastid_2, aes(x = Genome, y =X.Genome.length.mito., color = "red")) + geom_point() +xlab('Genome') + 
  ylab('Molecular length') +
  labs(title = 'Mitochondria Length vs Plastid lengths')+ 
  labs(colour ="Scale of lengths") + geom_point() +
  theme(axis.text = element_text(angle=90,hjust=1,vjust=0.5))+
  geom_point(data = mitovsplastid, aes(x = Genome, y = X.Genome.length.plastid, color = "blue"))
g1


Column graph
ggplot(data = mitovsplastid_2, aes(x = Genome, y =X.Genome.length.mito., color = "red")) + geom_col() +xlab('Genome') + 
  ylab('Molecular length') +
  labs(title = 'Mitochondria Length vs Plastid lengths')+ 
  labs(colour ="Scale of lengths") + geom_col() +
  theme(axis.text = element_text(angle=90,hjust=1,vjust=0.5))+
  geom_col(data = mitovsplastid, aes(x = Genome, y = X.Genome.length.plastid, color = "blue"))

Geom Jitter ( reduce overplotting)

ggplot(data = mitovsplastid_2, aes(x = Genome, y =X.Genome.length.mito., color = "red")) + geom_jitter()+
  xlab('Genome') +ylab('Molecular length') +
  labs(title = 'Mitochondria Length vs Plastid lengths')+ 
  labs(colour ="Scale of lengths") + geom_jitter() +
  theme(axis.text = element_text(angle=90,hjust=1,vjust=0.5))+
  geom_jitter(data = mitovsplastid, aes(x = Genome, y = X.Genome.length.plastid, color = "blue")) 

Ranges of length by color

ggplot(ata = mitovsplastid_2, aes(x = Genome, y =X.Genome.length.mito., color=X.Genome.length.mito.)) + geom_point() +xlab('Genome') + 
  ylab('Molecular length') +
  labs(title = 'Mitochondria Length vs Plastid lengths')+ 
  labs(colour ="Scale of lengths") + geom_point() +
  theme(axis.text = element_text(angle=90,hjust=1,vjust=0.5))+
  geom_point(data = mitovsplastid_2, aes(x = Genome, y = X.Genome.length.plastid, color= X.Genome.length.plastid))
