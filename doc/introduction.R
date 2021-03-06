## ---- echo=FALSE, include=FALSE-----------------------------------------------
library(knitr)
knitr::opts_chunk$set(cache = TRUE, warning = FALSE, 
                      message = FALSE, cache.lazy = FALSE)

library(magrittr)
library(dplyr)
library(tidyHeatmap)


## -----------------------------------------------------------------------------
pasilla

## -----------------------------------------------------------------------------
pasilla %>%
	heatmap(
		.row = symbol,
		.column = sample,
		.value = `count normalised adjusted`,
		annotation = c(condition, type),
		transform = log1p
	)

## -----------------------------------------------------------------------------
pasilla %>%
	group_by(location) %>%
	heatmap(
		.row = symbol,
		.column = sample,
		.value = `count normalised adjusted`,
		annotation = c(condition, type),
		transform = log1p
	)

