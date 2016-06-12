# Import and clean data set.
co250 <- read.csv("C:/Users/Elizabeth/Documents/GitHub/vizprototypes/co250.csv", sep =",", header = TRUE, na.strings = "NA")
co250
names(co250) <- c("Country", "1970", "1975", "1980","1985", "1990", "1995", "2000", "2005", "2010")
row.names(co250) <- co250$Country
co250$Country <- NULL

# Create heatmap
co2_matrix <- data.matrix(co250)
gray_colors <- c("#ffffff", "#e5e5e5","#cccccc", "#b2b2b2", "#999999", "#7f7f7f", "#666666", "#4c4c4c","#333333","#191919","#000000")
co2_heatmap <- heatmap(co2_matrix, Rowv=NA, Colv=NA, col = gray_colors, scale="column",margins= c(5,10))

# Create boxplot
boxplot(co250)

#Create Parallel Plot
library(lattice)
parallelplot(co250, horizontal.axis = FALSE, col = "#000000")

