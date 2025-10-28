#' Plot amino acid composition
#'
#' Creates a bar plot showing the counts of unique amino acids
#' from an one-letter protein sequence. This function uses stringr
#' for character processing and ggplot2 for visualization.
#'
#' @param protein_sequence Sequence of amino acids
#'
#' @returns A bar plot
#' @export
plot_amino_acid_composition <- function(protein_sequence) {
  unique_amino_acids <- protein_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  amino_acid_counts <- sapply(
    unique_amino_acids,
    function(amino_acid) stringr::str_count(string = protein_sequence, pattern = amino_acid)
  ) |>
    as.data.frame()

  colnames(amino_acid_counts) <- c("count")
  amino_acid_counts[["amino_acid"]] <- rownames(amino_acid_counts)
  rownames(amino_acid_counts) <- NULL

  amino_acid_plot <- amino_acid_counts |>
    ggplot2::ggplot(ggplot2::aes(x = amino_acid, y = count, fill = amino_acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(amino_acid_plot)
}
