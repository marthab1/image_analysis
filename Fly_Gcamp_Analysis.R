library(dplyr)
library(tidyverse)

#load tdtomato data and rename columns
tdtom_2apb1 <- read.delim("N:/Martha/CG12004 flies/Ca2+ imaging/Pharmacology Expts/output/tdtom_2apb1.txt")
cname_t <- colnames(tdtom_2apb1)
for(x in 1:length(cname_t)){
  cname_t[x] = paste("T-", cname_t[x], sep="")
}
colnames(tdtom_2apb1) <- cname_t

#load gcamp data from same prep and rename columns
gcamp_2apb1 <- read.delim("N:/Martha/CG12004 flies/Ca2+ imaging/Pharmacology Expts/output/gcamp_2apb1.txt")
cname_g <- colnames(gcamp_2apb1)
for(x in 1:length(cname_t)){
  cname_g[x] = paste("G-", cname_g[x], sep="")
}
colnames(gcamp_2apb1) <- cname_g

#combine tdtom and gcamp data into a single frame
apb1 <- cbind(tdtom_2apb1, gcamp_2apb1)

syn_area <- sum(apb1$`T-Area`)
syn_tdtom <- sum(apb1$`T-RawIntDen`)
syn_gcamp <- sum(apb1$`G-RawIntDen`)
syn_ratio <- syn_gcamp / syn_tdtom
print(syn_ratio)

