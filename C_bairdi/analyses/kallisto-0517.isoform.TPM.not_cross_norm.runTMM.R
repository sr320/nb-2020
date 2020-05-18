library(edgeR)

rnaseqMatrix = read.table("/Users/sr320/Documents/GitHub/nb-2020/C_bairdi/analyses/kallisto-0517.isoform.TPM.not_cross_norm", header=T, row.names=1, com='', check.names=F)
rnaseqMatrix = as.matrix(rnaseqMatrix)
rnaseqMatrix = round(rnaseqMatrix)
exp_study = DGEList(counts=rnaseqMatrix, group=factor(colnames(rnaseqMatrix)))
exp_study = calcNormFactors(exp_study)
exp_study$samples$eff.lib.size = exp_study$samples$lib.size * exp_study$samples$norm.factors
write.table(exp_study$samples, file="/Users/sr320/Documents/GitHub/nb-2020/C_bairdi/analyses/kallisto-0517.isoform.TPM.not_cross_norm.TMM_info.txt", quote=F, sep="\t", row.names=F)
