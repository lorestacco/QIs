library(tidyverse)

icd9cm <- readxl::read_excel("icd9cm.xlsx")
icd9cm_it <- readxl::read_excel("icd9cm_ITA2.xlsx")

icd9cm_it %>%
  `names<-`(c("code", "description_ita")) %>%
  left_join(
    icd9cm
  ) %>%
  writexl::write_xlsx("icd9cm_it.xlsx")


icd9pcs <- readxl::read_excel("icd9pcs_en.xlsx")
icd9pcs_it <- readxl::read_excel("icd9procedure.xlsx")


icd9pcs_it %>%
  `names<-`(c("code", "description_ita")) %>%
  left_join(
    icd9pcs
  ) %>%
  writexl::write_xlsx("icd9cm_pcs.xlsx")





