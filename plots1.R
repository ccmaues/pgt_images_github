pacman::p_load(ggplot2, ggthemr, envalysis)

dados <- data.frame(
  Dado = c(
    "PC_Kings_2016_2017",
    "PI_ESALQ_2020",
    "PSC_Kings_2019",
    "PSC_Kings_2016_2019",
    "TP_USP_2020",
    "SC_CHOP_2017",
    "PS_CHOP_2017"),
  chip = c("Psych", "GSA", "GSA", "Psych", "GSA", "Omni", "Omni"),
  versions = c("v1.1", "v2.0", "v3.0", "v1.1", "v1.0", "v1.0", "v1.1"),
  Variantes = c(587111, 665469, 654014, 587111, 618495, 729858, 719024))
dados

ggthemr("light")

ggplot(dados, aes(Dado, Variantes, fill = chip)) +
geom_col() +
geom_text(label = dados$Variantes, hjust = 0.5, vjust = 1.5, color = "black", size = 2) +
geom_text(label = dados$versions, hjust = 0.5, vjust = 3, color = "black", size = 2) +
theme_publish(base_size = 7) +
theme(
 axis.text.x = element_text(angle = 45, vjust = 0.5, hjust = 0.7),
 axis.title.x = element_blank(),
 legend.position = "right")

ggsave("chip_variants.png", device = "png", height = 70, width = 100, units = "mm")

intersections <- data.frame(
  Dataset1 = c(
    "PC_Kings_2016_2017", "PC_Kings_2016_2017", "PC_Kings_2016_2017", 
    "PC_Kings_2016_2017", "PC_Kings_2016_2017", "PC_Kings_2016_2017", 
    "PI_ESALQ_2020", "PI_ESALQ_2020", "PI_ESALQ_2020", "PI_ESALQ_2020", 
    "PI_ESALQ_2020", "PSC_Kings_2019", "PSC_Kings_2019", "PSC_Kings_2019", 
    "PSC_Kings_2019", "PSC_Kings_2016_2019", "PSC_Kings_2016_2019", 
    "PSC_Kings_2016_2019", "TP_USP_2020", "TP_USP_2020", "SC_CHOP_2017"),
  Chip1 = c("Psych", "Psych", "Psych", "Psych", "Psych", "Psych", 
            "GSA", "GSA", "GSA", "GSA", "GSA", "GSA", "GSA", "GSA", "GSA", 
            "Psych", "Psych", "Psych", "GSA", "GSA", "Omni"),
  Version1 = c("v1.1", "v1.1", "v1.1", "v1.1", "v1.1", "v1.1", 
               "v2.0", "v2.0", "v2.0", "v2.0", "v2.0", "v3.0", "v3.0", "v3.0", "v3.0", 
               "v1.1", "v1.1", "v1.1", "v1.0", "v1.0", "v1.0"),
  Dataset2 = c(
    "PI_ESALQ_2020", "PSC_Kings_2019", "PSC_Kings_2016_2019", "TP_USP_2020", 
    "SC_CHOP_2017", "PS_CHOP_2017", "PSC_Kings_2019", "PSC_Kings_2016_2019", 
    "TP_USP_2020", "SC_CHOP_2017", "PS_CHOP_2017", "PSC_Kings_2016_2019", 
    "TP_USP_2020", "SC_CHOP_2017", "PS_CHOP_2017", "TP_USP_2020", "SC_CHOP_2017", 
    "PS_CHOP_2017", "SC_CHOP_2017", "PS_CHOP_2017", "PS_CHOP_2017"),
  Chip2 = c("GSA", "GSA", "Psych", "GSA", "Omni", "Omni", "GSA", "Psych", 
            "GSA", "Omni", "Omni", "Psych", "GSA", "Omni", "Omni", "GSA", "Omni", 
            "Omni", "Omni", "Omni", "Omni"),
  Version2 = c("v2.0", "v3.0", "v1.1", "v1.0", "v1.0", "v1.1", "v3.0", "v1.1", 
               "v1.0", "v1.0", "v1.1", "v1.1", "v1.0", "v1.0", "v1.1", "v1.0", 
               "v1.0", "v1.1", "v1.0", "v1.1", "v1.1"),
  Intersection = c(109542, 108461, 587111, 107784, 258365, 256052, 
                   635892, 109542, 613312, 139140, 138358, 108461, 589402, 137739, 
                   136991, 107784, 258365, 256052, 133277, 132530, 719023)
)
