# READ ME -----------------------------------------------------------------
# AUTHOR:            joseph.adams@nrscotland.gov.uk
# PURPOSE OF SCRIPT: Styleguide for NRS infographics

# FONT --------------------------------------------------------------------
if (.Platform[["OS.type"]] == "windows") {
  windowsFonts(`Segoe UI` = windowsFont("Segoe UI"))
}

nrs_font <- "Segoe UI"

# COLOUR ------------------------------------------------------------------
col_neut_white <- "#FFFFFF"
col_neut_silver <- "#B9B9B9"
col_neut_grey <- "#828282"
col_neut_tundora <- "#4B4B4B"

col_adopt <- "#EE6214"
col_adopt_dark <- "#BE4E10"
col_adopt_light <- "#F6B089"

col_births <- "#2E8ACA"
col_births_dark <- "#246EA1"
col_births_light <- "#96C4E4"

col_death <- "#284F99"
col_death_dark <- "#203F7A"
col_death_light <- "#93A7CC"

col_house <- "#5C7B1E"
col_house_dark <- "#496218"
col_house_light <- "#ADBD8E"

life_exp <- "#6566AE"
life_exp_dark <- "#50518B"
life_exp_light <- "#B2B2D6"

col_marriage_elect <- "#C9347C"
col_marriage_elect_dark <- "#A02963"
col_marriage_elect_light <- "#E499BD"

col_migration <- "#90278E"
col_migration_dark <- "#731F71"
col_migration_light <- "#C793C6"

col_population <- "#2DA197"
col_population_dark <- "#496218"
col_population_light <- "#ADBD8E"

col_nrs_purple <- "#84329B"
col_nrs_blue <- "#00587C"

# TURN OFF SCIENTIFIC NOTATION --------------------------------------------
options(scipen = 999)

# GENERIC -----------------------------------------------------------------
linetype_annotation_small <- "12"
linetype_annotation_large <- "dashed"

# RGAR --------------------------------------------------------------------
rgar_axis_text_size_large <- 17.7
rgar_axis_text_size_small <- 11.25

rgar_line_size_large <- 1.8
rgar_line_size_medium <- 1.375
rgar_line_size_small <- 0.95
rgar_line_size_xsmall <- 0.5

rgar_geom_text_size_small <- 5
rgar_geom_text_size_medium <- 6
rgar_geom_text_size_large <- 7

rgar_geom_col_size <- 1.5
rgar_geom_col_width_large <- 0.7
rgar_geom_col_width_small <- 0.5

# INFOGRAPHIC -------------------------------------------------------------
info_text_size <- 3.5

info_point_shape <- 21
info_point_size <- 2
info_point_stroke <- 0.5

info_line_size <- 1.4

info_axis_text_size_large <- 13
info_axis_text_size_small <- 10

info_col_size <- 1.5
info_col_width <- 0.7

# TWEET -------------------------------------------------------------------
tweet_width_mm <- 220.9
tweet_height_mm <- 81.7

# GGPLOT2 THEMES ----------------------------------------------------------
theme_info <- function() {
  ggplot2::theme(
    # Declutter
    strip.background =  ggplot2::element_blank(),
    panel.background = ggplot2::element_blank(),
    legend.position = 'none',
    axis.line = ggplot2::element_blank(),
    axis.title = ggplot2::element_blank(),
    axis.ticks = element_blank(),
    
    #Text
    text = ggplot2::element_text(family = nrs_font),
    plot.title = element_text(hjust = 0, size = info_axis_text_size_large),
    axis.text = element_text(size = info_axis_text_size_small),
    strip.text.x = element_blank(),
    
    # Margin
    plot.margin = unit(c(0,0,0,0), 'npc'),
    panel.spacing = unit(0.1, 'npc')
  )
}

theme_rgar <- function() {
  ggplot2::theme(
    # Declutter
    strip.background = ggplot2::element_blank(),
    panel.background = ggplot2::element_blank(),
    legend.position = "none",
    axis.line = ggplot2::element_blank(),
    axis.title = ggplot2::element_blank(),
    axis.ticks = element_blank(),
    
    # Text
    text = ggplot2::element_text(family = nrs_font),
    plot.title = element_text(hjust = 0, size = rgar_axis_text_size_large),
    axis.text = element_text(size = rgar_axis_text_size_small),
    strip.text.x = element_blank(),
    
    # Margin
    plot.margin = unit(c(0, 0, 0, 0), "npc"),
    panel.spacing = unit(0.1, "npc")
  )
}

# END OF SCRIPT -----------------------------------------------------------
