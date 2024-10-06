library(ggplot2)
library(cowplot)

# Dados de exemplo
df <- data.frame(
  x = 1:10,
  y = rnorm(10),
  group = rep(c("Grupo 1", "Grupo 2"), each = 5)
)

# Gráfico A
p1 <- ggplot(df, aes(x, y)) +
  geom_line() 

# Gráfico B
p2 <- ggplot(df, aes(x, y, color = group)) +
  geom_point() 


# Gráfico C
p3 <- ggplot(df, aes(x, y, fill = group)) +
  geom_bar(stat = "identity") 

# Gráfico D
p4 <- ggplot(df, aes(x, y)) +
  geom_boxplot() 


# Combinar gráficos
combined_plot <- plot_grid(p1, p2, p3, p4, labels = c("A", "B", "C", "D"), ncol = 2)


# Exibir o gráfico combinado
print(combined_plot)


####################################


# Dados de exemplo
df <- data.frame(
  x = 1:10,
  y = rnorm(10),
  group = rep(c("Grupo 1", "Grupo 2"), each = 5)
)

# Função para adicionar labels
add_label <- function(p, label) {
  p + 
    annotate("text", x = Inf, y = Inf, label = label, hjust = 1.1, vjust = 1.1, size = 6, fontface = "bold")
}

# Gráfico A
p1 <- ggplot(df, aes(x, y)) +
  geom_line() +
  add_label("A")

# Gráfico B
p2 <- ggplot(df, aes(x, y, color = group)) +
  geom_point() +
  add_label("B")

# Gráfico C
p3 <- ggplot(df, aes(x, y, fill = group)) +
  geom_bar(stat = "identity") +
  add_label("C")

# Gráfico D
p4 <- ggplot(df, aes(x, y)) +
  geom_boxplot() +
  add_label("D")

# Combinar gráficos
combined_plot <- plot_grid(p1, p2, p3, p4, ncol = 2)

# Exibir o gráfico combinado
print(combined_plot)

##############################
# Dados de exemplo
df <- data.frame(
  x = 1:10,
  y = rnorm(10),
  group = rep(c("Grupo 1", "Grupo 2"), each = 5)
)

# Gráfico A
p1 <- ggplot(df, aes(x, y)) +
  geom_line() +
  annotate("text", x = max(df$x), y = max(df$y), label = "A", hjust = 1.1, vjust = -0.1, size = 5)

# Gráfico B
p2 <- ggplot(df, aes(x, y, color = group)) +
  geom_point() +
  annotate("text", x = max(df$x), y = max(df$y), label = "B", hjust = 1.1, vjust = -0.1, size = 5)

# Gráfico C
p3 <- ggplot(df, aes(x, y, fill = group)) +
  geom_bar(stat = "identity") +
  annotate("text", x = max(df$x), y = max(df$y, na.rm = TRUE), label = "C", hjust = 1.1, vjust = -0.1, size = 5)

# Gráfico D
p4 <- ggplot(df, aes(x, y)) +
  geom_boxplot() +
  annotate("text", x = max(df$x), y = max(df$y, na.rm = TRUE)-0.1, label = "D", hjust = 1.0, vjust = -0.1, size = 5)

# Combinar gráficos usando patchwork


combined_plot <- plot_grid(p1, p2, p3, p4, ncol = 2)

# Exibir o gráfico combinado
print(combined_plot)
