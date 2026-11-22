library(tidyverse)

cab  <- read_delim("cab.csv",  delim = ";", show_col_types = FALSE)
pro2 <- read_delim("pro2.csv", delim = ";", 
                   locale = locale(encoding = "latin1"),
                   show_col_types = FALSE)

farma <- cab %>%
  select(invoice, colaborador) %>%
  inner_join(
    pro2 %>% select(invoice, Material, description, cantidad),
    by = "invoice"
  )

historial_simple <- farma %>%
  group_by(colaborador, Material, description) %>%
  summarise(
    total_unidades = sum(cantidad, na.rm = TRUE),
    n_compras      = n_distinct(invoice),
    .groups        = "drop"
  ) %>%
  arrange(colaborador, desc(total_unidades))

write_csv2(historial_simple, "historial_compradores.csv")