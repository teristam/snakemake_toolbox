library(tidyverse)
library(ggplot2)

set.seed(123) # For reproducibility

file_path <- snakemake@input[['capitalized']]
text <- read_file(file_path)
chars <- str_split(text, pattern = "", simplify = TRUE)
chars <- as.vector(chars)

# Remove empty characters
chars <- chars[chars != ""]

# Count frequency of each character
char_freq <- tibble(char = chars) %>%
    count(char, sort = TRUE)

plots <- list()

for (i in 1:3) {
    sampled_chars <- sample(unique(char_freq$char), 10)
    sampled_freq <- char_freq %>% filter(char %in% sampled_chars)
    p <- ggplot(sampled_freq, aes(x = reorder(char, n), y = n)) +
        geom_col(fill = "steelblue") +
        coord_flip() +
        labs(title = paste("Random 10 Character Frequencies - Sample", i),
             x = "Character",
             y = "Frequency") +
        theme_minimal()
    plots[[i]] <- p
    fig_path <- file.path(snakemake@output[['figures_dir']], sprintf("char_freq_sample_%d.jpg", i))
    ggsave(filename = fig_path, plot = p, width = 8, height = 6, dpi = 300, create.dir = TRUE)
}