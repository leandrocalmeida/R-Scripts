library(ggplot2)

#Gráfico de Barras Empilhados
#Management
Management <- read.csv(file.choose(), sep = ';')
Management <- as.data.frame(Management)
colnames(Management) <- c("Years", "Topics", "Quantity")
ggplot(data = Management, aes(x= Years, y= Quantity, fill= Topics)) + 
  geom_bar(stat = "identity") + 
  scale_fill_brewer(palette = 18) +
  scale_x_continuous(breaks = seq(2010,2019,1)) +
  theme(panel.grid.major=element_line(linetype=2,color="gray90"),
        panel.background = element_rect(fill = "white", colour = "black", size = 1),
        axis.text = element_text(size = 17), 
        axis.title = element_text(size=20), 
        legend.text = element_text(size=17),
        legend.title = element_text(size=17)
  )

#Orchestration
Orchestration <- read.csv(file.choose(), sep = ';')
Orchestration <- as.data.frame(Orchestration)
colnames(Orchestration) <- c("Years", "Topics", "Quantity")
ggplot(data = Orchestration, aes(x= Years, y= Quantity, fill= Topics)) + 
  geom_bar(stat = "identity") + 
  scale_fill_brewer(palette = 10) +
  scale_x_continuous(breaks = seq(2010,2019,1)) +
  theme(panel.grid.major=element_line(linetype=2,color="gray90"),
        panel.background = element_rect(fill = "white", colour = "black", size = 1),
        axis.text = element_text(size = 17), 
        axis.title = element_text(size=20), 
        legend.text = element_text(size=17),
        legend.title = element_text(size=17)
  )

#5G
FiveG <- read.csv(file.choose(), sep = ';')
FiveG <- as.data.frame(FiveG)
colnames(FiveG) <- c("Years", "Topics", "Quantity")
ggplot(data = FiveG, aes(x= Years, y= Quantity, fill= Topics)) + 
  geom_bar(stat = "identity") + 
  scale_fill_brewer(palette = 11) +
  scale_x_continuous(breaks = seq(2010,2019,1)) +
  theme(panel.grid.major=element_line(linetype=2,color="gray90"),
        panel.background = element_rect(fill = "white", colour = "black", size = 1),
        axis.text = element_text(size = 17), 
        axis.title = element_text(size=20), 
        legend.text = element_text(size=17),
        legend.title = element_text(size=17)
  )

#Architecture
Architecture <- read.csv(file.choose(), sep = ';')
Architecture <- as.data.frame(Architecture)
colnames(Architecture) <- c("Years", "Topics", "Quantity")
ggplot(data = Architecture, aes(x= Years, y= Quantity, fill= Topics)) + 
  geom_bar(stat = "identity") + 
  scale_fill_brewer(palette = 8) +
  scale_x_continuous(breaks = seq(2010,2019,1)) +
  theme(panel.grid.major=element_line(linetype=2,color="gray90"),
        panel.background = element_rect(fill = "white", colour = "black", size = 1),
        axis.text = element_text(size = 17), 
        axis.title = element_text(size=20), 
        legend.text = element_text(size=17),
        legend.title = element_text(size=17)
  )

#BillingPrice
BillingPrice <- read.csv(file.choose(), sep = ';')
BillingPrice <- as.data.frame(BillingPrice)
colnames(BillingPrice) <- c("Years", "Topics", "Quantity")
ggplot(data = BillingPrice, aes(x= Years, y= Quantity, fill= Topics)) + 
  geom_bar(stat = "identity") + 
  scale_fill_brewer(palette = 12) +
  scale_x_continuous(breaks = seq(2010,2019,1)) +
  theme(panel.grid.major=element_line(linetype=2,color="gray90"),
        panel.background = element_rect(fill = "white", colour = "black", size = 1),
        axis.text = element_text(size = 17), 
        axis.title = element_text(size=20), 
        legend.text = element_text(size=17),
        legend.title = element_text(size=17)
        )

