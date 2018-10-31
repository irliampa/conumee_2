update.packages()

libraries <- c("conumee", "biomaRt", "GenomicRanges")

if(!require(libraries)){
    source("https://bioconductor.org/biocLite.R")
	    biocLite("DelayedArray", ask = F)
	    biocLite("HDF5Array", ask = F)
	    biocLite(libraries, ask = F)
    lapply(libraries, library, character.only = TRUE)
}
