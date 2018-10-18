# miTS_Pathway
A step to step guide on mining cancer biomarker based on **mi**croRNA data and **T**issue **S**pecificity of disease (**miTS**) + Molecular Pathway Investigation.

The miTS Pathway method has been discussed previously on IOP Journal of Physics: Conference Series (Indexes by SCOPUS) in article [**Mining Potential MicroRNA Biomarkers related to IQGAPs of Tyroid Carcinoma through *in silico* process**](http://commdis.telkomuniversity.ac.id/icodis/2018/). In this repository, the demonstration of the method  was provided.

Goal of the demonstrated experiment:
- Find thyroid carcinoma's biomarker related to IQGAP1 gene based on the miRNA presence in patient thyroid tissue.
- Find the molecular interaction that promote the cancer.


## Index

- [About](https://github.com/stefanuswibowo/MiTS_Pathway#about)
- [Pipeline](https://github.com/stefanuswibowo/MiTS_Pathway#pipeline)
- [Developer](https://github.com/stefanuswibowo/MiTS_Pathway#contacts)


## About

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


## Pipeline

[[Back to top]](https://github.com/stefanuswibowo/MiTS_Pathway#index)

The complete video tutorial can be accesed on: [A step to step guideline in Mining Cancer Biomarker and its pathway interaction based on miTS method]

**Gene-miRNA correlation**
This part was destined to find the exact microRNA that responsible for IQGAP1 gene regulation. Here, the author use statistical correlation analysis to find the miRNA.
 - Data Pre-Processing/Data Mining
   1. Download the metadata file of cancer repository in [National Cancer Institute GDC Data Portal](https://portal.gdc.cancer.gov/) database using the parameter listed on "Data pre-processing" section of [Mining Potential MicroRNA Biomarkers related to IQGAPs of Tyroid Carcinoma through *in silico* process] paper. The video tutorial was presented on: [Data Pre-Processing/Data Mining (1)]
   2. Conver the metadata file from .json to .csv using tools such as: [konklone](https://konklone.io/json/). The video tutorial was presented on: [Data Conversion (2)]
   3. Find the patient ID that contain both gene and miRNA (data filtration) using python 3.6
    
    By accessing correlation analysis
 - Statistical/Correlation Analysis
 - Validation
 **Gene-miRNA pathway**
 - Protein Target
 - Gene
  
 ## Developer Contribution & Contacts
 
 [[Back to top]](https://github.com/stefanuswibowo/MiTS_Pathway#Developer)
 
 - Stefanus Satrio Hadi Wibowo (stefanus.satrio@student.i3l.ac.id)
 
   Create the Gene-MiRna pathway analysis process and execute it
 - David Agustriawan (david.agustriawan@i3l.ac.id)
 
   Create the Gene-miRNA correlation process Matlab code and supervised the research
 - Jeremias Ivan (jeremias.ivan@student.i3l.ac.id)
 
   Create the Python coding and verificaiton process
