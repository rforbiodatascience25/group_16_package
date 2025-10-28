#' Transcription
#'
#' @param substi_T_U a DNA sequence
#'
#' @returns a RNA sequence
#'
#' @export
#'
#' @examples
#' substi_T_U("ATTCGGGTT")
substi_T_U <- function(substi_T_U){
  substi_T_U <- gsub("T", "U", substi_T_U)
  return(substi_T_U)
}
