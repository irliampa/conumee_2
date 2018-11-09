update.packages()

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
	BiocManager::install()
	BiocManager::install("DelayedArray", version = "3.8")
	BiocManager::install("HDF5Array", version = "3.8")
	BiocManager::install("GenomicRanges", version = "3.8")
	BiocManager::install("biomaRt", version = "3.8")
	BiocManager::install("minfi", version = "3.8")
	BiocManager::install("conumee", version = "3.8")	
}
