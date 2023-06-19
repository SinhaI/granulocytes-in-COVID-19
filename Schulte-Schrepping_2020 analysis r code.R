library(reticulate)
##integrate data with seurat v3
library(Seurat)
library(Matrix)
library(dplyr)
library(ggplot2)
#BiocManager::install("zellkonverter")

#library("zellkonverter")
WB_PBMC <- readRDS("seurat_COVID19_freshWB-PBMC_cohort2_rhapsody_jonas_FG_2020-08-18.rds")
WB_PBMC.meta <- WB_PBMC@meta.data
######   Stop
#WB_PBMC_immune<- WB_PBMC@meta.data$immune.labels
WB_PBMC_immune<- data.frame(row.names(WB_PBMC.meta), WB_PBMC@meta.data$immune.labels)
head(WB_PBMC_immune)
WB_PBMC.Count <- WB_PBMC@assays$RNA@counts
write.table(WB_PBMC_immune, file="WB_PBMC_immune.txt", row.names = TRUE, sep = "\t")
write.table(WB_PBMC.Count, file="WB_PBMC_count.txt", sep="\t")


library(Matrix)
write(colnames(WB_PBMC.Count), file = "colnames.txt")
write(rownames(WB_PBMC.Count), file = "rownames.txt")
writeMM(WB_PBMC.Count, file = "WB_PBMC_Count.txt")
####### start from below
#subsetting mild data
table(WB_PBMC.meta$group_per_sample)
WB_PBMC_mild <- subset(WB_PBMC, subset=group_per_sample=="mild")
#WB_PBMC_mild_immune <- data.frame(row.names(WB_PBMC_mild@meta.data), WB_PBMC_mild@meta.data$immune.labels)
WB_PBMC_mild_cluster <- data.frame(row.names(WB_PBMC_mild@meta.data), WB_PBMC_mild@meta.data$cluster_labels_res.0.8)

#write.table(WB_PBMC_mild_immune, file="WB_PBMC_mild_immune.txt", row.names = TRUE, sep = "\t")
write.table(WB_PBMC_mild_cluster,file="WB_PBMC_mild_cluster.txt",sep="\t", quote=F, row.names=F)

write.table(WB_PBMC_mild@assays$RNA@counts, file="WB_PBMC_mild_count.txt", sep="\t", quote=F)
#subset control data
WB_PBMC_control <- subset(WB_PBMC, subset = group_per_sample=="control")
WB_PBMC_control_cluster <- data.frame(row.names(WB_PBMC_control@meta.data),WB_PBMC_control@meta.data$cluster_labels_res.0.8 )
write.table(WB_PBMC_control_cluster, file = "WB_PBMC_control_cluster.txt", sep = "\t", quote=F, row.names = F)
write.table(WB_PBMC_control@assays$RNA@counts , file="WB_PBMC_control_count.txt", sep="\t", quote=F)

#subset severe data
WB_PBMC_severe <- subset(WB_PBMC, subset = group_per_sample=="severe")
WB_PBMC_severe_cluster <- data.frame(row.names(WB_PBMC_severe@meta.data),WB_PBMC_severe@meta.data$cluster_labels_res.0.8 )
write.table(WB_PBMC_severe_cluster, file = "severe/WB_PBMC_severe_cluster.txt", sep = "\t", quote=F, row.names = F)
write.table(WB_PBMC_severe@assays$RNA@counts , file="severe/WB_PBMC_severe_count.txt", sep="\t", quote=F)
