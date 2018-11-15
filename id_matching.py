#import Python packages
import os, csv

#change the working directory
os.chdir("C:\\Users\\Dell\\OneDrive\\Desktop\\ICODIS_2")

#Gene
dtcga=[]    #new empty list to store the Patient ID (complete)
fdtcga=[]   #new empty list to store the Patient ID (identifier)

#open the Gene metadata in CSV format
with open('Gene.csv') as dna:
    cols = csv.reader(dna,delimiter=',')
    for col in cols:
        #extract the column that contains all Patient ID
        dtcga.append(col[34].strip())

#remove the header of the column
dtcga.pop(0)

#exract the identifier of the Patient ID
for i in dtcga:
    fdtcga.append(i[0:16])

#miRNA
mtcga=[]    #new empty list to store the Patient ID (complete)
fmtcga=[]   #new empty list to store the Patient ID (identifier)

#open the miRNA metadata in CSV format
with open('miRNA.csv') as rna:
    rows = csv.reader(rna,delimiter=',')
    for row in rows:
        #extract the column that contains all Patient ID
        mtcga.append(row[33].strip())

#remove the header of the column
mtcga.pop(0)

#exract the identifier of the Patient ID
for i in mtcga:
    fmtcga.append(i[0:16])

#Comparison    
tcgaf = []  #new empty list to store the Patient ID (identifier)

#extract the Patient IDs that present in both Gene and miRNA metadata
for i in fdtcga:       
    if i in fmtcga:
        tcgaf.append(i)

dlist=[]    #new empty list to store the Patient ID (vPatientID)

#extract the first 12 characters of the Patient ID
for i in dtcga:
    for l in tcgaf:
        if l in i:
            dlist.append(i[0:12])

