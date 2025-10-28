
#' Generate DNA sequence
#'
#' @param seq_length Length of sequence
#'
#' @returns start start index
#' @export
#'
#' @examples
#' gen_seq(7)
gen_seq <- function(seq_length){
  random_base <- sample(c("A", "T", "G", "C"), size = seq_length, replace = TRUE)
  dna_seq <- paste0(random_base, collapse = "")
  return(dna_seq)
  }

