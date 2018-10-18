# miTS_Pathway
A step to step guide on mining cancer biomarker based on **mi**croRNA data and **T**issue **S**pecificity of disease (**miTS**) + Molecular Pathway Investigation.

The miTS Pathway method has been discussed previously on IOP Journal of Physics: Conference Series (Indexes by SCOPUS) in article [**Mining Potential MicroRNA Biomarkers related to IQGAPs of Tyroid Carcinoma through *in silico* process**](http://commdis.telkomuniversity.ac.id/icodis/2018/). In this repository, the demonstration of the method  was provided.

Goal of the demonstrated experiment:
- Find thyroid carcinoma's biomarker related to IQGAP1 gene based on the miRNA presence in patient thyroid tissue.
- Find the molecular interaction that promote the cancer.


# Index

- [About](https://github.com/stefanuswibowo/MiTS_Pathway#about)
- [Pipeline](https://github.com/stefanuswibowo/MiTS_Pathway#pipeline)
- [Developer](https://github.com/stefanuswibowo/MiTS_Pathway#contacts)


# About

[[Back to top]](https://github.com/stefanuswibowo/MiTS_Pathway#index)

**Tools & Databases used in this experiment demonstration:**
- [National Cancer Institute GDC Data Portal](https://portal.gdc.cancer.gov/) *Database*
- [Data Conversion from .JSON to .CSV](https://konklone.io/json/) *Tools*
- [Phyton 3.6](https://www.python.org/downloads/release/python-360/) *Tools*
- [TCGA Assembler v.1 (Require R Studio Installation)](http://www.compgenome.org/TCGA-Assembler/) *Tools*
- [R Studio](https://www.rstudio.com/) *Tools*
- [Microsoft Excel 2016](https://products.office.com/en/excel) *Tools*
- [MATLAB R2018a](https://www.mathworks.com/products/matlab.html) *Tools*
- [PubMed](https://www.ncbi.nlm.nih.gov/pubmed/) *Database*
- [miRTarBase](http://mirtarbase.mbc.nctu.edu.tw/) *Database*
- [STRING](https://string-db.org/) *Database*
- [KEGG](https://www.genome.jp/kegg/) *Database*

**Compatibility**

The method is compatible for any OS as long the tools and database mentioned above can be accessed. However, the tutorial here was shown based on Windows 10 OS


# Pipeline

[[Back to top]](https://github.com/stefanuswibowo/MiTS_Pathway#index)

The complete video tutorial can be accesed on:

:video_camera: [A step to step guideline in Mining Cancer Biomarker and its pathway interaction based on miTS method]

## Gene-miRNA correlation
This part was destined to find the exact microRNA that responsible for IQGAP1 gene regulation. Here, the author use statistical correlation analysis to find the miRNA.

### 1. Data Pre-Processing/Data Mining
**A. Download the metadata file of cancer repository**
- Download the metadata from [National Cancer Institute GDC Data Portal](https://portal.gdc.cancer.gov/) database
- Using the parameter listed on "Data pre-processing" section of [Mining Potential MicroRNA Biomarkers related to IQGAPs of Tyroid Carcinoma through *in silico* process] paper.
- :video_camera: Video tutorial [Data Pre-Processing/Data Mining (1)]

**B. Conver the metadata file from .json to .csv**
- using tools such as: [konklone](https://konklone.io/json/), convert the data
- :video_camera: Video tutorial [Data Conversion (2)]

**C. Find the patient ID that contain both gene and miRNA and download it (data filtration)**
- using python, extract the patient id. Download *find_id.py* on link below
- :arrow_down: [Download the prebuilt zip file and unzip it.](https://github.com/stefanuswibowo/miTS_Pathway/releases/latest)
- Install [TCGA Assembler in R Studio](http://www.compgenome.org/TCGA-Assembler/)
- Import TCGA Assembler to R
- Set up the R code based on TCGA Assembler guidelines
- Copy paste the result of extraction to R studio
- Download the data
- Import the data to Excel for further analysis
- :video_camera: Video tutorial [Data Filtration (3)]

### 2. Statistical/Correlation Analysis (Find the Spearman Rho and Significance Value)
- Using matlab, perform the spearman rho and significance value test. Download *Spearman_Rho_&_Significance_Value.mat*
- :video camera: Video tutorial [Statistical Analysis (4)]

### 3. Validation
- Using excel, perform the spearman rho and significance value test manually.
- :video_camera: Video tutorial [Correlation Validation (5)]

## Gene-miRNA pathway

### 1.Find Protein Target
- Using [miRTarBase](http://mirtarbase.mbc.nctu.edu.tw/) find the miRNA target
- :video_camera: Video tutorial [miRNA target on miRTarBase (6)]

### 2. Find the relation of protein target
- Using [STRING](https://string-db.org/) find the interaction between protein
- :video_camera: Video tutorial [MiRNA protein interaction on STRING database (7)]

### 3. Validation of the protein target
- Using [KEGG](https://www.genome.jp/kegg/) find the pathway of protein and miRNA interaction
- :video_camera: Video tutorial [Protein interaction pathway on KEGG (8)]

  
 ## Developer Contribution & Contacts
 
 [[Back to top]](https://github.com/stefanuswibowo/MiTS_Pathway#Developer)
 
 - Stefanus Satrio Hadi Wibowo (stefanus.satrio@student.i3l.ac.id)
 
   Create the Gene-MiRna pathway analysis process and execute it
 - David Agustriawan (david.agustriawan@i3l.ac.id)
 
   Create the Gene-miRNA correlation process Matlab code and supervised the research
 - Jeremias Ivan (jeremias.ivan@student.i3l.ac.id)
 
   Create the Python coding and verificaiton process
