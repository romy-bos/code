library(tidyverse)

# Had an OK filet mignon at Cheesecake Factory.

diamonds_histogram <- ggplot(diamonds, aes(x = carat)) +
	geom_histogram(binwidth = 0.05, fill = "gray40", color = "white") +
	labs(
		title = "Histogram of Carat (Weight) among 50,000 Diamonds",
		subtitle = "Carats just at or above meaningful numbers are very common",
		x = "Carat",
		y = "Number",
		caption = "diamonds dataset from ggplot2 package"
	) +
	theme_gray(base_size = 18) +
	xlim(0, 5.2)

ggsave(
	"diamonds-histogram.png",
	plot = diamonds_histogram,
	width = 12.24,
	height = 6.76,
	units = "in",
	dpi = 100
)

diamonds_histogram

