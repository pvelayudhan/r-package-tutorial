set.seed(42)
mtbi_df <- data.frame(
  axon_diameter = abs(rnorm(50)),
  fiber_diameter = abs(rnorm(50)) * 2.2888347,
  group = as.factor("mtbi")
)
sham_df = data.frame(
  axon_diameter = abs(rnorm(50)),
  fiber_diameter = abs(rnorm(50)) * 1.3,
  group = as.factor("sham")
)
axon_df <- rbind(mtbi_df, sham_df)
readr::write_csv(axon_df, "mouse_em.csv")
axon_df
axon_df$g_ratio <- axon_df$axon_diameter / axon_df$fiber_diameter
axon_df
mtbi_g_ratio <- axon_df$g_ratio[axon_df$group == "mtbi"]
sham_g_ratio <- axon_df$g_ratio[axon_df$group == "sham"]
t.test(mtbi_g_ratio, sham_g_ratio)

g_ratio_t_test <- function(axon_df) {
  axon_df$g_ratio <- axon_df$axon_diameter / axon_df$fiber_diameter
  mtbi_g_ratio <- axon_df$g_ratio[axon_df$group == "mtbi"]
  sham_g_ratio <- axon_df$g_ratio[axon_df$group == "sham"]
  p_value <- t.test(mtbi_g_ratio, sham_g_ratio)$"p.value"
  return(p_value)
}

g_ratio_t_test(axon_df)


library(demopackage)

g_ratio_t_test(axon_df)




# more dataframes ---------------------------------------------------------




make_df <- function(seed) {
  set.seed(seed)
  mtbi_df <- data.frame(
    axon_diameter = abs(rnorm(50)),
    fiber_diameter = abs(rnorm(50)) * 20,
    group = as.factor("mtbi")
  )
  sham_df = data.frame(
    axon_diameter = abs(rnorm(50)),
    fiber_diameter = abs(rnorm(50)) * 1.3,
    group = as.factor("sham")
  )
  axon_df <- rbind(mtbi_df, sham_df)
  return(axon_df)
}

df1 <- make_df(1)
df2 <- make_df(2)
df3 <- make_df(3)

g_ratio_t_test(df1)
g_ratio_t_test(df2)
g_ratio_t_test(df3)

readr::write_csv(df1, "mouse_em1.csv")
readr::write_csv(df2, "mouse_em2.csv")
readr::write_csv(df3, "mouse_em3.csv")
