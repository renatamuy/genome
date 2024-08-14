library(rentrez)

virus_name <- "Influenza A virus[Organism] AND complete genome"

# max 4 sequences
search_results <- entrez_search(db = "nucleotide", term = virus_name, retmax = 4)

cat("Number of whole genome sequences available for Influenza A virus:", search_results$count, "\n")

sequences <- entrez_fetch(db = "nucleotide", id = search_results$ids, rettype = "fasta")

cat(sequences)