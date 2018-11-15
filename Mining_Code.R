packages <- c("HGNChelper", "httr", "RCurl", "rjson", "stringr")
install.packages(packages, dependencies = T)

setwd("C:\\Users\\Dell\\OneDrive\\Desktop\\ICODIS_2")

source("./Module_A.R")
source("./Module_B.R")

sCancer <- "THCA"
vPatientID <- c('TCGA-EL-A3GO', 'TCGA-EL-A3CO', 'TCGA-DJ-A3UM', 'TCGA-EM-A2CL', 'TCGA-GE-A2C6', 'TCGA-EM-A4FR', 'TCGA-DE-A69J', 'TCGA-EL-A3D5', 'TCGA-DJ-A3VG', 'TCGA-EM-A2P0', 'TCGA-DJ-A2PW', 'TCGA-J8-A4HW', 'TCGA-EL-A3CR', 'TCGA-DJ-A3V7', 'TCGA-BJ-A0Z3', 'TCGA-ET-A4KN', 'TCGA-EL-A4K7', 'TCGA-IM-A41Z', 'TCGA-DJ-A2PX', 'TCGA-DE-A4MD', 'TCGA-DJ-A1QH', 'TCGA-ET-A40P', 'TCGA-EM-A2CO', 'TCGA-BJ-A2N9', 'TCGA-EL-A3GS', 'TCGA-EM-A3AI', 'TCGA-DJ-A3UQ', 'TCGA-EL-A4K2', 'TCGA-EM-A3FN', 'TCGA-DJ-A2PQ', 'TCGA-DJ-A3VJ', 'TCGA-KS-A4I9', 'TCGA-FE-A3PD', 'TCGA-DJ-A3UX', 'TCGA-EL-A3D0', 'TCGA-EL-A3TB', 'TCGA-IM-A420', 'TCGA-CE-A483', 'TCGA-DJ-A3VL', 'TCGA-DJ-A2Q7', 'TCGA-EM-A4FM', 'TCGA-ET-A40R', 'TCGA-EL-A4K9', 'TCGA-EL-A3MX', 'TCGA-EL-A3CS', 'TCGA-FY-A40M', 'TCGA-EM-A22K', 'TCGA-DJ-A2Q4', 'TCGA-BJ-A45C', 'TCGA-BJ-A45I', 'TCGA-DJ-A2PT', 'TCGA-DE-A0Y3', 'TCGA-ET-A3DW', 'TCGA-DJ-A13W', 'TCGA-EL-A3T0', 'TCGA-DJ-A4V4', 'TCGA-FE-A231', 'TCGA-FE-A232', 'TCGA-EM-A2CP', 'TCGA-EL-A3MY', 'TCGA-EM-A3ST', 'TCGA-H2-A422', 'TCGA-BJ-A45G', 'TCGA-EM-A22L', 'TCGA-EM-A3AL', 'TCGA-DE-A4MB', 'TCGA-BJ-A290', 'TCGA-EL-A3D4', 'TCGA-EL-A3ZS', 'TCGA-EL-A3GV', 'TCGA-CE-A482', 'TCGA-EM-A2CU', 'TCGA-ET-A3DU', 'TCGA-J8-A3YG', 'TCGA-BJ-A28R', 'TCGA-DJ-A4UW', 'TCGA-EM-A2OW', 'TCGA-ET-A39M', 'TCGA-EL-A3CU', 'TCGA-DJ-A2Q3', 'TCGA-EL-A3ZO', 'TCGA-EL-A4K1', 'TCGA-ET-A2N5', 'TCGA-EL-A3GY', 'TCGA-DJ-A2Q5', 'TCGA-EL-A3T7', 'TCGA-FY-A3BL', 'TCGA-EM-A2CN', 'TCGA-E8-A415', 'TCGA-EL-A3ZR', 'TCGA-EL-A4KI', 'TCGA-FY-A4B4', 'TCGA-FY-A40L', 'TCGA-DJ-A3UW', 'TCGA-BJ-A0ZE', 'TCGA-EL-A3GQ', 'TCGA-DJ-A4UQ', 'TCGA-BJ-A0ZH', 'TCGA-KS-A41J', 'TCGA-KS-A4I1', 'TCGA-DO-A1JZ', 'TCGA-EL-A3MZ', 'TCGA-EL-A4K4', 'TCGA-EL-A4JV', 'TCGA-EL-A3ZM', 'TCGA-ET-A3BS', 'TCGA-BJ-A0Z2', 'TCGA-EL-A3H1', 'TCGA-DE-A69K', 'TCGA-E8-A438', 'TCGA-J8-A3O2', 'TCGA-ET-A25I', 'TCGA-EM-A3AN', 'TCGA-E3-A3E3', 'TCGA-EM-A4FK', 'TCGA-EL-A3TA', 'TCGA-EM-A3FP', 'TCGA-EL-A3ZN', 'TCGA-ET-A2N4', 'TCGA-FY-A3R6', 'TCGA-EM-A2P1', 'TCGA-EM-A3AK', 'TCGA-DJ-A13T', 'TCGA-EM-A1YC', 'TCGA-ET-A4KQ', 'TCGA-ET-A40T', 'TCGA-EM-A3SZ', 'TCGA-EM-A2CJ', 'TCGA-EM-A2CK', 'TCGA-L6-A4ET', 'TCGA-EM-A4FU', 'TCGA-FE-A3PA', 'TCGA-DJ-A13U', 'TCGA-EL-A4K6', 'TCGA-ET-A25L', 'TCGA-EL-A3GP', 'TCGA-DE-A2OL', 'TCGA-FY-A3NN', 'TCGA-BJ-A3PU', 'TCGA-EM-A1CU', 'TCGA-EM-A3SX', 'TCGA-QD-A8IV', 'TCGA-EM-A3SU', 'TCGA-DJ-A3UO', 'TCGA-EM-A4FO', 'TCGA-FK-A3S3', 'TCGA-ET-A25G', 'TCGA-BJ-A191', 'TCGA-FY-A3I4', 'TCGA-ET-A25K', 'TCGA-IM-A3EB', 'TCGA-EM-A1CV', 'TCGA-DJ-A4V0', 'TCGA-EL-A3GW', 'TCGA-DJ-A4V5', 'TCGA-CE-A485', 'TCGA-IM-A3ED', 'TCGA-ET-A2MZ', 'TCGA-FY-A4B0', 'TCGA-MK-A4N7', 'TCGA-EM-A22Q', 'TCGA-EM-A3FQ', 'TCGA-ET-A3DQ', 'TCGA-FE-A237', 'TCGA-EM-A1YD', 'TCGA-EM-A1CS', 'TCGA-EL-A3GX', 'TCGA-BJ-A45F', 'TCGA-E8-A436', 'TCGA-BJ-A2N8', 'TCGA-BJ-A0YZ', 'TCGA-KS-A4IB', 'TCGA-EM-A22M', 'TCGA-EM-A4G1', 'TCGA-DE-A4MA', 'TCGA-EL-A3ZT', 'TCGA-ET-A3DO', 'TCGA-EM-A3O7', 'TCGA-KS-A4I5', 'TCGA-BJ-A45E', 'TCGA-DJ-A3V4', 'TCGA-E8-A433', 'TCGA-EM-A1YA', 'TCGA-DJ-A4UP', 'TCGA-BJ-A190', 'TCGA-EL-A3MW', 'TCGA-BJ-A291', 'TCGA-BJ-A28V', 'TCGA-E8-A414', 'TCGA-BJ-A45J', 'TCGA-FY-A40N', 'TCGA-IM-A41Y', 'TCGA-BJ-A0ZG', 'TCGA-EL-A3CV', 'TCGA-KS-A41L', 'TCGA-ET-A3DR', 'TCGA-ET-A39K', 'TCGA-FY-A3WA', 'TCGA-BJ-A3PR', 'TCGA-DE-A4M8', 'TCGA-KS-A4ID', 'TCGA-DJ-A4UR', 'TCGA-EL-A3D1', 'TCGA-CE-A3ME', 'TCGA-MK-A4N9', 'TCGA-EL-A3CN', 'TCGA-E3-A3E2', 'TCGA-DJ-A3UU', 'TCGA-EM-A2P2', 'TCGA-EM-A3AQ', 'TCGA-BJ-A4O8', 'TCGA-FY-A3RA', 'TCGA-FY-A40K', 'TCGA-DO-A2HM', 'TCGA-EL-A3CW', 'TCGA-H2-A2K9', 'TCGA-EL-A3CY', 'TCGA-EM-A3OA', 'TCGA-DJ-A3VA', 'TCGA-DO-A1K0', 'TCGA-DJ-A1QF', 'TCGA-EM-A2CS', 'TCGA-BJ-A0ZB', 'TCGA-DE-A4M9', 'TCGA-EM-A22J', 'TCGA-FY-A3I5', 'TCGA-EM-A2OX', 'TCGA-CE-A481')

sPath1 <- "./QuickStartExample/Part1_DownloadedData"

path_miRNAExp <- DownloadmiRNASeqData(cancerType = sCancer,
                                      assayPlatform = "mir_HiSeq.hg19.mirbase20",
                                      inputPatientIDs = vPatientID,
                                      saveFolderName = sPath1)

path_geneExp <- DownloadRNASeqData(cancerType = sCancer,
                                   assayPlatform = "gene.normalized_RNAseq",
                                   inputPatientIDs = vPatientID,
                                   saveFolderName = sPath1)

sPath2 <- "./QuickStartExample/Part2_BasicDataProcessingResult"

list_miRNAExp <- ProcessmiRNASeqData(inputFilePath = "C:\\Users\\Dell\\OneDrive\\Desktop\\ICODIS_2\\QuickStartExample\\Part1_DownloadedData\\THCA__mir_HiSeq.hg19.mirbase20__tissueTypeAll__20181114211606.txt",
                                     outputFileName = paste(sCancer, "miRNAExp3", sep = "__"),
                                     outputFileFolder = sPath2)
