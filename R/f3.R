#' Split a Sequence into 3-Character Codons
#'
#' @param seq sequence to split
#' @param start start index
#'
#' @returns a list of codons
#' @export
#'
#' @examples
#' split_to_codons("AGUGCAG")
split_to_codons <- function(seq, start = 1){
  seq_len <- nchar(seq)
  codons <- substring(seq,
    first = seq(from = start, to = seq_len-3+1, by = 3),
    last = seq(from = 3+start-1, to = seq_len, by = 3))
  return(codons)
}
