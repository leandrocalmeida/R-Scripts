library(ggplot2)
library(dplyr)
library(scales)
library(plotly)

#Gráfico de Bolha
data <- read.csv(file.choose(), sep =';')
data$Value <- sub(",", ".",data$Value)
data$radius <- sqrt(as.numeric(data$Value)/pi)
colnames(data) <- c("TF", "RF", "Value", "Radius")
data$RF <- tools::toTitleCase(as.vector(data$RF))
data$RF <- as.character(data$RF)
data$RF <- factor(data$RF, levels=unique(data$RF))
data$RF <- factor(data$RF, levels=c("Evaluation Research","Opinion Papers","Personal Experience Papers","Solution Proposal","Philosophical Papers","Validation Research","Total (Technological Facet)"))
data$TF <- as.character(data$TF)
data$TF <- factor(data$TF, levels=unique(data$TF))
data$TF <- factor(data$TF, levels=c("Total (Research Facet)","5G","Architecture","Management","Orchestration","Pricing Model"))
ggplot(data,aes(RF,TF))+
  geom_point(aes(size=as.numeric(data$Radius)*25, colour =factor(data$RF)), shape=20, alpha = 0.4)+
  geom_text(aes(label = paste0(data$Value,"%")),size=5.5)+
  scale_size_identity()+
  annotate("label", x="Total (Technological Facet)", y="Total (Research Facet)", label="100%")+
  annotate("label", x="Evaluation Research", y="Total (Research Facet)", label="2,54%")+
  annotate("label", x="Solution Proposal", y="Total (Research Facet)", label="51,54%")+
  annotate("label", x="Validation Research", y="Total (Research Facet)", label="38,59%")+
  annotate("label", x="Philosophical Papers", y="Total (Research Facet)", label="4,54%")+
  annotate("label", x="Personal Experience Papers", y="Total (Research Facet)", label="0,73%")+
  annotate("label", x="Opinion Papers", y="Total (Research Facet)", label="2,05%")+
  annotate("label", x="Total (Technological Facet)", y="Management", label="45,04%")+
  annotate("label", x="Total (Technological Facet)", y="Orchestration", label="7,77%")+
  annotate("label", x="Total (Technological Facet)", y="5G", label="32,49%")+
  annotate("label", x="Total (Technological Facet)", y="Architecture", label="12,16%")+
  annotate("label", x="Total (Technological Facet)", y="Pricing Model", label="2,56%")+
  theme(panel.grid.major=element_line(linetype=2,color="gray90"),
        axis.text.x = element_text(angle=30, hjust = 1, colour = "black", size = rel(1.5)), 
        axis.text.y = element_text(colour = "black", size = rel(1.5)),
        panel.background = element_rect(fill = "white", colour = "black", size = 1),
        plot.margin = margin(2, 2, 0, 0, "cm"),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),
        legend.position = "none"
        )
