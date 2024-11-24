library(SINCERA)
library(cluster)


input <- function(inputfile) {
	my_sc <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
	siggenes <- as.character(unique(getSigGenes(my_sc)$SYMBOL))

my_sc <- setGenesForClustering(my_sc, value=siggenes)

saveRDS(my_sc, outputfile)
}
