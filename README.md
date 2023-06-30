# granulocytes-in-COVID-19
High-dimensional profiling reveals phenotypic heterogeneity and disease-specific alterations of granulocytes in COVID-19.

Publication: Lourda M, Dzidic M, Hertwig L, Bergsten H, Palma Medina LM, Sinha I, Kvedaraite E, Chen P, Muvva JR, Gorin JB, Cornillet M, Emgård J, Moll K, García M, Maleki KT, Klingström J, Michaëlsson J, Flodström-Tullberg M, Brighenti S, Buggert M, Mjösberg J, Malmberg KJ, Sandberg JK, Henter JI, Folkesson E, Gredmark-Russ S, Sönnerborg A, Eriksson LI, Rooyackers O, Aleman S, Strålin K, Ljunggren HG, Björkström NK, Svensson M, Ponzetta A, Norrby-Teglund A, Chambers BJ; Karolinska KI/K COVID-19 Study Group. High-dimensional profiling reveals phenotypic heterogeneity and disease-specific alterations of granulocytes in COVID-19. Proc Natl Acad Sci U S A. 2021 Oct 5;118(40):e2109123118. doi: 10.1073/pnas.2109123118.

The code in this repository was used for the above publication.  

To clarify the molecular mechanisms linking neutrophil subsets with the soluble factors, a receptor−ligand interaction analysis using CellPhoneDB was performed(A) on a recently published single-cell RNA sequencing (scRNAseq) dataset(B). Monocytes, dendritic cells, and a subset of CD4+ T cells displayed the highest number of predicted interactions with all neutrophil subsets, irrespective of the disease severity. We detected a wide set of interactions between monocyte-derived (but also CD4+ T cell-derived) chemokines (i.e., CCL3, CXCL1, CXCL2, and CXCL8) binding CCR3 and CXCR1/2 on neutrophil subsets, particularly evident in patients with severe COVID19.

Method:
CellphoneDB was used to analyse cell-cell communication in single cell data. In brief, scRNA-seq data from previously published report was used(B). COVID19 BD Rhapsody fresh PBMC and Whole Blood scRNA-seq data was used for this analysis.  Seurat .RDS file was acquired from FASTGENOMICS web site (https://beta.fastgenomics.org/home) as described in Schulte-Schrepping et. al. Dataset was divided into 3 sample groups, i.e., Control, Moderate and Severe as described in Schulte-Schrepping et. al.  Count matrix for each sample groups were generated and ran through CellphoneDB (A) pipeline.

(A) M. Efremova, M. Vento-Tormo, S. A. Teichmann, R. Vento-Tormo, CellPhoneDB: Inferring cell-cell communication from combined expression of multi-subunit ligandreceptor complexes. Nat. Protoc. 15, 1484–1506 (2020).
(B) J. Schulte-Schrepping et al., Severe COVID-19 is marked by a dysregulated myeloid cell compartment. Cell 182, 1419–1440.e23 (2020).
