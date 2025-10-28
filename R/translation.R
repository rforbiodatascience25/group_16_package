#' translation
#'
#' @param codons a list of RNA codons
#'
#' @returns a string of Amino Acids
#' @export
#'
#' @examples
#' translation(c("UAU","UUU","GAG"))
translation <- function(codons){
  amino_a <- paste0(codon_table[codons], collapse = "")
  return(amino_a)
}
