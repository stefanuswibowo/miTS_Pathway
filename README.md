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

miTS_Pathway is a method to obtain cancer biomarker and understand its molecular pathway based on miTS method and Molecular Pathway Investigation. 

Tools & Databases used during the first execution:
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


## Pipeline

[[Back to top]](https://github.com/stefanuswibowo/MiTS_Pathway#index)

- Gene-miRNA correlation
  - Data Pre-Processing/Data Mining
  - Statistical/Correlation Analysis
  - Validation
- Gene-miRNA pathway
  - Protein Target
  - Gene
  
 ## Developer Contribution & Contacts
 
 [[Back to top]](https://github.com/stefanuswibowo/MiTS_Pathway#Developer)
 
 -Stefanus Satrio Hadi Wibowo (stefanus.satrio@student.i3l.ac.id)
  Create the Gene-MiRna pathway analysis process and execute it
 -David Agustriawan (david.agustriawan.i3l.ac.id)
  Create the Gene-miRNA correlation process Matlab code and supervised the research
 -Jeremias Ivan (jeremias.ivan@student.i3l.ac.id)
  Create the Python coding and verificaiton process
