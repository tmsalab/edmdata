### Probability and Statistics with Calculus Homework Data
## Data obtained via e-mail from Auburn

### Import data ----------------------------------------------------------------
raw_pswc_hw_items <- read.csv("data-raw/ordered-pswc-hw/calculus_400_hw_data.csv")

# Convert from X1, X2, ... to Item1, Item2, ...
colnames(raw_pswc_hw_items) <- gsub("X", "Item", colnames(raw_pswc_hw_items))

# Pad item number with zeros
items_padded <- gsub("(Item)(\\d+)", "\\1%02d", colnames(raw_pswc_hw_items))
items_padded <- sprintf(items_padded, as.numeric(gsub("\\D", "", colnames(raw_pswc_hw_items))))

# Assign padded names
colnames(raw_pswc_hw_items) <- items_padded

# Rename
items_ordered_pswc_hw = as.matrix(raw_pswc_hw_items)

# Export
usethis::use_data(items_ordered_pswc_hw, overwrite = TRUE)
