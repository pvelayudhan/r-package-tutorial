setwd("~/documents/r-package-tutorial")

mouse_em <- read.csv("mouse_em.csv")
mouse_em1 <- read.csv("mouse_em1.csv")
mouse_em2 <- read.csv("mouse_em2.csv")
mouse_em3 <- read.csv("mouse_em3.csv")

library(demopackage)

g_ratio_t_test(mouse_em)
g_ratio_t_test(mouse_em1)
g_ratio_t_test(mouse_em2)
g_ratio_t_test(mouse_em3)
